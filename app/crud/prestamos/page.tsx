import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import PrestamosTable, {
  PrestamoView,
} from '@/components/crud/prestamos/PrestamosTable';

export default async function PrestamosIndex() {
  /* 1) Leemos la vista */
  const raw = await prisma.vistaPrestamos.findMany({ orderBy: { id: 'asc' } });

  /* 2) Mapeamos a tipo “plano” (sin any)  */
  const data: PrestamoView[] = raw.map((r) => ({
    id: r.id,
    estado: r.estado,
    fecha_prestamo: r.fecha_prestamo.toISOString().slice(0, 10),
    fecha_devolucion: r.fecha_devolucion
      ? r.fecha_devolucion.toISOString().slice(0, 10)
      : null,
    item: r.item,
    tipo_item: r.tipo_item,
    libro: r.libro,
    autor_libro: r.autor_libro,
    año_publicacion: r.año_publicacion,
    dispositivo: r.dispositivo,
    estudiante: r.estudiante,
    carnet: r.carnet,
  }));

  return (
    <div className="min-h-screen bg-gray-200 py-10">
      <div className="mx-auto max-w-6xl rounded-lg bg-gray-100 p-8 shadow-lg">
        <h1 className="mb-6 text-3xl font-bold">Listado de Préstamos</h1>

        <PrestamosTable data={data} />

        <div className="mt-6">
          <Link
            href="/crud/prestamos/create"
            className="inline-block rounded-lg bg-blue-600 px-6 py-2 text-white hover:bg-blue-700"
          >
            + Nuevo Préstamo
          </Link>
        </div>
      </div>
    </div>
  );
}
