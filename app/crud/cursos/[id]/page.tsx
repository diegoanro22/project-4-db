import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { Prisma } from '@prisma/client';

type Horario = {
  dia: string;
  hora_inicio: string; // ISO «HH:MM:SS»
  hora_fin: string;
};

type SeccionResumen = {
  id: number;
  maestro: string;
  salon: string;
  capacidad: number;
  estudiantes_inscritos: number;
  horario: Horario[];
};

export default async function ShowCurso({
  params,
}: {
  params: { id: string };
}) {
  /* -------- leer la vista ---------- */
  const raw = await prisma.vista_cursos.findUnique({
    where: { id: Number(params.id) },
  });
  if (!raw) return notFound();

  /* -------- transformar -------- */
  const precio = Number((raw.precio as Prisma.Decimal).toString()).toFixed(2);
  const secciones: SeccionResumen[] = Array.isArray(raw.secciones)
    ? (raw.secciones as SeccionResumen[])
    : [];

  /* -------- render -------- */
  return (
    <div className="mx-auto my-10 max-w-4xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">{raw.curso}</h1>
      <p className="mb-4 text-gray-700">{raw.descripcion}</p>

      <ul className="space-y-1 text-sm">
        <li>
          <b>Créditos:</b> {raw.creditos}
        </li>
        <li>
          <b>Categoría:</b> {raw.categoria}
        </li>
        <li>
          <b>Precio:</b> Q&nbsp;{precio}
        </li>
        <li>
          <b>Secciones activas:</b> {secciones.length}
        </li>
      </ul>

      {/* Tabla de secciones */}
      {secciones.length > 0 && (
        <div className="mt-6 overflow-auto">
          <table className="min-w-full border-collapse text-sm">
            <thead>
              <tr className="bg-gray-100">
                <th className="border px-3 py-1">ID</th>
                <th className="border px-3 py-1">Maestro</th>
                <th className="border px-3 py-1">Salón</th>
                <th className="border px-3 py-1">Capacidad</th>
                <th className="border px-3 py-1">Est. inscritos</th>
                <th className="border px-3 py-1">Horarios</th>
              </tr>
            </thead>
            <tbody>
              {secciones.map((s) => (
                <tr key={s.id}>
                  <td className="border px-3 py-1">{s.id}</td>
                  <td className="border px-3 py-1">{s.maestro}</td>
                  <td className="border px-3 py-1">{s.salon}</td>
                  <td className="border px-3 py-1">{s.capacidad}</td>
                  <td className="border px-3 py-1">
                    {s.estudiantes_inscritos}
                  </td>
                  <td className="border px-3 py-1">
                    {s.horario
                      .map(
                        (h) =>
                          `${h.dia}: ${h.hora_inicio.slice(
                            0,
                            5,
                          )}-${h.hora_fin.slice(0, 5)}`,
                      )
                      .join(', ')}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      <div className="mt-6 space-x-3">
        <Link
          href={`/crud/cursos/${raw.id}/edit`}
          className="rounded bg-green-600 px-4 py-2 text-white hover:bg-green-700"
        >
          Editar
        </Link>
        <Link
          href="/crud/cursos"
          className="rounded bg-gray-300 px-4 py-2 hover:bg-gray-400"
        >
          Volver
        </Link>
      </div>
    </div>
  );
}
