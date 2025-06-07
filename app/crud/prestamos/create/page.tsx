import PrestamoForm, {
  SelItem,
  SelStudent,
} from '@/components/crud/prestamos/PrestamoForm';
import { prisma } from '@/lib/prisma';
import { PlusCircle } from 'lucide-react';

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
    <div className="mx-auto my-12 max-w-3xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center">
        <PlusCircle className="h-6 w-6 text-blue-600" />
        <h1 className="ml-3 text-2xl font-semibold text-gray-800">
          Nuevo Préstamo
        </h1>
      </div>
      <PrestamoForm mode="create" items={items} estudiantes={estudiantes} />
    </div>
  );
}
