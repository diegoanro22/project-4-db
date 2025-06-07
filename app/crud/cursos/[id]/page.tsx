import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { Prisma } from '@prisma/client';
import { Edit2, ChevronLeft } from 'lucide-react';

type Horario = {
  dia: string;
  hora_inicio: string; // ISO «HH:MM:SS»
  hora_fin: string;
};

type SeccionResumen = {
  id: number;
  maestro: string;
  salon: string;
  capacidad: number;
  estudiantes_inscritos: number;
  horario: Horario[];
};

export default async function ShowCurso({
  params,
}: {
  params: { id: string };
}) {
  /* -------- leer la vista ---------- */
  const raw = await prisma.vista_cursos.findUnique({
    where: { id: Number(params.id) },
  });
  if (!raw) return notFound();

  /* -------- transformar -------- */
  const precio = Number((raw.precio as Prisma.Decimal).toString()).toFixed(2);
  const secciones: SeccionResumen[] = Array.isArray(raw.secciones)
    ? (raw.secciones as SeccionResumen[])
    : [];

  /* -------- render -------- */
  return (
    <div className="mx-auto my-12 max-w-4xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center justify-between">
        <Link
          href="/crud/cursos"
          className="flex items-center text-gray-600 hover:text-gray-800"
        >
          <ChevronLeft className="h-5 w-5" />
          <span className="ml-2">Volver</span>
        </Link>
        <Link
          href={`/crud/cursos/${raw.id}/edit`}
          className="flex items-center rounded-lg bg-green-600 px-4 py-2 text-white hover:bg-green-700"
        >
          <Edit2 className="mr-2 h-5 w-5" />
          <span>Editar</span>
        </Link>
      </div>
      <h1 className="mb-4 text-3xl font-bold text-gray-800">{raw.curso}</h1>
      <p className="mb-6 text-gray-700">{raw.descripcion}</p>
      <div className="mb-6 grid grid-cols-1 gap-6 text-gray-800 sm:grid-cols-2">
        <div>
          <span className="font-medium">Créditos:</span> {raw.creditos}
        </div>
        <div>
          <span className="font-medium">Categoría:</span> {raw.categoria}
        </div>
        <div>
          <span className="font-medium">Precio:</span> Q {precio}
        </div>
        <div>
          <span className="font-medium">Secciones:</span> {secciones.length}
        </div>
      </div>
      {secciones.length > 0 && (
        <div className="overflow-x-auto">
          <table className="min-w-full divide-y divide-gray-200">
            <thead className="bg-gray-50">
              <tr>
                {[
                  'ID',
                  'Maestro',
                  'Salón',
                  'Capacidad',
                  'Inscritos',
                  'Horario',
                ].map((head) => (
                  <th
                    key={head}
                    className="px-4 py-2 text-left text-xs font-semibold text-gray-700 uppercase"
                  >
                    {head}
                  </th>
                ))}
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-200 bg-white">
              {secciones.map((s) => (
                <tr key={s.id} className="hover:bg-gray-50">
                  <td className="px-4 py-2 text-gray-600">{s.id}</td>
                  <td className="px-4 py-2 text-gray-600">{s.maestro}</td>
                  <td className="px-4 py-2 text-gray-600">{s.salon}</td>
                  <td className="px-4 py-2 text-gray-600">{s.capacidad}</td>
                  <td className="px-4 py-2 text-gray-600">
                    {s.estudiantes_inscritos}
                  </td>
                  <td className="px-4 py-2 text-gray-600">
                    {s.horario
                      .map(
                        (h) =>
                          `${h.dia} ${h.hora_inicio.slice(0, 5)}-${h.hora_fin.slice(0, 5)}`,
                      )
                      .join(', ')}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
