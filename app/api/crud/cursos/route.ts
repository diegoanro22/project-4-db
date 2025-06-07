import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function POST(req: Request) {
  const body = await req.json();

  const nuevo = await prisma.cursos.create({
    data: {
      curso: body.curso,
      descripcion: body.descripcion,
      creditos: body.creditos,
      categoria: body.categoria,
      precio: body.precio,
    },
  });

  return NextResponse.json(nuevo, { status: 201 });
}
