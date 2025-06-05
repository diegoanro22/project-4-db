// components/crud/EstudiantesTable.tsx
'use client';
import React, { useMemo, useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';

/* ----------  Tipo de datos de la vista ---------- */
export interface EstudianteView {
  id: number;
  carnet: string;
  nombre_completo: string;
  email: string;
  telefono: string;
  matriculado: boolean;
  carrera: string;
  facultad: string;
  beca: string | null;
  promedio_notas: number | null;
  horas_beca_restantes: number | null;
  cursos: number[] | null;
  prestamos_activos: number[] | null;
}

interface Props {
  data: EstudianteView[];
}

export default function EstudiantesTable({ data }: Props) {
  /* ───────────  paginación básica  ─────────── */
  const [page, setPage] = useState(1);
  const [perPage, setPerPage] = useState(10);
  const totalPages = Math.ceil(data.length / perPage);
  const slice = data.slice((page - 1) * perPage, page * perPage);

  /*  botones 1 2 … lógica idéntica a las otras tablas  */
  const pages = useMemo<(number | '…')[]>(() => {
    if (totalPages <= 7)
      return Array.from({ length: totalPages }, (_, i) => i + 1);
    const arr: (number | '…')[] = [1, 2];
    if (page > 4) arr.push('…');
    for (
      let p = Math.max(3, page - 1);
      p <= Math.min(totalPages - 2, page + 1);
      p++
    )
      arr.push(p);
    if (page < totalPages - 3) arr.push('…');
    arr.push(totalPages - 1, totalPages);
    return arr;
  }, [page, totalPages]);

  /* ───────────  eliminar  ─────────── */
  const router = useRouter();

  async function handleDelete(id: number, nombre: string) {
    if (!confirm(`¿Eliminar a “${nombre}”?`)) return;
    const res = await fetch(`/api/crud/estudiantes/${id}`, {
      method: 'DELETE',
    });
    if (!res.ok) {
      const { error } = await res.json().catch(() => ({}));
      alert(`Error: ${error ?? res.statusText}`);
      return;
    }
    router.refresh();
  }

  /* ───────────  render  ─────────── */
  return (
    <div>
      {/* tabla con scroll horizontal */}
      <div className="overflow-auto">
        <table className="w-full border-collapse text-sm">
          <thead>
            <tr className="bg-gray-100 text-left">
              {/* cabeceras compactas */}
              {[
                'ID',
                'Carnet',
                'Nombre',
                'Correo',
                'Teléfono',
                'Matriculado',
                'Carrera',
                'Facultad',
                'Beca',
                'Prom.',
                'Horas',
                'Cursos',
                'Préstamos',
                'Acciones',
              ].map((h) => (
                <th key={h} className="border px-3 py-2">
                  {h}
                </th>
              ))}
            </tr>
          </thead>
          <tbody>
            {slice.map((e) => (
              <tr key={e.id} className="hover:bg-gray-50">
                <td className="border px-3 py-1">{e.id}</td>
                <td className="border px-3 py-1">{e.carnet}</td>
                <td className="border px-3 py-1">{e.nombre_completo}</td>
                <td className="border px-3 py-1">{e.email}</td>
                <td className="border px-3 py-1">{e.telefono}</td>

                {/* chip verde / gris */}
                <td className="border px-3 py-1">
                  <span
                    className={`rounded-full px-2 py-0.5 text-xs font-medium ${
                      e.matriculado
                        ? 'bg-emerald-100 text-emerald-700'
                        : 'bg-gray-200 text-gray-600'
                    }`}
                  >
                    {e.matriculado ? 'Sí' : 'No'}
                  </span>
                </td>

                <td className="border px-3 py-1">{e.carrera}</td>
                <td className="border px-3 py-1">{e.facultad}</td>
                <td className="border px-3 py-1">{e.beca ?? '—'}</td>
                <td className="border px-3 py-1">
                  {e.promedio_notas?.toFixed(2) ?? '—'}
                </td>
                <td className="border px-3 py-1">
                  {e.horas_beca_restantes ?? '—'}
                </td>
                <td className="border px-3 py-1">{e.cursos?.length ?? '—'}</td>
                <td className="border px-3 py-1">
                  {e.prestamos_activos?.length ?? '—'}
                </td>

                {/* acciones compactas */}
                <td className="border px-3 py-1">
                  <div className="flex gap-2">
                    <Link
                      href={`/crud/estudiantes/${e.id}`}
                      className="text-blue-600 hover:underline"
                    >
                      Ver
                    </Link>
                    <Link
                      href={`/crud/estudiantes/${e.id}/edit`}
                      className="text-green-600 hover:underline"
                    >
                      Editar
                    </Link>
                    <button
                      onClick={() => void handleDelete(e.id, e.nombre_completo)}
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
                  colSpan={14}
                  className="border py-6 text-center text-gray-500"
                >
                  No hay estudiantes registrados.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      {/* controles de paginación */}
      <div className="mt-4 flex items-center justify-between">
        <select
          className="rounded border px-2 py-1"
          value={perPage}
          onChange={(e) => {
            setPerPage(Number(e.target.value));
            setPage(1);
          }}
        >
          {[5, 10, 20, 50].map((n) => (
            <option key={n} value={n}>
              {n} / página
            </option>
          ))}
        </select>

        <div className="flex items-center space-x-1">
          <button
            onClick={() => setPage((p) => Math.max(1, p - 1))}
            disabled={page === 1}
            className={`rounded border px-3 py-1 ${
              page === 1
                ? 'bg-gray-200 text-gray-500'
                : 'bg-white hover:bg-gray-100'
            }`}
          >
            ‹
          </button>

          {pages.map((p, i) =>
            p === '…' ? (
              <span key={'e' + i} className="px-2 text-gray-500">
                …
              </span>
            ) : (
              <button
                key={p}
                onClick={() => setPage(p as number)}
                className={`rounded border px-3 py-1 ${
                  p === page
                    ? 'bg-blue-600 text-white'
                    : 'bg-white hover:bg-gray-100'
                }`}
              >
                {p}
              </button>
            ),
          )}

          <button
            onClick={() => setPage((p) => Math.min(totalPages, p + 1))}
            disabled={page === totalPages}
            className={`rounded border px-3 py-1 ${
              page === totalPages
                ? 'bg-gray-200 text-gray-500'
                : 'bg-white hover:bg-gray-100'
            }`}
          >
            ›
          </button>
        </div>
      </div>
    </div>
  );
}
