import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import CursosTable, {
  CursoView,
  SeccionResumen,
} from '@/components/crud/cursos/CursosTable';
import { Prisma } from '@prisma/client';
import { Plus } from 'lucide-react';

export default async function CursosIndex() {
  /* 1) Leer vista y ordenar */
  const raw = await prisma.vista_cursos.findMany({
    orderBy: { id: 'asc' },
  });

  /* 2) Adaptar a la shape que usa <CursosTable> */
  const cursos: CursoView[] = raw.map((c) => ({
    id: c.id,
    curso: c.curso ?? '–',
    descripcion: c.descripcion ?? '',
    creditos: c.creditos ?? 0,
    categoria: c.categoria ?? 'BASICO',
    precio: c.precio ? Number((c.precio as Prisma.Decimal).toString()) : 0,
    secciones: Array.isArray(c.secciones)
      ? (c.secciones as SeccionResumen[])
      : [], // <-- más sencillo que null
  }));

  /* 3) Render */
  return (
    <div className="min-h-screen bg-gray-100 py-10">
      <div className="mx-auto max-w-6xl rounded-lg bg-white p-8 shadow-xl">
        <div className="mb-6 flex items-center justify-between">
          <h1 className="text-3xl font-bold text-gray-800">
            Listado de Cursos
          </h1>
          <Link
            href="/crud/cursos/create"
            className="inline-flex items-center gap-2 rounded-lg bg-blue-600 px-5 py-2 text-white hover:bg-blue-700"
          >
            <Plus className="h-5 w-5" />
            <span>Nuevo Curso</span>
          </Link>
        </div>

        <CursosTable data={cursos} />
      </div>
    </div>
  );
}
