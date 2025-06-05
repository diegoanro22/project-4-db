import { prisma } from '@/lib/prisma';
import CursoForm from '@/components/crud/cursos/CursoForm';
import { notFound } from 'next/navigation';

export default async function EditCurso({
  params,
}: {
  params: { id: string };
}) {
  const c = await prisma.cursos.findUnique({
    where: { id: Number(params.id) },
  });
  if (!c) return notFound();

  return (
    <div className="mx-auto my-10 max-w-xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">Editar curso</h1>
      <CursoForm
        mode="edit"
        id={c.id}
        initial={{
          curso: c.curso,
          descripcion: c.descripcion,
          creditos: c.creditos,
          categoria: c.categoria,
          precio: Number(c.precio),
        }}
      />
    </div>
  );
}
