'use client';
import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';

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
    <div>
      <div className="overflow-auto">
        <table className="w-full border-collapse">
          <thead>
            <tr className="bg-gray-100 text-left">
              <th className="border px-3 py-2">ID</th>
              <th className="border px-3 py-2">Curso</th>
              <th className="border px-3 py-2">Créditos</th>
              <th className="border px-3 py-2">Categoría</th>
              <th className="border px-3 py-2">Precio</th>
              <th className="border px-3 py-2">Cantidad Secciones</th>
              <th className="border px-3 py-2">Acciones</th>
            </tr>
          </thead>
          <tbody>
            {current.map((c) => (
              <tr key={c.id} className="text-sm hover:bg-gray-50">
                <td className="border px-3 py-1">{c.id}</td>
                <td className="border px-3 py-1">{c.curso}</td>
                <td className="border px-3 py-1">{c.creditos}</td>
                <td className="border px-3 py-1">{c.categoria}</td>
                <td className="border px-3 py-1">Q {c.precio.toFixed(2)}</td>
                <td className="border px-3 py-1">
                  {Array.isArray(c.secciones) ? c.secciones.length : 0}
                </td>
                <td className="border px-3 py-1">
                  <div className="flex space-x-2">
                    <Link
                      href={`/crud/cursos/${c.id}`}
                      className="text-blue-600 hover:underline"
                    >
                      Ver
                    </Link>
                    <Link
                      href={`/crud/cursos/${c.id}/edit`}
                      className="text-green-600 hover:underline"
                    >
                      Editar
                    </Link>
                    <button
                      onClick={() => void handleDelete(c.id, c.curso)}
                      className="text-red-600 hover:underline"
                    >
                      Eliminar
                    </button>
                  </div>
                </td>
              </tr>
            ))}
            {current.length === 0 && (
              <tr>
                <td
                  colSpan={7}
                  className="border py-6 text-center text-gray-500"
                >
                  No hay cursos registrados.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      {/* controles de paginación */}
      <div className="mt-4 flex items-center justify-between">
        <div>
          <select
            className="rounded border px-2 py-1"
            value={itemsPerPage}
            onChange={(e) => {
              setItemsPerPage(Number(e.target.value));
              setCurrentPage(1);
            }}
          >
            {[5, 10, 20, 50].map((n) => (
              <option key={n} value={n}>
                {n} / página
              </option>
            ))}
          </select>
        </div>
        <div className="flex items-center space-x-1">
          <button
            onClick={() => go(currentPage - 1)}
            disabled={currentPage === 1}
            className={`rounded border px-3 py-1 ${currentPage === 1 ? 'bg-gray-200 text-gray-500' : 'bg-white hover:bg-gray-100'}`}
          >
            ‹
          </button>
          {pages.map((p, i) =>
            p === '…' ? (
              <span key={'e' + i} className="px-2">
                …
              </span>
            ) : (
              <button
                key={p}
                onClick={() => go(p as number)}
                className={`rounded border px-3 py-1 ${p === currentPage ? 'bg-blue-600 text-white' : 'bg-white hover:bg-gray-100'}`}
              >
                {p}
              </button>
            ),
          )}
          <button
            onClick={() => go(currentPage + 1)}
            disabled={currentPage === totalPages}
            className={`rounded border px-3 py-1 ${currentPage === totalPages ? 'bg-gray-200 text-gray-500' : 'bg-white hover:bg-gray-100'}`}
          >
            ›
          </button>
        </div>
      </div>
    </div>
  );
}
