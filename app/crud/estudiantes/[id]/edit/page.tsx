import { prisma } from '@/lib/prisma';
import EstudianteForm from '@/components/crud/estudiantes/EstudianteForm';
import { notFound } from 'next/navigation';

export default async function EditEstudiante({
  params,
}: {
  params: { id: string };
}) {
  const [est, carreras, becas] = await Promise.all([
    prisma.estudiantes.findUnique({ where: { id: Number(params.id) } }),
    prisma.carreras.findMany({ orderBy: { carrera: 'asc' } }),
    prisma.becas.findMany({ orderBy: { nombre: 'asc' } }),
  ]);

  if (!est) return notFound();

  return (
    <div className="mx-auto my-10 max-w-xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">Editar estudiante</h1>
      <EstudianteForm
        mode="edit"
        id={est.id}
        carreras={carreras.map((c) => ({ id: c.id, nombre: c.carrera }))}
        becas={becas.map((b) => ({ id: b.id, nombre: b.nombre }))}
        initial={{
          carnet: est.carnet,
          nombre: est.nombre,
          apellido: est.apellido,
          email: est.email,
          telefono: est.telefono,
          fecha_nacimiento: est.fecha_nacimiento.toISOString().slice(0, 10),
          carrera_id: est.carrera_id,
          beca_id: est.beca_id,
          matriculado: est.matriculado,
          horas_beca_restantes: est.horas_beca_restantes,
        }}
      />
    </div>
  );
}
