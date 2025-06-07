import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import EstudianteForm from '@/components/crud/estudiantes/EstudianteForm';
import { ChevronLeft } from 'lucide-react';

export default async function CreateEstudiante() {
  const carreras = await prisma.carreras.findMany({
    orderBy: { carrera: 'asc' },
  });
  const becas = await prisma.becas.findMany({ orderBy: { nombre: 'asc' } });

  return (
    <div className="mx-auto my-12 max-w-3xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center">
        <Link href="/crud/estudiantes">
          <button className="flex items-center gap-2 text-gray-600 hover:text-gray-800">
            <ChevronLeft className="h-5 w-5" />
            <span className="font-medium">Volver al listado</span>
          </button>
        </Link>
        <h1 className="ml-auto text-3xl font-bold text-gray-800">
          Nuevo Estudiante
        </h1>
      </div>
      <EstudianteForm
        mode="create"
        carreras={carreras.map((c) => ({ id: c.id, nombre: c.carrera }))}
        becas={becas.map((b) => ({ id: b.id, nombre: b.nombre }))}
      />
    </div>
  );
}
