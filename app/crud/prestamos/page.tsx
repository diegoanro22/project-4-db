import Link from 'next/link';
import { prisma } from '@/lib/prisma';
import PrestamosTable, {
  PrestamoView,
} from '@/components/crud/prestamos/PrestamosTable';
import { Plus } from 'lucide-react';

export default async function PrestamosIndex() {
  /* 1) Leemos la vista */
  const raw = await prisma.vista_prestamos.findMany({ orderBy: { id: 'asc' } });

  /* 2) Mapeamos a tipo “plano” (sin any)  */
  const data: PrestamoView[] = raw.map((r) => ({
    id: r.id,
    estado: r.estado,
    fecha_prestamo: r.fecha_prestamo?.toISOString().slice(0, 10),
    fecha_devolucion: r.fecha_devolucion
      ? r.fecha_devolucion.toISOString().slice(0, 10)
      : null,
    item: r.item,
    tipo_item: r.tipo_item,
    libro: r.libro ?? '—',
    autor_libro: r.autor_libro ?? '—',
    dispositivo: r.dispositivo ?? '—',
    estudiante: r.estudiante,
    carnet: r.carnet,
  }));

  return (
    <div className="min-h-screen bg-gray-100 py-10">
      <div className="mx-auto max-w-6xl rounded-lg bg-white p-8 shadow-xl">
        <div className="mb-6 flex items-center justify-between">
          <h1 className="text-3xl font-bold text-gray-800">
            Listado de Préstamos
          </h1>
          <Link
            href="/crud/prestamos/create"
            className="inline-flex items-center gap-2 rounded-lg bg-blue-600 px-5 py-2 text-white hover:bg-blue-700"
          >
            <Plus className="h-5 w-5" />
            <span>Nuevo Préstamo</span>
          </Link>
        </div>

        <PrestamosTable data={data} />
      </div>
    </div>
  );
}
