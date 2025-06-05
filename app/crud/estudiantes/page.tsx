// app/crud/estudiantes/page.tsx
import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import EstudiantesTable, {
  EstudianteView,
} from '@/components/crud/estudiantes/EstudiantesTable';

export default async function EstudiantesIndex() {
  // (1) Traer los datos “crudos” de la vista
  const estudiantesRaw = await prisma.vistaEstudiantes.findMany({
    orderBy: { id: 'asc' },
  });

  // (2) Mapear a “objetos planos” con todos los campos incluyéndolos JSON
  const estudiantes: EstudianteView[] = estudiantesRaw.map((e) => ({
    id: e.id,
    carnet: e.carnet,
    nombre_completo: e.nombre_completo,
    email: e.email,
    telefono: e.telefono,
    matriculado: e.matriculado,
    carrera: e.carrera,
    facultad: e.facultad,
    beca: e.beca ?? null,
    promedio_notas:
      e.promedio_notas !== null ? Number(e.promedio_notas.toString()) : null,
    horas_beca_restantes: e.horas_beca_restantes ?? null,
    // Prisma ’Json’ ya viene parseado, así que lo asumimos como array/objeto
    cursos: e.cursos ?? null,
    prestamos_activos: e.prestamos_activos ?? null,
  }));

  return (
    <div className="min-h-screen bg-gray-200 py-10">
      <div className="mx-auto max-w-7xl rounded-lg bg-gray-100 p-8 shadow-lg">
        <h1 className="mb-6 text-3xl font-bold">Listado de Estudiantes</h1>

        {/* (3) Envolvemos la tabla en un contenedor con overflow */}
        <EstudiantesTable data={estudiantes} />

        {/* Botón para crear estudiante nuevo */}
        <div className="mt-6">
          <Link
            href="/crud/estudiantes/create"
            className="inline-block rounded-lg bg-blue-600 px-6 py-2 font-medium text-white hover:bg-blue-700"
          >
            + Nuevo Estudiante
          </Link>
        </div>
      </div>
    </div>
  );
}
