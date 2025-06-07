import { prisma } from '@/lib/prisma';
import CursoForm from '@/components/crud/cursos/CursoForm';
import { notFound } from 'next/navigation';
import { ChevronLeft } from 'lucide-react';
import Link from 'next/link';

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
    <div className="mx-auto my-12 max-w-3xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center">
        <Link
          href="/crud/cursos"
          className="flex items-center text-gray-600 hover:text-gray-800"
        >
          <ChevronLeft className="h-5 w-5" />
          <span className="ml-2">Volver</span>
        </Link>
        <h1 className="ml-auto text-2xl font-semibold text-gray-800">
          Editar Curso
        </h1>
      </div>
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
