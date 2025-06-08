'use client';
import React, { useState, useMemo } from 'react';
import { PrestamoView } from '@/components/crud/prestamos/PrestamosTable';
import {
  Filter,
  Download,
  RefreshCw,
  Calendar,
  User,
  Book,
  Monitor,
} from 'lucide-react';

interface Props {
  data: PrestamoView[];
}

interface Filtros {
  estado: string;
  tipoItem: string;
  fechaDesde: string;
  fechaHasta: string;
  estudiante: string;
  carnet: string;
}

export default function ReportesView({ data }: Props) {
  const [filtros, setFiltros] = useState<Filtros>({
    estado: '',
    tipoItem: '',
    fechaDesde: '',
    fechaHasta: '',
    estudiante: '',
    carnet: '',
  });

  const [mostrarFiltros, setMostrarFiltros] = useState(true);

  // Datos filtrados
  const datosFiltrados = useMemo(() => {
    return data.filter((prestamo) => {
      // Filtro por estado
      if (filtros.estado && prestamo.estado !== filtros.estado) return false;

      // Filtro por tipo de item
      if (filtros.tipoItem && prestamo.tipo_item !== filtros.tipoItem)
        return false;

      // Filtro por fecha desde
      if (filtros.fechaDesde && prestamo.fecha_prestamo < filtros.fechaDesde)
        return false;

      // Filtro por fecha hasta
      if (filtros.fechaHasta && prestamo.fecha_prestamo > filtros.fechaHasta)
        return false;

      // Filtro por estudiante
      if (
        filtros.estudiante &&
        !prestamo.estudiante
          .toLowerCase()
          .includes(filtros.estudiante.toLowerCase())
      )
        return false;

      // Filtro por carnet
      if (
        filtros.carnet &&
        !prestamo.carnet.toLowerCase().includes(filtros.carnet.toLowerCase())
      )
        return false;

      return true;
    });
  }, [data, filtros]);

  // Estadísticas
  const estadisticas = useMemo(() => {
    const total = datosFiltrados.length;
    const activos = datosFiltrados.filter((p) => p.estado === 'ACTIVO').length;
    const devueltos = datosFiltrados.filter(
      (p) => p.estado === 'DEVUELTO',
    ).length;
    const vencidos = datosFiltrados.filter(
      (p) => p.estado === 'VENCIDO',
    ).length;
    const perdidos = datosFiltrados.filter(
      (p) => p.estado === 'PERDIDO',
    ).length;

    const porTipo = {
      libros: datosFiltrados.filter((p) => p.tipo_item === 'Libro').length,
      dispositivos: datosFiltrados.filter((p) => p.tipo_item === 'Dispositivo')
        .length,
      otros: datosFiltrados.filter((p) => p.tipo_item === 'Otro').length,
    };

    return { total, activos, devueltos, vencidos, perdidos, porTipo };
  }, [datosFiltrados]);

  const limpiarFiltros = () => {
    setFiltros({
      estado: '',
      tipoItem: '',
      fechaDesde: '',
      fechaHasta: '',
      estudiante: '',
      carnet: '',
    });
  };

  const descargarCSV = () => {
    const encabezados = [
      'ID',
      'Estado',
      'Fecha Préstamo',
      'Fecha Devolución',
      'Item',
      'Tipo Item',
      'Libro',
      'Autor',
      'Dispositivo',
      'Estudiante',
      'Carnet',
    ];

    const csvContent = [
      encabezados.join(','),
      ...datosFiltrados.map((prestamo) =>
        [
          prestamo.id,
          prestamo.estado,
          prestamo.fecha_prestamo,
          prestamo.fecha_devolucion || '',
          `"${prestamo.item}"`,
          prestamo.tipo_item,
          `"${prestamo.libro || ''}"`,
          `"${prestamo.autor_libro || ''}"`,
          `"${prestamo.dispositivo || ''}"`,
          `"${prestamo.estudiante}"`,
          prestamo.carnet,
        ].join(','),
      ),
    ].join('\n');

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);

    const fechaActual = new Date().toISOString().slice(0, 10);
    link.setAttribute('download', `reporte_prestamos_${fechaActual}.csv`);

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
            {/* Filtro por Estado */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Estado
              </label>
              <select
                value={filtros.estado}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, estado: e.target.value }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todos los estados</option>
                <option value="ACTIVO">Activo</option>
                <option value="DEVUELTO">Devuelto</option>
                <option value="VENCIDO">Vencido</option>
                <option value="PERDIDO">Perdido</option>
              </select>
            </div>

            {/* Filtro por Tipo de Item */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Tipo de Item
              </label>
              <select
                value={filtros.tipoItem}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, tipoItem: e.target.value }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todos los tipos</option>
                <option value="Libro">Libro</option>
                <option value="Dispositivo">Dispositivo</option>
                <option value="Otro">Otro</option>
              </select>
            </div>

            {/* Filtro por Fecha Desde */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Fecha Desde
              </label>
              <input
                type="date"
                value={filtros.fechaDesde}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    fechaDesde: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Fecha Hasta */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Fecha Hasta
              </label>
              <input
                type="date"
                value={filtros.fechaHasta}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    fechaHasta: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Estudiante */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Estudiante
              </label>
              <input
                type="text"
                placeholder="Buscar por nombre..."
                value={filtros.estudiante}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    estudiante: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Carnet */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Carnet
              </label>
              <input
                type="text"
                placeholder="Buscar por carnet..."
                value={filtros.carnet}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, carnet: e.target.value }))
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

      {/* Estadísticas */}
      <div className="grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-4">
        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-blue-100 p-2">
              <Calendar className="h-6 w-6 text-blue-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Total</p>
              <p className="text-2xl font-semibold text-gray-900">
                {estadisticas.total}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-green-100 p-2">
              <User className="h-6 w-6 text-green-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Activos</p>
              <p className="text-2xl font-semibold text-green-600">
                {estadisticas.activos}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-orange-100 p-2">
              <Book className="h-6 w-6 text-orange-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Libros</p>
              <p className="text-2xl font-semibold text-orange-600">
                {estadisticas.porTipo.libros}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-purple-100 p-2">
              <Monitor className="h-6 w-6 text-purple-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Dispositivos</p>
              <p className="text-2xl font-semibold text-purple-600">
                {estadisticas.porTipo.dispositivos}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Estados Detallados */}
      <div className="rounded-lg bg-white p-6 shadow">
        <h3 className="mb-4 text-lg font-semibold text-gray-800">
          Distribución por Estado
        </h3>
        <div className="grid grid-cols-2 gap-4 md:grid-cols-4">
          <div className="text-center">
            <p className="text-2xl font-bold text-green-600">
              {estadisticas.activos}
            </p>
            <p className="text-sm text-gray-600">Activos</p>
          </div>
          <div className="text-center">
            <p className="text-2xl font-bold text-blue-600">
              {estadisticas.devueltos}
            </p>
            <p className="text-sm text-gray-600">Devueltos</p>
          </div>
          <div className="text-center">
            <p className="text-2xl font-bold text-yellow-600">
              {estadisticas.vencidos}
            </p>
            <p className="text-sm text-gray-600">Vencidos</p>
          </div>
          <div className="text-center">
            <p className="text-2xl font-bold text-red-600">
              {estadisticas.perdidos}
            </p>
            <p className="text-sm text-gray-600">Perdidos</p>
          </div>
        </div>
      </div>

      {/* Tabla de Resultados */}
      <div className="overflow-hidden rounded-lg bg-white shadow">
        <div className="border-b border-gray-200 px-6 py-4">
          <h3 className="text-lg font-semibold text-gray-800">
            Resultados ({datosFiltrados.length} registros)
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
                  Estado
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  F. Préstamo
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  F. Devolución
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Item
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Tipo
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Estudiante
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Carnet
                </th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-200 bg-white">
              {datosFiltrados.map((prestamo) => (
                <tr key={prestamo.id} className="hover:bg-gray-50">
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.id}
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span
                      className={`inline-flex rounded-full px-2 py-1 text-xs font-semibold ${
                        prestamo.estado === 'ACTIVO'
                          ? 'bg-green-100 text-green-800'
                          : prestamo.estado === 'DEVUELTO'
                            ? 'bg-blue-100 text-blue-800'
                            : prestamo.estado === 'VENCIDO'
                              ? 'bg-yellow-100 text-yellow-800'
                              : 'bg-red-100 text-red-800'
                      }`}
                    >
                      {prestamo.estado}
                    </span>
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.fecha_prestamo}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.fecha_devolucion || '—'}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.item}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.tipo_item}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.estudiante}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {prestamo.carnet}
                  </td>
                </tr>
              ))}
              {datosFiltrados.length === 0 && (
                <tr>
                  <td
                    colSpan={8}
                    className="px-6 py-12 text-center text-gray-500"
                  >
                    No se encontraron registros con los filtros aplicados.
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
