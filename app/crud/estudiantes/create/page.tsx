import { prisma } from '@/lib/prisma';
import EstudianteForm from '@/components/crud/estudiantes/EstudianteForm';

export default async function CreateEstudiante() {
  const carreras = await prisma.carreras.findMany({
    orderBy: { carrera: 'asc' },
  });
  const becas = await prisma.becas.findMany({ orderBy: { nombre: 'asc' } });

  return (
    <div className="mx-auto my-10 max-w-xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">Nuevo estudiante</h1>
      <EstudianteForm
        mode="create"
        carreras={carreras.map((c) => ({
          id: c.id,
          nombre: c.carrera,
        }))}
        becas={becas.map((b) => ({
          id: b.id,
          nombre: b.nombre,
        }))}
      />
    </div>
  );
}
