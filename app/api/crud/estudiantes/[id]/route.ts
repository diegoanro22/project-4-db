// app/api/crud/estudiantes/[id]/route.ts
import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function GET(
  _req: Request,
  { params }: { params: { id: string } },
) {
  const est = await prisma.vistaEstudiantes.findUnique({
    where: { id: Number(params.id) },
  });
  if (!est) return NextResponse.json({ error: 'No existe' }, { status: 404 });
  return NextResponse.json(est);
}

export async function PUT(
  req: Request,
  { params }: { params: { id: string } },
) {
  const body = await req.json();
  try {
    const upd = await prisma.estudiantes.update({
      where: { id: Number(params.id) },
      data: {
        carnet: body.carnet,
        nombre: body.nombre,
        apellido: body.apellido,
        email: body.email,
        telefono: body.telefono,
        fecha_nacimiento: new Date(body.fecha_nacimiento),
        carrera_id: Number(body.carrera_id),
        beca_id: body.beca_id ? Number(body.beca_id) : null,
      },
    });
    return NextResponse.json(upd);
  } catch {
    return NextResponse.json({ error: 'Unknown error' }, { status: 400 });
  }
}

export async function DELETE(
  _req: Request,
  { params }: { params: { id: string } },
) {
  const id = Number(params.id);

  await prisma.$transaction([
    prisma.prestamos.deleteMany({ where: { estudiante_id: id } }),
    prisma.estudianteNotas.deleteMany({ where: { estudiante_id: id } }),
    prisma.estudianteSecciones.deleteMany({ where: { estudiante_id: id } }),
    prisma.estudiantePagos.deleteMany({ where: { estudiante_id: id } }),
    prisma.estudianteHorasBeca.deleteMany({ where: { estudiante_id: id } }),
    prisma.estudianteContactos.deleteMany({ where: { estudiante_id: id } }),
    prisma.reservas.deleteMany({ where: { estudiante_id: id } }),
    prisma.estudiantes.delete({ where: { id } }),
  ]);

  return NextResponse.json({ ok: true });
}
