'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';

type Mode = 'create' | 'edit';

export interface CursoFormProps {
  mode: Mode;
  id?: number; // solo en edit
  initial?: {
    curso: string;
    descripcion: string;
    creditos: number;
    categoria: string;
    precio: number;
  };
}

export default function CursoForm({ mode, id, initial }: CursoFormProps) {
  const router = useRouter();
  const [form, setForm] = useState(
    initial ?? {
      curso: '',
      descripcion: '',
      creditos: 1,
      categoria: 'BASICO',
      precio: 0,
    },
  );
  const [loading, setLoading] = useState(false);

  const handleChange = (
    e: React.ChangeEvent<
      HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement
    >,
  ) => {
    const { name, value } = e.target;
    setForm((f) => ({ ...f, [name]: value }));
  };

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);

    const url =
      mode === 'create' ? '/api/crud/cursos' : `/api/crud/cursos/${id}`;
    const method = mode === 'create' ? 'POST' : 'PUT';

    const res = await fetch(url, {
      method,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        ...form,
        creditos: Number(form.creditos),
        precio: Number(form.precio),
      }),
    });

    if (res.ok) {
      router.push('/crud/cursos');
      router.refresh();
    } else {
      alert('Error al guardar');
    }
    setLoading(false);
  }

  return (
    <form onSubmit={(e) => void handleSubmit(e)} className="space-y-4">
      {/* Nombre */}
      <div className="space-y-1">
        <label className="font-medium">Nombre del curso</label>
        <input
          name="curso"
          value={form.curso}
          onChange={handleChange}
          required
          className="w-full rounded border p-2"
          placeholder="Nombre del curso"
        />
      </div>

      {/* Descripción */}
      <div className="space-y-1">
        <label className="font-medium">Descripción</label>
        <textarea
          name="descripcion"
          value={form.descripcion}
          onChange={handleChange}
          required
          className="min-h-[80px] w-full rounded border p-2"
          placeholder="Descripción"
        />
      </div>

      {/* Créditos y Categoría en dos columnas */}
      <div className="grid grid-cols-2 gap-4">
        <div className="space-y-1">
          <label className="font-medium">Créditos</label>
          <input
            type="number"
            name="creditos"
            min={1}
            value={form.creditos}
            onChange={handleChange}
            required
            className="w-full rounded border p-2"
          />
        </div>

        <div className="space-y-1">
          <label className="font-medium">Categoría</label>
          <select
            name="categoria"
            value={form.categoria}
            onChange={handleChange}
            className="w-full rounded border p-2"
          >
            {['BASICO', 'INTERMEDIO', 'AVANZADO', 'ESPECIALIZADO'].map((c) => (
              <option key={c} value={c}>
                {c}
              </option>
            ))}
          </select>
        </div>
      </div>

      {/* Precio */}
      <div className="space-y-1">
        <label className="font-medium">Precio (Q)</label>
        <input
          type="number"
          step="0.01"
          name="precio"
          value={form.precio}
          onChange={handleChange}
          className="w-full rounded border p-2"
        />
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
