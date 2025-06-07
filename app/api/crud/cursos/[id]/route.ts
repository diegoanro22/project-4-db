import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function GET(
  _req: Request,
  { params }: { params: { id: string } },
) {
  const c = await prisma.vista_cursos.findUnique({
    where: { id: Number(params.id) },
  });
  return c
    ? NextResponse.json(c)
    : NextResponse.json({ error: 'Not found' }, { status: 404 });
}

export async function PUT(
  req: Request,
  { params }: { params: { id: string } },
) {
  const body = await req.json();
  const updated = await prisma.cursos.update({
    where: { id: Number(params.id) },
    data: {
      curso: body.curso,
      descripcion: body.descripcion,
      creditos: body.creditos,
      categoria: body.categoria,
      precio: body.precio,
    },
  });
  return NextResponse.json(updated);
}

export async function DELETE(
  _req: Request,
  { params }: { params: { id: string } },
) {
  const id = Number(params.id);

  /* --- borrado en cascada manual --- */
  await prisma.$transaction(async (tx) => {
    // 1) Obtener IDs de secciones del curso
    const secciones = await tx.secciones.findMany({
      where: { curso_id: id },
      select: { id: true },
    });
    const secIds = secciones.map((s) => s.id);

    if (secIds.length) {
      /* 2) Eliminar dependencias de cada sección */
      await tx.estudianteSecciones.deleteMany({
        where: { seccion_id: { in: secIds } },
      });
      await tx.horarios.deleteMany({ where: { seccion_id: { in: secIds } } });

      // Actividades y notas
      const acts = await tx.actividades.findMany({
        where: { seccion_id: { in: secIds } },
        select: { id: true },
      });
      const actIds = acts.map((a) => a.id);

      if (actIds.length) {
        await tx.estudianteNotas.deleteMany({
          where: { actividad_id: { in: actIds } },
        });
        await tx.actividades.deleteMany({ where: { id: { in: actIds } } });
      }

      // Finalmente secciones
      await tx.secciones.deleteMany({ where: { id: { in: secIds } } });
    }

    // 3) Eliminar el curso
    await tx.cursos.delete({ where: { id } });
  });

  return NextResponse.json({ ok: true });
}
