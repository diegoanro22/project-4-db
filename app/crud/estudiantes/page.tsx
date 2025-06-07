import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import EstudiantesTable, {
  EstudianteView,
} from '@/components/crud/estudiantes/EstudiantesTable';
import { Plus } from 'lucide-react';

export default async function EstudiantesIndex() {
  // (1) Traer los datos “crudos” de la vista
  const estudiantesRaw = await prisma.vista_estudiantes.findMany({
    orderBy: { id: 'asc' },
  });

  // (2) Mapear a “objetos planos” con todos los campos incluyéndolos JSON
  const estudiantes: EstudianteView[] = estudiantesRaw.map((e) => ({
    id: e.id,
    carnet: e.carnet ?? '',
    nombre_completo: e.nombre_completo ?? '',
    email: e.email ?? '',
    telefono: e.telefono ?? '',
    matriculado: Boolean(e.matriculado),
    carrera: e.carrera ?? '',
    facultad: e.facultad ?? '',
    beca: e.beca ?? null,
    promedio_notas:
      e.promedio_notas !== null ? Number(e.promedio_notas.toString()) : null,
    horas_beca_restantes: e.horas_beca_restantes ?? null,
    cursos: Array.isArray(e.cursos) ? (e.cursos as number[]) : [],
    prestamos_activos: Array.isArray(e.prestamos_activos)
      ? (e.prestamos_activos as number[])
      : [],
  }));

  return (
    <div className="min-h-screen bg-gray-100 py-10">
      <div className="mx-auto max-w-6xl rounded-lg bg-white p-8 shadow-xl">
        <div className="mb-6 flex items-center justify-between">
          <h1 className="text-3xl font-bold text-gray-800">
            Listado de Estudiantes
          </h1>
          <Link
            href="/crud/estudiantes/create"
            className="inline-flex items-center gap-2 rounded-lg bg-blue-600 px-5 py-2 text-white hover:bg-blue-700"
          >
            <Plus className="h-5 w-5" />
            <span>Nuevo Estudiante</span>
          </Link>
        </div>

        <EstudiantesTable data={estudiantes} />
      </div>
    </div>
  );
}
