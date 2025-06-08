import { prisma } from '@/lib/prisma';
import ReportesEstudiantesView from '@/components/reports/estudiantes/EstudiantesView';
import { EstudianteView } from '@/components/crud/estudiantes/EstudiantesTable';

export default async function ReportesEstudiantesPage() {
  // (1) Traer los datos "crudos" de la vista
  const estudiantesRaw = await prisma.vista_estudiantes.findMany({
    orderBy: { nombre_completo: 'asc' },
  });

  // (2) Mapear a "objetos planos" con todos los campos incluyéndolos JSON
  const data: EstudianteView[] = estudiantesRaw.map((e) => ({
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
      <div className="mx-auto max-w-7xl rounded-lg bg-white p-8 shadow-xl">
        <div className="mb-6">
          <h1 className="text-3xl font-bold text-gray-800">
            Reportes de Estudiantes
          </h1>
          <p className="mt-2 text-gray-600">
            Filtra y descarga reportes de los estudiantes registrados
          </p>
        </div>

        <ReportesEstudiantesView data={data} />
      </div>
    </div>
  );
}
