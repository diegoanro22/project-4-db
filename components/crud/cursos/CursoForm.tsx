'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Save, ArrowLeft } from 'lucide-react';

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
    <form
      onSubmit={(e) => void handleSubmit(e)}
      className="space-y-6 rounded-lg bg-gray-50 p-6 shadow-md"
    >
      <div className="mb-4 flex items-center">
        <button
          type="button"
          onClick={() => router.push('/crud/cursos')}
          className="flex items-center text-gray-600 hover:text-gray-800"
        >
          <ArrowLeft className="h-5 w-5" />
          <span className="ml-2">Volver</span>
        </button>
      </div>
      <div className="space-y-4">
        <div className="space-y-1">
          <label htmlFor="curso" className="text-sm font-medium text-gray-700">
            Nombre del curso
          </label>
          <input
            id="curso"
            name="curso"
            value={form.curso}
            onChange={handleChange}
            required
            className="w-full rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
            placeholder="Nombre del curso"
          />
        </div>
        <div className="space-y-1">
          <label
            htmlFor="descripcion"
            className="text-sm font-medium text-gray-700"
          >
            Descripción
          </label>
          <textarea
            id="descripcion"
            name="descripcion"
            value={form.descripcion}
            onChange={handleChange}
            required
            className="min-h-[100px] w-full rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
            placeholder="Descripción"
          />
        </div>
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
          <div className="space-y-1">
            <label
              htmlFor="creditos"
              className="text-sm font-medium text-gray-700"
            >
              Créditos
            </label>
            <input
              id="creditos"
              type="number"
              name="creditos"
              min={1}
              value={form.creditos}
              onChange={handleChange}
              required
              className="w-full rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
            />
          </div>
          <div className="space-y-1">
            <label
              htmlFor="categoria"
              className="text-sm font-medium text-gray-700"
            >
              Categoría
            </label>
            <select
              id="categoria"
              name="categoria"
              value={form.categoria}
              onChange={handleChange}
              className="w-full rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
            >
              {['BASICO', 'INTERMEDIO', 'AVANZADO', 'ESPECIALIZADO'].map(
                (c) => (
                  <option key={c} value={c}>
                    {c}
                  </option>
                ),
              )}
            </select>
          </div>
        </div>
        <div className="space-y-1">
          <label htmlFor="precio" className="text-sm font-medium text-gray-700">
            Precio (Q)
          </label>
          <input
            id="precio"
            type="number"
            step="0.01"
            name="precio"
            value={form.precio}
            onChange={handleChange}
            className="w-full rounded-md border-gray-300 p-2 focus:border-blue-500 focus:ring-blue-500"
          />
        </div>
      </div>
      <div className="flex justify-end">
        <button
          type="submit"
          disabled={loading}
          className="inline-flex items-center gap-2"
        >
          <Save className="h-5 w-5" />
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
