// components/crud/EstudiantesTable.tsx
'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';

// Extendemos la interfaz para incluir todos los campos de VistaEstudiantes
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

interface EstudiantesTableProps {
  data: EstudianteView[];
}

export default function EstudiantesTable({ data }: EstudiantesTableProps) {
  const router = useRouter();

  // --- 1) Estados para paginación ---
  const [currentPage, setCurrentPage] = useState(1);
  const [itemsPerPage, setItemsPerPage] = useState(10);

  // Cálculos básicos
  const totalItems = data.length;
  const totalPages = Math.ceil(totalItems / itemsPerPage);

  // Índices para “slice”
  const startIndex = (currentPage - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  const currentData = data.slice(startIndex, endIndex);

  // Función para cambiar de página
  const goToPage = (page: number) => {
    if (page < 1 || page > totalPages) return;
    setCurrentPage(page);
  };

  // Función para eliminar un estudiante
  async function handleDelete(id: number, nombre: string) {
    if (!confirm(`¿Estás seguro de eliminar a "${nombre}"?`)) return;

    try {
      const res = await fetch(`/api/crud/estudiantes/${id}`, {
        method: 'DELETE',
      });
      if (!res.ok) {
        const error = await res.json();
        alert('Error al eliminar: ' + (error.error || res.status));
        return;
      }
      // Si todo va bien, recargamos la ruta actual para reflejar cambios
      router.refresh();
    } catch (err) {
      console.error(err);
      alert('Error desconocido al eliminar.');
    }
  }

  // Genera la lista de páginas visible (con “…” donde corresponda)
  const getPageButtons = () => {
    const pages: (number | 'ellipsis')[] = [];

    // Si hay pocas páginas, las mostramos todas:
    if (totalPages <= 7) {
      for (let i = 1; i <= totalPages; i++) {
        pages.push(i);
      }
      return pages;
    }

    // Siempre mostramos las dos primeras
    pages.push(1);
    pages.push(2);

    // Si la página actual está lejos de la posición 3, ponemos “...”
    if (currentPage > 4) {
      pages.push('ellipsis');
    }

    // Queremos mostrar currentPage-1, currentPage, currentPage+1
    const startCenter = Math.max(3, currentPage - 1);
    const endCenter = Math.min(totalPages - 2, currentPage + 1);

    for (let i = startCenter; i <= endCenter; i++) {
      if (!pages.includes(i)) {
        pages.push(i);
      }
    }

    // Si la página actual está lejos de la penúltima posición, ponemos “...”
    if (currentPage < totalPages - 3) {
      pages.push('ellipsis');
    }

    // Siempre mostramos las dos últimas
    pages.push(totalPages - 1);
    pages.push(totalPages);

    return pages;
  };

  const pageButtons = getPageButtons();

  return (
    <div>
      <div className="overflow-auto">
        {/* Tabla */}
        <table className="w-full border-collapse">
          <thead>
            <tr className="bg-gray-100">
              <th className="border px-4 py-2 text-left">ID</th>
              <th className="border px-4 py-2 text-left">Carnet</th>
              <th className="border px-4 py-2 text-left">Nombre Completo</th>
              <th className="border px-4 py-2 text-left">Email</th>
              <th className="border px-4 py-2 text-left">Teléfono</th>
              <th className="border px-4 py-2 text-left">Matriculado</th>
              <th className="border px-4 py-2 text-left">Carrera</th>
              <th className="border px-4 py-2 text-left">Facultad</th>
              <th className="border px-4 py-2 text-left">Beca</th>
              <th className="border px-4 py-2 text-left">Promedio</th>
              <th className="border px-4 py-2 text-left">Horas Beca</th>
              <th className="border px-4 py-2 text-left">Cantidad Cursos</th>
              <th className="border px-4 py-2 text-left">Cantidad Préstamos</th>
              <th className="border px-4 py-2 text-left">Acciones</th>
            </tr>
          </thead>
          <tbody>
            {currentData.map((e) => (
              <tr key={e.id} className="hover:bg-gray-50">
                <td className="border px-4 py-2">{e.id}</td>
                <td className="border px-4 py-2">{e.carnet}</td>
                <td className="border px-4 py-2">{e.nombre_completo}</td>
                <td className="border px-4 py-2">{e.email}</td>
                <td className="border px-4 py-2">{e.telefono}</td>
                <td className="border px-4 py-2">
                  {e.matriculado ? 'Sí' : 'No'}
                </td>
                <td className="border px-4 py-2">{e.carrera}</td>
                <td className="border px-4 py-2">{e.facultad}</td>
                <td className="border px-4 py-2">{e.beca ?? '—'}</td>
                <td className="border px-4 py-2">
                  {e.promedio_notas !== null
                    ? e.promedio_notas.toFixed(2)
                    : '—'}
                </td>
                <td className="border px-4 py-2">
                  {e.horas_beca_restantes !== null
                    ? e.horas_beca_restantes
                    : '—'}
                </td>
                <td className="border px-4 py-2">
                  {Array.isArray(e.cursos) ? e.cursos.length : '—'}
                </td>
                <td className="border px-4 py-2">
                  {Array.isArray(e.prestamos_activos)
                    ? e.prestamos_activos.length
                    : '—'}
                </td>
                <td className="border px-4 py-2">
                  <div className="flex space-x-2">
                    {/* Ver */}
                    <Link
                      href={`/crud/estudiantes/${e.id}`}
                      className="text-blue-600 hover:underline"
                    >
                      Ver
                    </Link>

                    {/* Editar */}
                    <Link
                      href={`/crud/estudiantes/${e.id}/edit`}
                      className="text-green-600 hover:underline"
                    >
                      Editar
                    </Link>

                    {/* Eliminar */}
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

            {currentData.length === 0 && (
              <tr>
                <td
                  colSpan={14}
                  className="border px-4 py-4 text-center text-gray-500"
                >
                  No hay estudiantes registrados.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      {/* --- 2) Controles de paginación debajo de la tabla --- */}
      <div className="mt-4 flex items-center justify-between">
        {/* Selector de items por página */}
        <div>
          <label className="mr-2 font-medium">Mostrar:</label>
          <select
            className="rounded border px-2 py-1"
            value={itemsPerPage}
            onChange={(e) => {
              setItemsPerPage(Number(e.target.value));
              setCurrentPage(1); // Reiniciar a la página 1 al cambiar el tamaño
            }}
          >
            {[5, 10, 20, 50].map((n) => (
              <option key={n} value={n}>
                {n} por página
              </option>
            ))}
          </select>
        </div>

        {/* Navegación de páginas avanzada */}
        <div className="flex items-center space-x-1">
          {/* Botón “Anterior” */}
          <button
            onClick={() => goToPage(currentPage - 1)}
            disabled={currentPage === 1}
            className={`rounded border px-3 py-1 ${
              currentPage === 1
                ? 'cursor-not-allowed bg-gray-200 text-gray-500'
                : 'bg-white text-gray-700 hover:bg-gray-100'
            }`}
          >
            Anterior
          </button>

          {/* Botones de página generados dinámicamente */}
          {pageButtons.map((p, idx) =>
            p === 'ellipsis' ? (
              <span key={`ell-${idx}`} className="px-2 text-gray-500">
                {'...'}
              </span>
            ) : (
              <button
                key={p}
                onClick={() => goToPage(p as number)}
                className={`rounded border px-3 py-1 ${
                  currentPage === p
                    ? 'bg-blue-600 text-white'
                    : 'bg-white text-gray-700 hover:bg-gray-100'
                }`}
              >
                {p}
              </button>
            ),
          )}

          {/* Botón “Siguiente” */}
          <button
            onClick={() => goToPage(currentPage + 1)}
            disabled={currentPage === totalPages}
            className={`rounded border px-3 py-1 ${
              currentPage === totalPages
                ? 'cursor-not-allowed bg-gray-200 text-gray-500'
                : 'bg-white text-gray-700 hover:bg-gray-100'
            }`}
          >
            Siguiente
          </button>
        </div>
      </div>
    </div>
  );
}
