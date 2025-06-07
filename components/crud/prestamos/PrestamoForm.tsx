'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';

/* --- catálogos que enviamos desde la page server --- */
export interface SelItem {
  id: number;
  label: string;
  disponible: boolean;
}
export interface SelStudent {
  id: number;
  label: string;
}

type Mode = 'create' | 'edit';

export interface PrestamoFormProps {
  mode: Mode;
  id?: number; // sólo en edit
  items: SelItem[];
  estudiantes: SelStudent[];
  initial?: {
    item_id: number;
    estudiante_id: number;
    estado: 'ACTIVO' | 'DEVUELTO' | 'VENCIDO' | 'PERDIDO';
    fecha_prestamo: string; // YYYY-MM-DD
    fecha_devolucion: string | null;
  };
}

export default function PrestamoForm({
  mode,
  id,
  items,
  estudiantes,
  initial,
}: PrestamoFormProps) {
  const router = useRouter();
  const firstItem = items.find((i) => i.disponible) ?? items[0];

  const firstStudent = estudiantes[0];

  const [form, setForm] = useState(
    initial ?? {
      item_id: firstItem?.id ?? 0,
      estudiante_id: firstStudent?.id ?? 0,
      estado: 'ACTIVO' as const,
      fecha_prestamo: new Date().toISOString().slice(0, 10),
      fecha_devolucion: '',
    },
  );
  const [loading, setLoading] = useState(false);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>,
  ) => {
    const { name, value } = e.target;
    setForm((f) => ({ ...f, [name]: value }));
  };

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);
    const url =
      mode === 'create' ? '/api/crud/prestamos' : `/api/crud/prestamos/${id}`;
    const method = mode === 'create' ? 'POST' : 'PUT';

    const body = {
      ...form,
      item_id: Number(form.item_id),
      estudiante_id: Number(form.estudiante_id),
      fecha_prestamo: form.fecha_prestamo.trim() || null,
      fecha_devolucion: form.fecha_devolucion?.trim() || null,
    };

    const res = await fetch(url, {
      method,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    });
    if (!res.ok) {
      const payload = await res.json().catch(() => ({}));
      alert(`Error al guardar: ${payload.error ?? res.statusText}`);
      setLoading(false);
      return;
    }

    router.push('/crud/prestamos');
    router.refresh();
    setLoading(false);
  }

  return (
    <form onSubmit={(e) => void handleSubmit(e)} className="space-y-4">
      {/* Item */}
      <div className="space-y-1">
        <label className="font-medium">Item</label>
        <select
          name="item_id"
          value={form.item_id}
          onChange={handleChange}
          className="w-full rounded border p-2"
        >
          {items.map((it) => (
            <option
              key={it.id}
              value={it.id}
              disabled={!it.disponible && mode === 'create'}
            >
              {it.label}
              {!it.disponible && mode === 'create' ? ' (ocupado)' : ''}
            </option>
          ))}
        </select>
      </div>

      {/* Estudiante */}
      <div className="space-y-1">
        <label className="font-medium">Estudiante</label>
        <select
          name="estudiante_id"
          value={form.estudiante_id}
          onChange={handleChange}
          className="w-full rounded border p-2"
        >
          {estudiantes.map((s) => (
            <option key={s.id} value={s.id}>
              {s.label}
            </option>
          ))}
        </select>
      </div>

      {/* Estado + fechas */}
      <div className="grid grid-cols-3 gap-4">
        <div className="space-y-1">
          <label className="font-medium">Estado</label>
          <select
            name="estado"
            value={form.estado}
            onChange={handleChange}
            className="w-full rounded border p-2"
          >
            {['ACTIVO', 'DEVUELTO', 'VENCIDO', 'PERDIDO'].map((e) => (
              <option key={e} value={e}>
                {e}
              </option>
            ))}
          </select>
        </div>
        <div className="space-y-1">
          <label className="font-medium">Fecha préstamo</label>
          <input
            type="date"
            name="fecha_prestamo"
            value={form.fecha_prestamo}
            onChange={handleChange}
            className="w-full rounded border p-2"
          />
        </div>
        <div className="space-y-1">
          <label className="font-medium">Fecha devolución</label>
          <input
            type="date"
            name="fecha_devolucion"
            value={form.fecha_devolucion ?? ''}
            onChange={handleChange}
            className="w-full rounded border p-2"
          />
        </div>
      </div>

      <button
        disabled={loading}
        className="rounded bg-blue-600 px-6 py-2 text-white hover:bg-blue-700"
      >
        {loading ? 'Guardando…' : mode === 'create' ? 'Crear' : 'Actualizar'}
      </button>
    </form>
  );
}
