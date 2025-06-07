// app/crud/estudiantes/[id]/page.tsx
import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { Edit2, ChevronLeft } from 'lucide-react';

export default async function ShowEstudiante({
  params,
}: {
  params: { id: string };
}) {
  const est = await prisma.vista_estudiantes.findUnique({
    where: { id: Number(params.id) },
  });
  if (!est) return notFound();

  const promedio =
    est.promedio_notas !== null ? Number(est.promedio_notas).toFixed(2) : '—';

  return (
    <div className="mx-auto my-12 max-w-3xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center justify-between">
        <Link
          href="/crud/estudiantes"
          className="flex items-center text-gray-600 hover:text-gray-800"
        >
          <ChevronLeft className="h-5 w-5" />
          <span className="ml-2 font-medium">Volver al listado</span>
        </Link>
        <Link
          href={`/crud/estudiantes/${est.id}/edit`}
          className="flex items-center rounded-lg bg-green-600 px-4 py-2 text-white hover:bg-green-700"
        >
          <Edit2 className="mr-2 h-5 w-5" />
          <span>Editar</span>
        </Link>
      </div>

      <h1 className="mb-8 text-3xl font-bold text-gray-800">
        {est.nombre_completo}
      </h1>

      <div className="grid grid-cols-1 gap-6 sm:grid-cols-2">
        <div className="space-y-4">
          <div>
            <p className="text-sm text-gray-500">Carnet</p>
            <p className="font-medium text-gray-800">{est.carnet}</p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Email</p>
            <p className="font-medium text-gray-800">{est.email}</p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Teléfono</p>
            <p className="font-medium text-gray-800">{est.telefono}</p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Matriculado</p>
            <p className="font-medium text-gray-800">
              {est.matriculado ? 'Sí' : 'No'}
            </p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Beca</p>
            <p className="font-medium text-gray-800">{est.beca ?? '—'}</p>
          </div>
        </div>

        <div className="space-y-4">
          <div>
            <p className="text-sm text-gray-500">Promedio</p>
            <p className="font-medium text-gray-800">{promedio}</p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Horas de beca restantes</p>
            <p className="font-medium text-gray-800">
              {est.horas_beca_restantes ?? '—'}
            </p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Carrera / Facultad</p>
            <p className="font-medium text-gray-800">
              {est.carrera} — {est.facultad}
            </p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Cursos inscritos</p>
            <p className="font-medium text-gray-800">
              {Array.isArray(est.cursos) ? est.cursos.length : '—'}
            </p>
          </div>
          <div>
            <p className="text-sm text-gray-500">Préstamos activos</p>
            <p className="font-medium text-gray-800">
              {Array.isArray(est.prestamos_activos)
                ? est.prestamos_activos.length
                : '—'}
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
