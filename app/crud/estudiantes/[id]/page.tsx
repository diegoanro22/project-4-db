// app/crud/estudiantes/[id]/page.tsx
import { prisma } from '@/lib/prisma';
import Link from 'next/link';
import { notFound } from 'next/navigation';

export default async function ShowEstudiante({
  params,
}: {
  params: { id: string };
}) {
  const est = await prisma.vistaEstudiantes.findUnique({
    where: { id: Number(params.id) },
  });
  if (!est) return notFound();

  /* ←── Convertimos Decimal → number o string ──→ */
  const promedio =
    est.promedio_notas !== null ? Number(est.promedio_notas).toFixed(2) : '—';

  return (
    <div className="mx-auto my-10 max-w-3xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">{est.nombre_completo}</h1>
      <ul className="space-y-2">
        <li>
          <b>Carnet:</b> {est.carnet}
        </li>
        <li>
          <b>Email:</b> {est.email}
        </li>
        <li>
          <b>Teléfono:</b> {est.telefono}
        </li>
        <li>
          <b>Matriculado:</b> {est.matriculado ? 'Sí' : 'No'}
        </li>
        <li>
          <b>Beca:</b> {est.beca ?? '—'}
        </li>
        <li>
          <b>Promedio:</b> {promedio}
        </li>
        <li>
          <b>Horas beca restantes:</b> {est.horas_beca_restantes ?? '—'}
        </li>
        <li>
          <b>Cat. / Fac.:</b> {est.carrera} — {est.facultad}
        </li>
        <li>
          <b>Cursos:</b> {Array.isArray(est.cursos) ? est.cursos.length : '—'}
        </li>
        <li>
          <b>Préstamos activos:</b>{' '}
          {Array.isArray(est.prestamos_activos)
            ? est.prestamos_activos.length
            : '—'}
        </li>
      </ul>

      <div className="mt-6 space-x-3">
        <Link
          href={`/crud/estudiantes/${est.id}/edit`}
          className="rounded bg-green-600 px-4 py-2 text-white hover:bg-green-700"
        >
          Editar
        </Link>
        <Link
          href="/crud/estudiantes"
          className="rounded bg-gray-300 px-4 py-2 hover:bg-gray-400"
        >
          Volver
        </Link>
      </div>
    </div>
  );
}
