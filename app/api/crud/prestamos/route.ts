import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function POST(req: Request) {
  const body = await req.json();
  const p = await prisma.$transaction([
    prisma.prestamos.create({
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
    prisma.items.update({
      where: { id: body.item_id },
      data: { disponible: false },
    }),
  ]);
  return NextResponse.json(p[0], { status: 201 });
}
