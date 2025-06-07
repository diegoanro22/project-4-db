'use client';
import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';

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
    <div>
      <div className="overflow-auto">
        <table className="w-full border-collapse text-sm">
          <thead>
            <tr className="bg-gray-100">
              {[
                'ID',
                'Estado',
                'F. Préstamo',
                'F. Devol.',
                'Item',
                'Tipo',
                'Estudiante',
                'Acciones',
              ].map((h) => (
                <th key={h} className="border px-3 py-2 text-left">
                  {h}
                </th>
              ))}
            </tr>
          </thead>
          <tbody>
            {slice.map((p) => (
              <tr key={p.id} className="hover:bg-gray-50">
                <td className="border px-3 py-1">{p.id}</td>
                <td className="border px-3 py-1">{p.estado}</td>
                <td className="border px-3 py-1">{p.fecha_prestamo}</td>
                <td className="border px-3 py-1">
                  {p.fecha_devolucion ?? '—'}
                </td>
                <td className="border px-3 py-1">{p.item}</td>
                <td className="border px-3 py-1">{p.tipo_item}</td>
                <td className="border px-3 py-1">{p.estudiante}</td>
                <td className="border px-3 py-1">
                  <div className="flex space-x-2">
                    <Link
                      href={`/crud/prestamos/${p.id}`}
                      className="text-blue-600 hover:underline"
                    >
                      Ver
                    </Link>
                    <Link
                      href={`/crud/prestamos/${p.id}/edit`}
                      className="text-green-600 hover:underline"
                    >
                      Editar
                    </Link>
                    <button
                      onClick={() => void handleDelete(p.id)}
                      className="text-red-600 hover:underline"
                    >
                      Eliminar
                    </button>
                  </div>
                </td>
              </tr>
            ))}
            {slice.length === 0 && (
              <tr>
                <td
                  colSpan={8}
                  className="border py-6 text-center text-gray-500"
                >
                  No hay registros.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      {/* controles */}
      <div className="mt-4 flex items-center justify-between">
        <select
          className="rounded border px-2 py-1"
          value={perPage}
          onChange={(e) => {
            setPerPage(Number(e.target.value));
            setCurrent(1);
          }}
        >
          {[5, 10, 20, 50].map((n) => (
            <option key={n} value={n}>
              {n} / pág.
            </option>
          ))}
        </select>

        <div className="flex items-center space-x-1">
          <button
            onClick={() => go(current - 1)}
            disabled={current === 1}
            className={`rounded border px-3 py-1 ${current === 1 ? 'bg-gray-200 text-gray-500' : 'hover:bg-gray-100'}`}
          >
            ‹
          </button>
          {pageButtons.map((b, i) =>
            b === '…' ? (
              <span key={i} className="px-2">
                …
              </span>
            ) : (
              <button
                key={b}
                onClick={() => go(b as number)}
                className={`rounded border px-3 py-1 ${b === current ? 'bg-blue-600 text-white' : 'hover:bg-gray-100'}`}
              >
                {b}
              </button>
            ),
          )}
          <button
            onClick={() => go(current + 1)}
            disabled={current === pages}
            className={`rounded border px-3 py-1 ${current === pages ? 'bg-gray-200 text-gray-500' : 'hover:bg-gray-100'}`}
          >
            ›
          </button>
        </div>
      </div>
    </div>
  );
}
