'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';

export interface CatalogoItem {
  id: number;
  nombre: string;
}

export interface EstudianteFormProps {
  mode: 'create' | 'edit';
  id?: number; // solo en edit
  carreras: CatalogoItem[];
  becas: CatalogoItem[]; // puede venir vacío
  initial?: {
    carnet: string;
    nombre: string;
    apellido: string;
    email: string;
    telefono: string;
    fecha_nacimiento: string; // YYYY-MM-DD
    carrera_id: number;
    beca_id: number | null;
    matriculado: boolean;
    horas_beca_restantes: number;
  };
}

export default function EstudianteForm({
  mode,
  id,
  carreras,
  becas,
  initial,
}: EstudianteFormProps) {
  const router = useRouter();

  const [form, setForm] = useState(
    initial ?? {
      carnet: '',
      nombre: '',
      apellido: '',
      email: '',
      telefono: '',
      fecha_nacimiento: '',
      carrera_id: carreras[0]?.id ?? 1,
      beca_id: null,
      matriculado: false,
      horas_beca_restantes: 0,
    },
  );
  const [loading, setLoading] = useState(false);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>,
  ) => {
    const target = e.target;
    const name = target.name;
    const value = target.value;

    // si es un input checkbox, tomo .checked, si no tomo .value
    const newValue =
      target instanceof HTMLInputElement && target.type === 'checkbox'
        ? target.checked
        : value;

    setForm((f) => ({
      ...f,
      [name]: newValue,
    }));
  };

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);

    const url =
      mode === 'create'
        ? '/api/crud/estudiantes'
        : `/api/crud/estudiantes/${id}`;
    const method = mode === 'create' ? 'POST' : 'PUT';

    const res = await fetch(url, {
      method,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        ...form,
        carrera_id: Number(form.carrera_id),
        beca_id: form.beca_id ? Number(form.beca_id) : null,
        horas_beca_restantes: Number(form.horas_beca_restantes),
      }),
    });

    if (res.ok) {
      router.push('/crud/estudiantes');
      router.refresh();
    } else {
      alert('Error al guardar');
    }
    setLoading(false);
  }

  return (
    <form className="space-y-4" onSubmit={(e) => void handleSubmit(e)}>
      {/* Grid de 2 columnas */}
      <div className="grid grid-cols-2 gap-4">
        <input
          name="carnet"
          placeholder="Carnet"
          value={form.carnet}
          onChange={handleChange}
          required
          className="rounded border p-2"
        />
        <input
          name="nombre"
          placeholder="Nombre"
          value={form.nombre}
          onChange={handleChange}
          required
          className="rounded border p-2"
        />
        <input
          name="apellido"
          placeholder="Apellido"
          value={form.apellido}
          onChange={handleChange}
          required
          className="rounded border p-2"
        />
        <input
          type="email"
          name="email"
          placeholder="Email"
          value={form.email}
          onChange={handleChange}
          required
          className="rounded border p-2"
        />
        <input
          name="telefono"
          placeholder="Teléfono"
          value={form.telefono}
          onChange={handleChange}
          className="rounded border p-2"
        />
        <input
          type="date"
          name="fecha_nacimiento"
          value={form.fecha_nacimiento}
          onChange={handleChange}
          className="rounded border p-2"
        />

        {/* Select carrera */}
        <select
          name="carrera_id"
          value={form.carrera_id}
          onChange={handleChange}
          className="col-span-2 rounded border p-2"
        >
          {carreras.map((c) => (
            <option key={c.id} value={c.id}>
              {c.nombre}
            </option>
          ))}
        </select>

        {/* Select beca */}
        <select
          name="beca_id"
          value={form.beca_id ?? ''}
          onChange={handleChange}
          className="col-span-2 rounded border p-2"
        >
          <option value="">Sin beca</option>
          {becas.map((b) => (
            <option key={b.id} value={b.id}>
              {b.nombre}
            </option>
          ))}
        </select>

        {/* Matriculado + Horas beca */}
        <label className="flex items-center space-x-2">
          <input
            type="checkbox"
            name="matriculado"
            checked={form.matriculado}
            onChange={handleChange}
          />
          <span>Matriculado</span>
        </label>
      </div>

      <button
        type="submit"
        disabled={loading}
        className="rounded bg-blue-600 px-6 py-2 text-white hover:bg-blue-700"
      >
        {loading ? 'Guardando…' : mode === 'create' ? 'Crear' : 'Actualizar'}
      </button>
    </form>
  );
}
