'use client';
import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { Eye, Edit2, Trash2 } from 'lucide-react';

export interface PrestamoView {
  id: number;
  estado: 'ACTIVO' | 'DEVUELTO' | 'VENCIDO' | 'PERDIDO';
  fecha_prestamo: string; // YYYY-MM-DD
  fecha_devolucion: string | null; // YYYY-MM-DD | null
  item: string;
  tipo_item: 'Libro' | 'Dispositivo' | 'Otro';
  libro: string | null;
  autor_libro: string | null;
  año_publicacion: number | null;
  dispositivo: string | null;
  estudiante: string; // nombre completo
  carnet: string;
}

interface Props {
  data: PrestamoView[];
}

export default function PrestamosTable({ data }: Props) {
  /* ───────── paginación ───────── */
  const [current, setCurrent] = useState(1);
  const [perPage, setPerPage] = useState(10);
  const pages = Math.ceil(data.length / perPage);
  const slice = data.slice((current - 1) * perPage, current * perPage);

  const go = (p: number) => p >= 1 && p <= pages && setCurrent(p);

  /* ───────── eliminar  ───────── */
  const router = useRouter();

  async function handleDelete(id: number) {
    if (!confirm('¿Eliminar préstamo?')) return;
    const res = await fetch(`/api/crud/prestamos/${id}`, { method: 'DELETE' });
    if (res.ok) router.refresh();
    else alert('No se pudo eliminar');
  }

  /* páginas con elipsis */
  const pageButtons: (number | '…')[] = (() => {
    if (pages <= 7) return Array.from({ length: pages }, (_, i) => i + 1);
    const arr: (number | '…')[] = [1, 2];
    if (current > 4) arr.push('…');
    for (
      let p = Math.max(3, current - 1);
      p <= Math.min(pages - 2, current + 1);
      p++
    ) {
      arr.push(p);
    }
    if (current < pages - 3) arr.push('…');
    arr.push(pages - 1, pages);
    return arr;
  })();

  return (
    <div className="overflow-hidden rounded-lg bg-white shadow-lg">
      <div className="overflow-x-auto">
        <table className="min-w-full divide-y divide-gray-200 text-sm">
          <thead className="bg-gray-50">
            <tr>
              {[
                'Acciones',
                'ID',
                'Estado',
                'F. Préstamo',
                'F. Devolución',
                'Item',
                'Tipo',
                'Estudiante',
              ].map((h) => (
                <th
                  key={h}
                  className="px-4 py-3 text-left text-xs font-semibold text-gray-700 uppercase"
                >
                  {h}
                </th>
              ))}
            </tr>
          </thead>
          <tbody className="divide-y divide-gray-200 bg-white">
            {slice.map((p) => (
              <tr key={p.id} className="hover:bg-gray-50">
                <td className="px-4 py-2">
                  <div className="flex gap-2">
                    <Link href={`/crud/prestamos/${p.id}`}>
                      <button className="rounded p-1 hover:bg-gray-100">
                        <Eye className="h-5 w-5 text-blue-500" />
                      </button>
                    </Link>
                    <Link href={`/crud/prestamos/${p.id}/edit`}>
                      <button className="rounded p-1 hover:bg-gray-100">
                        <Edit2 className="h-5 w-5 text-green-500" />
                      </button>
                    </Link>
                    <button
                      onClick={() => void handleDelete(p.id)}
                      className="rounded p-1 hover:bg-gray-100"
                    >
                      <Trash2 className="h-5 w-5 text-red-500" />
                    </button>
                  </div>
                </td>
                <td className="px-4 py-2 text-gray-600">{p.id}</td>
                <td className="px-4 py-2 text-gray-600">{p.estado}</td>
                <td className="px-4 py-2 text-gray-600">{p.fecha_prestamo}</td>
                <td className="px-4 py-2 text-gray-600">
                  {p.fecha_devolucion ?? '—'}
                </td>
                <td className="px-4 py-2 text-gray-600">{p.item}</td>
                <td className="px-4 py-2 text-gray-600">{p.tipo_item}</td>
                <td className="px-4 py-2 text-gray-600">{p.estudiante}</td>
              </tr>
            ))}
            {slice.length === 0 && (
              <tr>
                <td colSpan={8} className="px-4 py-6 text-center text-gray-500">
                  No hay registros.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
      <div className="flex items-center justify-between bg-gray-50 px-4 py-3">
        <select
          value={perPage}
          onChange={(e) => {
            setPerPage(Number(e.target.value));
            setCurrent(1);
          }}
          className="rounded border-gray-300 p-2 text-sm"
        >
          {[5, 10, 20, 50].map((n) => (
            <option key={n} value={n}>
              {n} / pág
            </option>
          ))}
        </select>
        <div className="flex items-center space-x-1">
          <button
            onClick={() => go(current - 1)}
            disabled={current === 1}
            className="rounded border px-2 py-1 text-sm disabled:opacity-50"
          >
            ‹
          </button>

          {pageButtons.map((b, i) =>
            b === '…' ? (
              <span key={i} className="px-2 text-gray-500">
                …
              </span>
            ) : (
              <button
                key={b}
                onClick={() => go(b as number)}
                className={`rounded px-3 py-1 text-sm ${
                  b === current ? 'bg-blue-600 text-white' : 'hover:bg-gray-100'
                }`}
              >
                {b}
              </button>
            ),
          )}

          <button
            onClick={() => go(current + 1)}
            disabled={current === pages}
            className="rounded border px-2 py-1 text-sm disabled:opacity-50"
          >
            ›
          </button>
        </div>
      </div>
    </div>
  );
}
