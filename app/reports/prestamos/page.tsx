import { prisma } from '@/lib/prisma';
import ReportesView from '@/components/reports/prestamos/ReportesView';
import { PrestamoView } from '@/components/crud/prestamos/PrestamosTable';

export default async function ReportesPage() {
  /* 1) Leemos la vista completa */
  const raw = await prisma.vista_prestamos.findMany({
    orderBy: { fecha_prestamo: 'desc' },
  });

  /* 2) Mapeamos a tipo "plano" (sin any) */
  const data: PrestamoView[] = raw.map((r) => ({
    id: r.id,
    estado: r.estado,
    fecha_prestamo: r.fecha_prestamo?.toISOString().slice(0, 10) || '',
    fecha_devolucion: r.fecha_devolucion
      ? r.fecha_devolucion.toISOString().slice(0, 10)
      : null,
    item: r.item || '',
    tipo_item: r.tipo_item as 'Libro' | 'Dispositivo' | 'Otro',
    libro: r.libro || null,
    autor_libro: r.autor_libro || null,
    dispositivo: r.dispositivo || null,
    estudiante: r.estudiante || '',
    carnet: r.carnet || '',
  }));

  return (
    <div className="min-h-screen bg-gray-100 py-10">
      <div className="mx-auto max-w-7xl rounded-lg bg-white p-8 shadow-xl">
        <div className="mb-6">
          <h1 className="text-3xl font-bold text-gray-800">
            Reportes de Préstamos
          </h1>
          <p className="mt-2 text-gray-600">
            Filtra y descarga reportes de los préstamos registrados
          </p>
        </div>

        <ReportesView data={data} />
      </div>
    </div>
  );
}
