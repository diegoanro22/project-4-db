// app/api/crud/estudiantes/route.ts
import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function POST(req: Request) {
  const body = await req.json();
  const nuevo = await prisma.estudiantes.create({
    data: {
      carnet: body.carnet,
      nombre: body.nombre,
      apellido: body.apellido,
      email: body.email,
      telefono: body.telefono,
      fecha_nacimiento: new Date(body.fecha_nacimiento),
      carrera_id: Number(body.carrera_id),
      beca_id: body.beca_id ? Number(body.beca_id) : null,
      matriculado: body.matriculado,
      horas_beca_restantes: Number(body.horas_beca_restantes),
    },
  });
  return NextResponse.json(nuevo, { status: 201 });
}
