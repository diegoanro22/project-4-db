import { prisma } from '@/lib/prisma';
import ReportesCursosView from '@/components/reports/cursos/CursosView';
import {
  CursoView,
  SeccionResumen,
} from '@/components/crud/cursos/CursosTable';
import { Prisma } from '@prisma/client';

export default async function ReportesCursosPage() {
  // (1) Traer los datos "crudos" de la vista
  const cursosRaw = await prisma.vista_cursos.findMany({
    orderBy: { curso: 'asc' },
  });

  // (2) Mapear a "objetos planos" con todos los campos incluyendo JSON
  const data: CursoView[] = cursosRaw.map((c) => ({
    id: c.id,
    curso: c.curso ?? '–',
    descripcion: c.descripcion ?? '',
    creditos: c.creditos ?? 0,
    categoria: c.categoria ?? 'BASICO',
    precio: c.precio ? Number((c.precio as Prisma.Decimal).toString()) : 0,
    secciones: Array.isArray(c.secciones)
      ? (c.secciones as SeccionResumen[])
      : [], // Arreglo vacío en lugar de null para evitar errores
  }));

  return (
    <div className="min-h-screen bg-gray-100 py-10">
      <div className="mx-auto max-w-7xl rounded-lg bg-white p-8 shadow-xl">
        <div className="mb-6">
          <h1 className="text-3xl font-bold text-gray-800">
            Reportes de Cursos
          </h1>
          <p className="mt-2 text-gray-600">
            Filtra y descarga reportes de los cursos registrados
          </p>
        </div>

        <ReportesCursosView data={data} />
      </div>
    </div>
  );
}
