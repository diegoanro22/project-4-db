import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import CursosTable, {
  CursoView,
  SeccionResumen,
} from '@/components/crud/cursos/CursosTable';
import { Prisma } from '@prisma/client';

export default async function CursosIndex() {
  /* 1) Leer vista y ordenar */
  const raw = await prisma.vistaCursos.findMany({
    orderBy: { id: 'asc' },
  });

  /* 2) Adaptar a la shape que usa <CursosTable> */
  const cursos: CursoView[] = raw.map((c) => ({
    id: c.id,
    curso: c.curso,
    descripcion: c.descripcion,
    creditos: c.creditos,
    categoria: c.categoria,
    precio: Number((c.precio as Prisma.Decimal).toString()),
    secciones: Array.isArray(c.secciones)
      ? (c.secciones as SeccionResumen[])
      : null,
  }));

  /* 3) Render */
  return (
    <div className="min-h-screen bg-gray-200 py-10">
      <div className="mx-auto max-w-6xl rounded-lg bg-gray-100 p-8 shadow-lg">
        <h1 className="mb-6 text-3xl font-bold">Listado de Cursos</h1>

        <CursosTable data={cursos} />

        <div className="mt-6">
          <Link
            href="/crud/cursos/create"
            className="inline-block rounded-lg bg-blue-600 px-6 py-2 text-white hover:bg-blue-700"
          >
            + Nuevo Curso
          </Link>
        </div>
      </div>
    </div>
  );
}
