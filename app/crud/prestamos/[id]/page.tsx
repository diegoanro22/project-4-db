import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import { notFound } from 'next/navigation';

export default async function ShowPrestamo({
  params,
}: {
  params: { id: string };
}) {
  const p = await prisma.vistaPrestamos.findUnique({
    where: { id: Number(params.id) },
  });
  if (!p) return notFound();

  const fechaPrestamo = p.fecha_prestamo.toISOString().slice(0, 10);
  const fechaDevolucion = p.fecha_devolucion
    ? p.fecha_devolucion.toISOString().slice(0, 10)
    : '—';

  return (
    <div className="mx-auto my-10 max-w-3xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">Préstamo #{p.id}</h1>

      <ul className="space-y-1 text-sm">
        <li>
          <b>Estado:</b> {p.estado}
        </li>
        <li>
          <b>Fecha préstamo:</b> {fechaPrestamo}
        </li>
        <li>
          <b>Fecha devolución:</b> {fechaDevolucion}
        </li>
        <li>
          <b>Item:</b> {p.item}
        </li>
        <li>
          <b>Tipo:</b> {p.tipo_item}
        </li>

        {p.tipo_item === 'Libro' && (
          <>
            <li>
              <b>Libro:</b> {p.libro}
            </li>
            <li>
              <b>Autor:</b> {p.autor_libro}
            </li>
            <li>
              <b>Año publicación:</b> {p.año_publicacion}
            </li>
          </>
        )}

        {p.tipo_item === 'Dispositivo' && (
          <li>
            <b>Dispositivo:</b> {p.dispositivo}
          </li>
        )}

        <li>
          <b>Estudiante:</b> {p.estudiante} ({p.carnet})
        </li>
      </ul>

      <div className="mt-6 space-x-3">
        <Link
          href={`/crud/prestamos/${p.id}/edit`}
          className="rounded bg-green-600 px-4 py-2 text-white hover:bg-green-700"
        >
          Editar
        </Link>
        <Link
          href="/crud/prestamos"
          className="rounded bg-gray-300 px-4 py-2 hover:bg-gray-400"
        >
          Volver
        </Link>
      </div>
    </div>
  );
}
