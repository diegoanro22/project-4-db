import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function PUT(
  req: Request,
  { params }: { params: { id: string } },
) {
  const id = Number(params.id);
  const body = await req.json();

  await prisma.$transaction([
    prisma.prestamos.update({
      where: { id },
      data: {
        item_id: body.item_id,
        estado: body.estado,
        estudiante_id: body.estudiante_id,
        fecha_prestamo: body.fecha_prestamo
          ? new Date(body.fecha_prestamo)
          : undefined,
        fecha_devolucion: body.fecha_devolucion
          ? new Date(body.fecha_devolucion)
          : null,
      },
    }),
    /* liberamos todos los items y marcamos el nuevo como ocupado */
    prisma.items.updateMany({
      where: { prestamos: { some: { id } } },
      data: { disponible: true },
    }),
    prisma.items.update({
      where: { id: body.item_id },
      data: { disponible: false },
    }),
  ]);
  return NextResponse.json({ ok: true });
}

export async function DELETE(
  _: Request,
  { params }: { params: { id: string } },
) {
  const id = Number(params.id);

  await prisma.$transaction([
    prisma.items.updateMany({
      where: { prestamos: { some: { id } } },
      data: { disponible: true },
    }),
    prisma.prestamos.delete({ where: { id } }),
  ]);

  return NextResponse.json({ ok: true });
}
