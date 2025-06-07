'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';

export interface CatalogoItem {
  id: number;
  nombre: string;
}
export interface EstudianteFormProps {
  mode: 'create' | 'edit';
  id?: number;
  carreras: CatalogoItem[];
  becas: CatalogoItem[];
  initial?: {
    carnet: string;
    nombre: string;
    apellido: string;
    email: string;
    telefono: string;
    fecha_nacimiento: string;
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
    const { name, value, type, checked } = e.target as HTMLInputElement;
    setForm((f) => ({ ...f, [name]: type === 'checkbox' ? checked : value }));
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
    } else alert('Error al guardar');
    setLoading(false);
  }

  return (
    <form
      onSubmit={(e) => void handleSubmit(e)}
      className="space-y-6 rounded-lg bg-gray-50 p-6 shadow-md"
    >
      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        {[
          { name: 'carnet', label: 'Carnet', type: 'text' },
          { name: 'nombre', label: 'Nombre', type: 'text' },
          { name: 'apellido', label: 'Apellido', type: 'text' },
          { name: 'email', label: 'Email', type: 'email' },
          { name: 'telefono', label: 'Teléfono', type: 'text' },
          {
            name: 'fecha_nacimiento',
            label: 'Fecha de Nacimiento',
            type: 'date',
          },
        ].map((field) => (
          <div key={field.name} className="flex flex-col">
            <label
              htmlFor={field.name}
              className="mb-1 text-sm font-medium text-gray-700"
            >
              {field.label}
            </label>
            <input
              id={field.name}
              name={field.name}
              type={field.type}
              value={form[field.name as keyof typeof form] as string}
              onChange={handleChange}
              required={['carnet', 'nombre', 'apellido', 'email'].includes(
                field.name,
              )}
              className="rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
            />
          </div>
        ))}
      </div>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div className="flex flex-col">
          <label
            htmlFor="carrera_id"
            className="mb-1 text-sm font-medium text-gray-700"
          >
            Carrera
          </label>
          <select
            id="carrera_id"
            name="carrera_id"
            value={form.carrera_id}
            onChange={handleChange}
            className="rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
          >
            {carreras.map((c) => (
              <option key={c.id} value={c.id}>
                {c.nombre}
              </option>
            ))}
          </select>
        </div>
        <div className="flex flex-col">
          <label
            htmlFor="beca_id"
            className="mb-1 text-sm font-medium text-gray-700"
          >
            Beca
          </label>
          <select
            id="beca_id"
            name="beca_id"
            value={form.beca_id ?? ''}
            onChange={handleChange}
            className="rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
          >
            <option value="">Sin beca</option>
            {becas.map((b) => (
              <option key={b.id} value={b.id}>
                {b.nombre}
              </option>
            ))}
          </select>
        </div>
        <div className="flex items-center space-x-2">
          <input
            id="matriculado"
            name="matriculado"
            type="checkbox"
            checked={form.matriculado}
            onChange={handleChange}
            className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500"
          />
          <label htmlFor="matriculado" className="text-sm text-gray-700">
            Matriculado
          </label>
        </div>
        <div className="flex flex-col">
          <label
            htmlFor="horas_beca_restantes"
            className="mb-1 text-sm font-medium text-gray-700"
          >
            Horas de Beca
          </label>
          <input
            id="horas_beca_restantes"
            name="horas_beca_restantes"
            type="number"
            value={form.horas_beca_restantes}
            onChange={handleChange}
            min={0}
            className="rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
          />
        </div>
      </div>

      <div className="flex justify-end">
        <button
          type="submit"
          disabled={loading}
          className="rounded-md bg-blue-600 px-6 py-2 text-white hover:bg-blue-700 disabled:opacity-50"
        >
          {loading
            ? 'Guardando...'
            : mode === 'create'
              ? 'Crear'
              : 'Actualizar'}
        </button>
      </div>
    </form>
  );
}
