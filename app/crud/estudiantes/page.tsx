import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import EstudiantesTable, {
  EstudianteView,
} from '@/components/crud/estudiantes/EstudiantesTable';

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
    <div className="flex min-h-screen flex-col bg-gray-50">
      {/* Header */}
      <header className="bg-white shadow">
        <div className="mx-auto flex max-w-7xl items-center gap-3 px-6 py-6">
          <h1 className="text-2xl font-semibold text-gray-800">Estudiantes</h1>
        </div>
      </header>

      {/* Content */}
      <main className="mx-auto max-w-7xl flex-grow px-6 py-8">
        <div className="rounded-lg bg-white p-6 shadow">
          <div className="mb-4 flex items-center justify-between">
            <h2 className="text-lg font-medium text-gray-700">
              Listado de Estudiantes
            </h2>
            <Link
              href="/crud/estudiantes/create"
              className="inline-flex items-center gap-1 rounded bg-blue-600 px-4 py-2 text-sm font-medium text-white hover:bg-blue-700"
            >
              + Nuevo Estudiante
            </Link>
          </div>
          <div className="overflow-auto">
            <EstudiantesTable data={estudiantes} />
          </div>
        </div>
      </main>

      {/* Footer */}
      <footer className="bg-white">
        <div className="mx-auto max-w-7xl px-6 py-4 text-center text-sm text-gray-500">
          &copy; {new Date().getFullYear()} CC3088.
        </div>
      </footer>
    </div>
  );
}
