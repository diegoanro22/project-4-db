'use client';
import React, { useState, useMemo } from 'react';
import { CursoView } from '@/components/crud/cursos/CursosTable';
import {
  Filter,
  Download,
  RefreshCw,
  BookOpen,
  Users,
  GraduationCap,
  DollarSign,
} from 'lucide-react';

interface Props {
  data: CursoView[];
}

interface Filtros {
  categoria: string;
  creditosMin: string;
  creditosMax: string;
  precioMin: string;
  precioMax: string;
  curso: string;
  conSecciones: string;
  capacidadMin: string;
  capacidadMax: string;
}

export default function ReportesCursosView({ data }: Props) {
  const [filtros, setFiltros] = useState<Filtros>({
    categoria: '',
    creditosMin: '',
    creditosMax: '',
    precioMin: '',
    precioMax: '',
    curso: '',
    conSecciones: '',
    capacidadMin: '',
    capacidadMax: '',
  });

  const [mostrarFiltros, setMostrarFiltros] = useState(true);

  // Obtener valores únicos para los selectores
  const valoresUnicos = useMemo(() => {
    const categorias = [
      ...new Set(data.map((c) => c.categoria).filter(Boolean)),
    ].sort();

    return { categorias };
  }, [data]);

  // Datos filtrados
  const datosFiltrados = useMemo(() => {
    return data.filter((curso) => {
      // Filtro por categoría
      if (filtros.categoria && curso.categoria !== filtros.categoria)
        return false;

      // Filtro por créditos mínimo
      if (filtros.creditosMin && curso.creditos < parseInt(filtros.creditosMin))
        return false;

      // Filtro por créditos máximo
      if (filtros.creditosMax && curso.creditos > parseInt(filtros.creditosMax))
        return false;

      // Filtro por precio mínimo
      if (filtros.precioMin && curso.precio < parseFloat(filtros.precioMin))
        return false;

      // Filtro por precio máximo
      if (filtros.precioMax && curso.precio > parseFloat(filtros.precioMax))
        return false;

      // Filtro por nombre del curso
      if (
        filtros.curso &&
        !curso.curso.toLowerCase().includes(filtros.curso.toLowerCase())
      )
        return false;

      // Filtro por secciones
      if (filtros.conSecciones !== '') {
        const tieneSecciones =
          Array.isArray(curso.secciones) && curso.secciones.length > 0;
        const filtroTieneSecciones = filtros.conSecciones === 'true';
        if (tieneSecciones !== filtroTieneSecciones) return false;
      }

      // Filtro por capacidad total mínima
      if (filtros.capacidadMin && Array.isArray(curso.secciones)) {
        const capacidadTotal = curso.secciones.reduce(
          (total, seccion) => total + seccion.capacidad,
          0,
        );
        if (capacidadTotal < parseInt(filtros.capacidadMin)) return false;
      }

      // Filtro por capacidad total máxima
      if (filtros.capacidadMax && Array.isArray(curso.secciones)) {
        const capacidadTotal = curso.secciones.reduce(
          (total, seccion) => total + seccion.capacidad,
          0,
        );
        if (capacidadTotal > parseInt(filtros.capacidadMax)) return false;
      }

      return true;
    });
  }, [data, filtros]);

  // Estadísticas
  const estadisticas = useMemo(() => {
    const total = datosFiltrados.length;
    const conSecciones = datosFiltrados.filter(
      (c) => Array.isArray(c.secciones) && c.secciones.length > 0,
    ).length;
    const sinSecciones = total - conSecciones;

    const totalSecciones = datosFiltrados.reduce(
      (acc, c) => acc + (Array.isArray(c.secciones) ? c.secciones.length : 0),
      0,
    );

    const promedioCreditos =
      datosFiltrados.reduce((acc, c) => acc + c.creditos, 0) / total || 0;

    const promedioPrecio =
      datosFiltrados.reduce((acc, c) => acc + c.precio, 0) / total || 0;

    const capacidadTotal = datosFiltrados.reduce((acc, c) => {
      if (Array.isArray(c.secciones)) {
        return (
          acc + c.secciones.reduce((secAcc, sec) => secAcc + sec.capacidad, 0)
        );
      }
      return acc;
    }, 0);

    const estudiantesInscritos = datosFiltrados.reduce((acc, c) => {
      if (Array.isArray(c.secciones)) {
        return (
          acc +
          c.secciones.reduce(
            (secAcc, sec) => secAcc + sec.estudiantes_inscritos,
            0,
          )
        );
      }
      return acc;
    }, 0);

    const porCategoria = valoresUnicos.categorias.map((categoria) => ({
      nombre: categoria,
      cantidad: datosFiltrados.filter((c) => c.categoria === categoria).length,
    }));

    const cursosPopulares = datosFiltrados
      .map((curso) => ({
        nombre: curso.curso,
        estudiantes: Array.isArray(curso.secciones)
          ? curso.secciones.reduce(
              (acc, sec) => acc + sec.estudiantes_inscritos,
              0,
            )
          : 0,
      }))
      .sort((a, b) => b.estudiantes - a.estudiantes);

    return {
      total,
      conSecciones,
      sinSecciones,
      totalSecciones,
      promedioCreditos,
      promedioPrecio,
      capacidadTotal,
      estudiantesInscritos,
      porCategoria,
      cursosPopulares,
    };
  }, [datosFiltrados, valoresUnicos]);

  const limpiarFiltros = () => {
    setFiltros({
      categoria: '',
      creditosMin: '',
      creditosMax: '',
      precioMin: '',
      precioMax: '',
      curso: '',
      conSecciones: '',
      capacidadMin: '',
      capacidadMax: '',
    });
  };

  const descargarCSV = () => {
    const encabezados = [
      'ID',
      'Curso',
      'Descripción',
      'Créditos',
      'Categoría',
      'Precio',
      'Número de Secciones',
      'Capacidad Total',
      'Estudiantes Inscritos',
      'Disponibilidad',
    ];

    const csvContent = [
      encabezados.join(','),
      ...datosFiltrados.map((curso) => {
        const capacidadTotal = Array.isArray(curso.secciones)
          ? curso.secciones.reduce((acc, sec) => acc + sec.capacidad, 0)
          : 0;
        const estudiantesInscritos = Array.isArray(curso.secciones)
          ? curso.secciones.reduce(
              (acc, sec) => acc + sec.estudiantes_inscritos,
              0,
            )
          : 0;
        const disponibilidad = capacidadTotal - estudiantesInscritos;

        return [
          curso.id,
          `"${curso.curso}"`,
          `"${curso.descripcion}"`,
          curso.creditos,
          `"${curso.categoria}"`,
          curso.precio.toFixed(2),
          Array.isArray(curso.secciones) ? curso.secciones.length : 0,
          capacidadTotal,
          estudiantesInscritos,
          disponibilidad,
        ].join(',');
      }),
    ].join('\n');

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);

    const fechaActual = new Date().toISOString().slice(0, 10);
    link.setAttribute('download', `reporte_cursos_${fechaActual}.csv`);

    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className="space-y-6">
      {/* Panel de Filtros */}
      <div className="rounded-lg bg-gray-50 p-6">
        <div className="mb-4 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <Filter className="h-5 w-5 text-gray-600" />
            <h2 className="text-lg font-semibold text-gray-800">Filtros</h2>
          </div>
          <button
            onClick={() => setMostrarFiltros(!mostrarFiltros)}
            className="text-sm text-blue-600 hover:text-blue-800"
          >
            {mostrarFiltros ? 'Ocultar' : 'Mostrar'}
          </button>
        </div>

        {mostrarFiltros && (
          <div className="grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3">
            {/* Filtro por Categoría */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Categoría
              </label>
              <select
                value={filtros.categoria}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    categoria: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todas las categorías</option>
                {valoresUnicos.categorias.map((categoria) => (
                  <option key={categoria} value={categoria}>
                    {categoria}
                  </option>
                ))}
              </select>
            </div>

            {/* Filtro por Nombre del Curso */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Nombre del Curso
              </label>
              <input
                type="text"
                placeholder="Buscar por nombre..."
                value={filtros.curso}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, curso: e.target.value }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Secciones */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Estado de Secciones
              </label>
              <select
                value={filtros.conSecciones}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    conSecciones: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="true">Con secciones</option>
                <option value="false">Sin secciones</option>
              </select>
            </div>

            {/* Filtro por Créditos Mínimo */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Créditos Mínimo
              </label>
              <input
                type="number"
                min="0"
                placeholder="0"
                value={filtros.creditosMin}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    creditosMin: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Créditos Máximo */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Créditos Máximo
              </label>
              <input
                type="number"
                min="0"
                placeholder="10"
                value={filtros.creditosMax}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    creditosMax: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Precio Mínimo */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Precio Mínimo (Q)
              </label>
              <input
                type="number"
                min="0"
                step="0.01"
                placeholder="0.00"
                value={filtros.precioMin}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    precioMin: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Precio Máximo */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Precio Máximo (Q)
              </label>
              <input
                type="number"
                min="0"
                step="0.01"
                placeholder="10000.00"
                value={filtros.precioMax}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    precioMax: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Capacidad Mínima */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Capacidad Total Mínima
              </label>
              <input
                type="number"
                min="0"
                placeholder="0"
                value={filtros.capacidadMin}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    capacidadMin: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Capacidad Máxima */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Capacidad Total Máxima
              </label>
              <input
                type="number"
                min="0"
                placeholder="1000"
                value={filtros.capacidadMax}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    capacidadMax: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>
          </div>
        )}

        {/* Botones de Acción */}
        <div className="mt-4 flex gap-3">
          <button
            onClick={limpiarFiltros}
            className="inline-flex items-center gap-2 rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50 focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 focus:outline-none"
          >
            <RefreshCw className="h-4 w-4" />
            Limpiar Filtros
          </button>

          <button
            onClick={descargarCSV}
            className="inline-flex items-center gap-2 rounded-md border border-transparent bg-green-600 px-4 py-2 text-sm font-medium text-white hover:bg-green-700 focus:ring-2 focus:ring-green-500 focus:ring-offset-2 focus:outline-none"
          >
            <Download className="h-4 w-4" />
            Descargar CSV ({datosFiltrados.length} registros)
          </button>
        </div>
      </div>

      {/* Estadísticas Principales */}
      <div className="grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-4">
        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-blue-100 p-2">
              <BookOpen className="h-6 w-6 text-blue-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Total Cursos</p>
              <p className="text-2xl font-semibold text-gray-900">
                {estadisticas.total}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-green-100 p-2">
              <Users className="h-6 w-6 text-green-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Con Secciones</p>
              <p className="text-2xl font-semibold text-green-600">
                {estadisticas.conSecciones}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-yellow-100 p-2">
              <GraduationCap className="h-6 w-6 text-yellow-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">
                Total Secciones
              </p>
              <p className="text-2xl font-semibold text-yellow-600">
                {estadisticas.totalSecciones}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-purple-100 p-2">
              <DollarSign className="h-6 w-6 text-purple-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">
                Precio Promedio
              </p>
              <p className="text-2xl font-semibold text-purple-600">
                Q {estadisticas.promedioPrecio.toFixed(2)}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Estadísticas Detalladas */}
      <div className="grid grid-cols-1 gap-6 lg:grid-cols-2">
        {/* Distribución por Categoría */}
        <div className="rounded-lg bg-white p-6 shadow">
          <h3 className="mb-4 text-lg font-semibold text-gray-800">
            Distribución por Categoría
          </h3>
          <div className="space-y-2">
            {estadisticas.porCategoria.map((categoria) => (
              <div
                key={categoria.nombre}
                className="flex items-center justify-between rounded bg-gray-50 p-2"
              >
                <span className="text-sm font-medium text-gray-700">
                  {categoria.nombre}
                </span>
                <span className="text-sm font-bold text-blue-600">
                  {categoria.cantidad}
                </span>
              </div>
            ))}
          </div>
        </div>

        {/* Capacidad y Ocupación */}
        <div className="rounded-lg bg-white p-6 shadow">
          <h3 className="mb-4 text-lg font-semibold text-gray-800">
            Capacidad y Ocupación
          </h3>
          <div className="grid grid-cols-2 gap-4">
            <div className="text-center">
              <p className="text-2xl font-bold text-blue-600">
                {estadisticas.capacidadTotal}
              </p>
              <p className="text-sm text-gray-600">Capacidad Total</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold text-green-600">
                {estadisticas.estudiantesInscritos}
              </p>
              <p className="text-sm text-gray-600">Estudiantes Inscritos</p>
            </div>
          </div>
          <div className="mt-4">
            <div className="mb-1 flex justify-between text-sm text-gray-600">
              <span>Ocupación</span>
              <span>
                {estadisticas.capacidadTotal > 0
                  ? (
                      (estadisticas.estudiantesInscritos /
                        estadisticas.capacidadTotal) *
                      100
                    ).toFixed(1)
                  : 0}
                %
              </span>
            </div>
            <div className="h-2 w-full rounded-full bg-gray-200">
              <div
                className="h-2 rounded-full bg-blue-600"
                style={{
                  width: `${
                    estadisticas.capacidadTotal > 0
                      ? (estadisticas.estudiantesInscritos /
                          estadisticas.capacidadTotal) *
                        100
                      : 0
                  }%`,
                }}
              ></div>
            </div>
          </div>
        </div>
      </div>

      {/* Cursos Más Populares */}
      <div className="rounded-lg bg-white p-6 shadow">
        <h3 className="mb-4 text-lg font-semibold text-gray-800">
          Cursos Más Populares (Top 10)
        </h3>
        <div className="space-y-2">
          {estadisticas.cursosPopulares.slice(0, 10).map((curso, index) => (
            <div
              key={curso.nombre}
              className="flex items-center justify-between rounded bg-gray-50 p-2"
            >
              <span className="text-sm font-medium text-gray-700">
                {index + 1}. {curso.nombre}
              </span>
              <span className="text-sm font-bold text-blue-600">
                {curso.estudiantes} estudiantes
              </span>
            </div>
          ))}
        </div>
      </div>

      {/* Tabla de Resultados */}
      <div className="overflow-hidden rounded-lg bg-white shadow">
        <div className="border-b border-gray-200 px-6 py-4">
          <h3 className="text-lg font-semibold text-gray-800">
            Resultados ({datosFiltrados.length} cursos)
            <span className="ml-4 text-sm text-gray-600">
              Promedio de Créditos: {estadisticas.promedioCreditos.toFixed(1)}
            </span>
          </h3>
        </div>

        <div className="overflow-x-auto">
          <table className="min-w-full divide-y divide-gray-200">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  ID
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Curso
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Créditos
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Categoría
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Precio
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Secciones
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Capacidad
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Inscritos
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Disponible
                </th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-200 bg-white">
              {datosFiltrados.map((curso) => {
                const capacidadTotal = Array.isArray(curso.secciones)
                  ? curso.secciones.reduce((acc, sec) => acc + sec.capacidad, 0)
                  : 0;
                const estudiantesInscritos = Array.isArray(curso.secciones)
                  ? curso.secciones.reduce(
                      (acc, sec) => acc + sec.estudiantes_inscritos,
                      0,
                    )
                  : 0;
                const disponible = capacidadTotal - estudiantesInscritos;

                return (
                  <tr key={curso.id} className="hover:bg-gray-50">
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      {curso.id}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      {curso.curso}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      {curso.creditos}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      <span className="inline-flex rounded-full bg-blue-100 px-2 py-1 text-xs font-semibold text-blue-800">
                        {curso.categoria}
                      </span>
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      Q {curso.precio.toFixed(2)}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      {Array.isArray(curso.secciones)
                        ? curso.secciones.length
                        : 0}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      {capacidadTotal}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                      {estudiantesInscritos}
                    </td>
                    <td className="px-6 py-4 text-sm whitespace-nowrap">
                      <span
                        className={`inline-flex rounded-full px-2 py-1 text-xs font-semibold ${
                          disponible > 0
                            ? 'bg-green-100 text-green-800'
                            : disponible === 0
                              ? 'bg-yellow-100 text-yellow-800'
                              : 'bg-red-100 text-red-800'
                        }`}
                      >
                        {disponible}
                      </span>
                    </td>
                  </tr>
                );
              })}
              {datosFiltrados.length === 0 && (
                <tr>
                  <td
                    colSpan={9}
                    className="px-6 py-12 text-center text-gray-500"
                  >
                    No se encontraron cursos con los filtros aplicados.
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
