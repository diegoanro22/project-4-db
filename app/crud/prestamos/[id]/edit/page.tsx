import PrestamoForm, {
  SelItem,
  SelStudent,
} from '@/components/crud/prestamos/PrestamoForm';
import { prisma } from '@/lib/prisma';
import { notFound } from 'next/navigation';

export default async function EditPrestamo({
  params,
}: {
  params: { id: string };
}) {
  const id = Number(params.id);
  const p = await prisma.prestamos.findUnique({ where: { id } });
  if (!p) return notFound();

  /* items (incluimos el ya asignado) */
  const itemsRaw = await prisma.items.findMany({ orderBy: { item: 'asc' } });
  const items: SelItem[] = itemsRaw.map((i) => ({
    id: i.id,
    label: i.item,
    disponible: i.disponible || i.id === p.item_id,
  }));

  /* estudiantes */
  const stsRaw = await prisma.estudiantes.findMany({
    orderBy: { nombre: 'asc' },
    select: { id: true, nombre: true, apellido: true, carnet: true },
  });
  const estudiantes: SelStudent[] = stsRaw.map((s) => ({
    id: s.id,
    label: `${s.nombre} ${s.apellido} (${s.carnet})`,
  }));

  return (
    <div className="mx-auto my-10 max-w-xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">Editar Préstamo #{id}</h1>
      <PrestamoForm
        mode="edit"
        id={id}
        items={items}
        estudiantes={estudiantes}
        initial={{
          item_id: p.item_id,
          estudiante_id: p.estudiante_id,
          estado: p.estado,
          fecha_prestamo: p.fecha_prestamo.toISOString().slice(0, 10),
          fecha_devolucion: p.fecha_devolucion
            ? p.fecha_devolucion.toISOString().slice(0, 10)
            : '',
        }}
      />
    </div>
  );
}
