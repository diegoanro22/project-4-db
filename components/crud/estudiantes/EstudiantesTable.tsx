'use client';
import React, { useMemo, useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { Eye, Edit2, Trash2 } from 'lucide-react';

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
  const [page, setPage] = useState(1);
  const [perPage, setPerPage] = useState(10);
  const totalPages = Math.ceil(data.length / perPage);
  const slice = data.slice((page - 1) * perPage, page * perPage);

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

  return (
    <div className="overflow-hidden rounded-lg bg-white shadow-lg">
      <div className="overflow-x-auto">
        <table className="min-w-full divide-y divide-gray-200">
          <thead className="bg-gray-50">
            <tr>
              {[
                'Acciones',
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
            {slice.map((e) => (
              <tr key={e.id} className="hover:bg-gray-50">
                <td className="px-4 py-2">
                  <div className="flex items-center gap-2">
                    <Link href={`/crud/estudiantes/${e.id}`}>
                      <button className="rounded p-1 hover:bg-gray-100">
                        <Eye className="h-5 w-5 text-blue-500" />
                      </button>
                    </Link>
                    <Link href={`/crud/estudiantes/${e.id}/edit`}>
                      <button className="rounded p-1 hover:bg-gray-100">
                        <Edit2 className="h-5 w-5 text-green-500" />
                      </button>
                    </Link>
                    <button
                      onClick={() => void handleDelete(e.id, e.nombre_completo)}
                      className="rounded p-1 hover:bg-gray-100"
                    >
                      <Trash2 className="h-5 w-5 text-red-500" />
                    </button>
                  </div>
                </td>

                <td className="px-4 py-2 text-gray-600">{e.id}</td>
                <td className="px-4 py-2 text-gray-600">{e.carnet}</td>
                <td className="px-4 py-2 text-gray-600">{e.nombre_completo}</td>
                <td className="px-4 py-2 text-gray-600">{e.email}</td>
                <td className="px-4 py-2 text-gray-600">{e.telefono}</td>

                <td className="px-4 py-2">
                  <span
                    className={`inline-block rounded-full px-2 py-1 text-xs font-medium ${
                      e.matriculado
                        ? 'bg-emerald-100 text-emerald-700'
                        : 'bg-gray-200 text-gray-600'
                    }`}
                  >
                    {e.matriculado ? 'Sí' : 'No'}
                  </span>
                </td>

                <td className="px-4 py-2 text-gray-600">{e.carrera}</td>
                <td className="px-4 py-2 text-gray-600">{e.facultad}</td>
                <td className="px-4 py-2 text-gray-600">{e.beca ?? '—'}</td>
                <td className="px-4 py-2 text-gray-600">
                  {e.promedio_notas?.toFixed(2) ?? '—'}
                </td>
                <td className="px-4 py-2 text-gray-600">
                  {e.horas_beca_restantes ?? '—'}
                </td>
                <td className="px-4 py-2 text-gray-600">
                  {e.cursos?.length ?? '—'}
                </td>
                <td className="px-4 py-2 text-gray-600">
                  {e.prestamos_activos?.length ?? '—'}
                </td>
              </tr>
            ))}

            {slice.length === 0 && (
              <tr>
                <td
                  colSpan={14}
                  className="px-4 py-6 text-center text-gray-500"
                >
                  No hay estudiantes registrados.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      <div className="flex items-center justify-between bg-gray-50 px-4 py-3">
        <select
          className="block w-24 rounded border-gray-300 bg-white text-sm"
          value={perPage}
          onChange={(e) => {
            setPerPage(Number(e.target.value));
            setPage(1);
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
            onClick={() => setPage((p) => Math.max(1, p - 1))}
            disabled={page === 1}
            className="rounded border px-2 py-1 text-sm disabled:opacity-50"
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
                className={`rounded px-3 py-1 text-sm ${p === page ? 'bg-blue-600 text-white' : 'hover:bg-gray-100'}`}
              >
                {p}
              </button>
            ),
          )}

          <button
            onClick={() => setPage((p) => Math.min(totalPages, p + 1))}
            disabled={page === totalPages}
            className="rounded border px-2 py-1 text-sm disabled:opacity-50"
          >
            ›
          </button>
        </div>
      </div>
    </div>
  );
}
