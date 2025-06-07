import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { Edit2, ChevronLeft } from 'lucide-react';

export default async function ShowPrestamo({
  params,
}: {
  params: { id: string };
}) {
  const p = await prisma.vista_prestamos.findUnique({
    where: { id: Number(params.id) },
  });
  if (!p) return notFound();

  const fechaPrestamo = p.fecha_prestamo?.toISOString().slice(0, 10);
  const fechaDevolucion = p.fecha_devolucion
    ? p.fecha_devolucion.toISOString().slice(0, 10)
    : '—';

  return (
    <div className="mx-auto my-12 max-w-3xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center justify-between">
        <Link
          href="/crud/prestamos"
          className="flex items-center text-gray-600 hover:text-gray-800"
        >
          <ChevronLeft className="h-5 w-5" />
          <span className="ml-2">Volver</span>
        </Link>
        <Link
          href={`/crud/prestamos/${p.id}/edit`}
          className="flex items-center rounded-lg bg-green-600 px-4 py-2 text-white hover:bg-green-700"
        >
          <Edit2 className="mr-2 h-5 w-5" />
          <span>Editar</span>
        </Link>
      </div>

      <h1 className="mb-6 text-3xl font-bold text-gray-800">
        Préstamo #{p.id}
      </h1>
      <ul className="grid grid-cols-1 gap-4 text-gray-700 sm:grid-cols-2">
        <li>
          <span className="font-medium">Estado:</span> {p.estado}
        </li>
        <li>
          <span className="font-medium">Fecha préstamo:</span> {fechaPrestamo}
        </li>
        <li>
          <span className="font-medium">Fecha devolución:</span>{' '}
          {fechaDevolucion}
        </li>
        <li>
          <span className="font-medium">Item:</span> {p.item}
        </li>
        <li>
          <span className="font-medium">Tipo:</span> {p.tipo_item}
        </li>
        {p.tipo_item === 'Libro' && (
          <>
            <li>
              <span className="font-medium">Libro:</span> {p.libro}
            </li>
            <li>
              <span className="font-medium">Autor:</span> {p.autor_libro}
            </li>
          </>
        )}
        {p.tipo_item === 'Dispositivo' && (
          <li>
            <span className="font-medium">Dispositivo:</span> {p.dispositivo}
          </li>
        )}
        <li className="col-span-full">
          <span className="font-medium">Estudiante:</span> {p.estudiante} (
          {p.carnet})
        </li>
      </ul>
    </div>
  );
}
