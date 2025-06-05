import PrestamoForm, {
  SelItem,
  SelStudent,
} from '@/components/crud/prestamos/PrestamoForm';
import { prisma } from '@/lib/prisma';

export default async function CreatePrestamo() {
  /* items disponibles */
  const itemsRaw = await prisma.items.findMany({ orderBy: { item: 'asc' } });
  const items: SelItem[] = itemsRaw.map((i) => ({
    id: i.id,
    label: i.item,
    disponible: i.disponible,
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
      <h1 className="mb-4 text-2xl font-bold">Nuevo Préstamo</h1>
      <PrestamoForm mode="create" items={items} estudiantes={estudiantes} />
    </div>
  );
}
