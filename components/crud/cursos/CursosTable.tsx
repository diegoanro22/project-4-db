'use client';
import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { Eye, Edit2, Trash2 } from 'lucide-react';
/* ----------  Tipo que mapeamos desde prisma.vistaCursos ---------- */

type Horario = {
  dia: string;
  hora_inicio: string; // ISO «HH:MM:SS»
  hora_fin: string;
};

export type SeccionResumen = {
  id: number;
  maestro: string;
  salon: string;
  capacidad: number;
  estudiantes_inscritos: number;
  horario: Horario[];
};

export interface CursoView {
  id: number;
  curso: string;
  descripcion: string;
  creditos: number;
  categoria: string; // BASICO | INTERMEDIO | …
  precio: number; // convertido
  secciones: SeccionResumen[] | null; // basta para contar
}

interface Props {
  data: CursoView[];
}

export default function CursosTable({ data }: Props) {
  /* paginación básica — igual que antes */
  const [currentPage, setCurrentPage] = useState(1);
  const [itemsPerPage, setItemsPerPage] = useState(10);
  const totalPages = Math.ceil(data.length / itemsPerPage);
  const current = data.slice(
    (currentPage - 1) * itemsPerPage,
    currentPage * itemsPerPage,
  );
  const go = (p: number) => p >= 1 && p <= totalPages && setCurrentPage(p);

  /* eliminar (opcional, si ya tienes API DELETE) */
  const router = useRouter();

  async function handleDelete(id: number, nombre: string) {
    if (!confirm(`¿Eliminar curso "${nombre}"?`)) return;
    const res = await fetch(`/api/crud/cursos/${id}`, { method: 'DELETE' });
    if (res.ok) router.refresh();
    else alert('Error al eliminar');
  }

  /* botones de página compactos (elipsis) */
  const pages = (() => {
    if (totalPages <= 7)
      return Array.from({ length: totalPages }, (_, i) => i + 1);
    const arr: (number | '…')[] = [1, 2];
    if (currentPage > 4) arr.push('…');
    for (
      let p = Math.max(3, currentPage - 1);
      p <= Math.min(totalPages - 2, currentPage + 1);
      p++
    )
      arr.push(p);
    if (currentPage < totalPages - 3) arr.push('…');
    arr.push(totalPages - 1, totalPages);
    return arr;
  })();

  return (
    <div className="overflow-hidden rounded-lg bg-white shadow-lg">
      <div className="overflow-x-auto">
        <table className="min-w-full divide-y divide-gray-200">
          <thead className="bg-gray-50">
            <tr>
              {[
                'Acciones',
                'ID',
                'Curso',
                'Créditos',
                'Categoría',
                'Precio',
                'Secciones',
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
            {current.map((c) => (
              <tr key={c.id} className="hover:bg-gray-50">
                <td className="px-4 py-2">
                  <div className="flex gap-2">
                    <Link href={`/crud/cursos/${c.id}`}>
                      <button className="rounded p-1 hover:bg-gray-100">
                        <Eye className="h-5 w-5 text-blue-500" />
                      </button>
                    </Link>
                    <Link href={`/crud/cursos/${c.id}/edit`}>
                      <button className="rounded p-1 hover:bg-gray-100">
                        <Edit2 className="h-5 w-5 text-green-500" />
                      </button>
                    </Link>
                    <button
                      onClick={() => void handleDelete(c.id, c.curso)}
                      className="rounded p-1 hover:bg-gray-100"
                    >
                      <Trash2 className="h-5 w-5 text-red-500" />
                    </button>
                  </div>
                </td>
                <td className="px-4 py-2 text-gray-600">{c.id}</td>
                <td className="px-4 py-2 text-gray-600">{c.curso}</td>
                <td className="px-4 py-2 text-gray-600">{c.creditos}</td>
                <td className="px-4 py-2 text-gray-600">{c.categoria}</td>
                <td className="px-4 py-2 text-gray-600">
                  Q {c.precio.toFixed(2)}
                </td>
                <td className="px-4 py-2 text-gray-600">
                  {Array.isArray(c.secciones) ? c.secciones.length : 0}
                </td>
              </tr>
            ))}
            {current.length === 0 && (
              <tr>
                <td colSpan={7} className="px-4 py-6 text-center text-gray-500">
                  No hay cursos registrados.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
      <div className="flex items-center justify-between bg-gray-50 px-4 py-3">
        <select
          className="rounded border-gray-300 p-2 text-sm"
          value={itemsPerPage}
          onChange={(e) => {
            setItemsPerPage(Number(e.target.value));
            setCurrentPage(1);
          }}
        >
          {[5, 10, 20, 50].map((n) => (
            <option key={n} value={n}>
              {n} / pág
            </option>
          ))}
        </select>
        <div className="flex items-center space-x-1">
          <button
            onClick={() => go(currentPage - 1)}
            disabled={currentPage === 1}
            className="rounded border px-2 py-1 text-sm disabled:opacity-50"
          >
            ‹
          </button>
          {pages.map((p, i) =>
            p === '…' ? (
              <span key={i} className="px-2 text-gray-500">
                …
              </span>
            ) : (
              <button
                key={p}
                onClick={() => go(p as number)}
                className={`rounded px-3 py-1 text-sm ${p === currentPage ? 'bg-blue-600 text-white' : 'hover:bg-gray-100'}`}
              >
                {p}
              </button>
            ),
          )}
          <button
            onClick={() => go(currentPage + 1)}
            disabled={currentPage === totalPages}
            className="rounded border px-2 py-1 text-sm disabled:opacity-50"
          >
            ›
          </button>
        </div>
      </div>
    </div>
  );
}
