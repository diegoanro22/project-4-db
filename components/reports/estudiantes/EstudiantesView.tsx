'use client';
import React, { useState, useMemo } from 'react';
import { EstudianteView } from '@/components/crud/estudiantes/EstudiantesTable';
import {
  Filter,
  Download,
  RefreshCw,
  Users,
  GraduationCap,
  Award,
  BookOpen,
} from 'lucide-react';

interface Props {
  data: EstudianteView[];
}

interface Filtros {
  matriculado: string;
  carrera: string;
  facultad: string;
  beca: string;
  nombre: string;
  carnet: string;
  promedioMin: string;
  promedioMax: string;
  conPrestamos: string;
}

export default function ReportesEstudiantesView({ data }: Props) {
  const [filtros, setFiltros] = useState<Filtros>({
    matriculado: '',
    carrera: '',
    facultad: '',
    beca: '',
    nombre: '',
    carnet: '',
    promedioMin: '',
    promedioMax: '',
    conPrestamos: '',
  });

  const [mostrarFiltros, setMostrarFiltros] = useState(true);

  // Obtener valores únicos para los selectores
  const valoresUnicos = useMemo(() => {
    const carreras = [
      ...new Set(data.map((e) => e.carrera).filter(Boolean)),
    ].sort();
    const facultades = [
      ...new Set(data.map((e) => e.facultad).filter(Boolean)),
    ].sort();
    const becas = [...new Set(data.map((e) => e.beca).filter(Boolean))].sort();

    return { carreras, facultades, becas };
  }, [data]);

  // Datos filtrados
  const datosFiltrados = useMemo(() => {
    return data.filter((estudiante) => {
      // Filtro por matriculado
      if (filtros.matriculado !== '') {
        const matriculadoFiltro = filtros.matriculado === 'true';
        if (estudiante.matriculado !== matriculadoFiltro) return false;
      }

      // Filtro por carrera
      if (filtros.carrera && estudiante.carrera !== filtros.carrera)
        return false;

      // Filtro por facultad
      if (filtros.facultad && estudiante.facultad !== filtros.facultad)
        return false;

      // Filtro por beca
      if (filtros.beca !== '') {
        if (filtros.beca === 'SIN_BECA' && estudiante.beca !== null)
          return false;
        if (filtros.beca !== 'SIN_BECA' && estudiante.beca !== filtros.beca)
          return false;
      }

      // Filtro por nombre
      if (
        filtros.nombre &&
        !estudiante.nombre_completo
          .toLowerCase()
          .includes(filtros.nombre.toLowerCase())
      )
        return false;

      // Filtro por carnet
      if (
        filtros.carnet &&
        !estudiante.carnet.toLowerCase().includes(filtros.carnet.toLowerCase())
      )
        return false;

      // Filtro por promedio mínimo
      if (filtros.promedioMin && estudiante.promedio_notas !== null) {
        if (estudiante.promedio_notas < parseFloat(filtros.promedioMin))
          return false;
      }

      // Filtro por promedio máximo
      if (filtros.promedioMax && estudiante.promedio_notas !== null) {
        if (estudiante.promedio_notas > parseFloat(filtros.promedioMax))
          return false;
      }

      // Filtro por préstamos
      if (filtros.conPrestamos !== '') {
        const tienePrestamos = (estudiante.prestamos_activos?.length || 0) > 0;
        const filtroTienePrestamos = filtros.conPrestamos === 'true';
        if (tienePrestamos !== filtroTienePrestamos) return false;
      }

      return true;
    });
  }, [data, filtros]);

  // Estadísticas
  const estadisticas = useMemo(() => {
    const total = datosFiltrados.length;
    const matriculados = datosFiltrados.filter((e) => e.matriculado).length;
    const noMatriculados = total - matriculados;
    const conBeca = datosFiltrados.filter((e) => e.beca !== null).length;
    const sinBeca = total - conBeca;
    const conPrestamos = datosFiltrados.filter(
      (e) => (e.prestamos_activos?.length || 0) > 0,
    ).length;

    const promedioGeneral =
      datosFiltrados
        .filter((e) => e.promedio_notas !== null)
        .reduce((acc, e) => acc + (e.promedio_notas || 0), 0) /
        datosFiltrados.filter((e) => e.promedio_notas !== null).length || 0;

    const porFacultad = valoresUnicos.facultades.map((facultad) => ({
      nombre: facultad,
      cantidad: datosFiltrados.filter((e) => e.facultad === facultad).length,
    }));

    const porCarrera = valoresUnicos.carreras
      .map((carrera) => ({
        nombre: carrera,
        cantidad: datosFiltrados.filter((e) => e.carrera === carrera).length,
      }))
      .sort((a, b) => b.cantidad - a.cantidad);

    return {
      total,
      matriculados,
      noMatriculados,
      conBeca,
      sinBeca,
      conPrestamos,
      promedioGeneral,
      porFacultad,
      porCarrera,
    };
  }, [datosFiltrados, valoresUnicos]);

  const limpiarFiltros = () => {
    setFiltros({
      matriculado: '',
      carrera: '',
      facultad: '',
      beca: '',
      nombre: '',
      carnet: '',
      promedioMin: '',
      promedioMax: '',
      conPrestamos: '',
    });
  };

  const descargarCSV = () => {
    const encabezados = [
      'ID',
      'Carnet',
      'Nombre Completo',
      'Email',
      'Teléfono',
      'Matriculado',
      'Carrera',
      'Facultad',
      'Beca',
      'Promedio Notas',
      'Horas Beca Restantes',
      'Cantidad Cursos',
      'Préstamos Activos',
    ];

    const csvContent = [
      encabezados.join(','),
      ...datosFiltrados.map((estudiante) =>
        [
          estudiante.id,
          `"${estudiante.carnet}"`,
          `"${estudiante.nombre_completo}"`,
          `"${estudiante.email}"`,
          `"${estudiante.telefono}"`,
          estudiante.matriculado ? 'Sí' : 'No',
          `"${estudiante.carrera}"`,
          `"${estudiante.facultad}"`,
          `"${estudiante.beca || ''}"`,
          estudiante.promedio_notas || '',
          estudiante.horas_beca_restantes || '',
          estudiante.cursos?.length || 0,
          estudiante.prestamos_activos?.length || 0,
        ].join(','),
      ),
    ].join('\n');

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);

    const fechaActual = new Date().toISOString().slice(0, 10);
    link.setAttribute('download', `reporte_estudiantes_${fechaActual}.csv`);

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
            {/* Filtro por Matriculado */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Estado Matrícula
              </label>
              <select
                value={filtros.matriculado}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    matriculado: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="true">Matriculados</option>
                <option value="false">No Matriculados</option>
              </select>
            </div>

            {/* Filtro por Facultad */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Facultad
              </label>
              <select
                value={filtros.facultad}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, facultad: e.target.value }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todas las facultades</option>
                {valoresUnicos.facultades.map((facultad) => (
                  <option key={facultad} value={facultad}>
                    {facultad}
                  </option>
                ))}
              </select>
            </div>

            {/* Filtro por Carrera */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Carrera
              </label>
              <select
                value={filtros.carrera}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, carrera: e.target.value }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todas las carreras</option>
                {valoresUnicos.carreras.map((carrera) => (
                  <option key={carrera} value={carrera}>
                    {carrera}
                  </option>
                ))}
              </select>
            </div>

            {/* Filtro por Beca */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Beca
              </label>
              <select
                value={filtros.beca}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, beca: e.target.value }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="SIN_BECA">Sin Beca</option>
                {valoresUnicos.becas.map((beca) => (
                  <option key={beca} value={beca ?? ''}>
                    {beca}
                  </option>
                ))}
              </select>
            </div>

            {/* Filtro por Nombre */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Nombre
              </label>
              <input
                type="text"
                placeholder="Buscar por nombre..."
                value={filtros.nombre}
                onChange={(e) =>
                  setFiltros((prev) => ({ ...prev, nombre: e.target.value }))
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

            {/* Filtro por Promedio Mínimo */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Promedio Mínimo
              </label>
              <input
                type="number"
                min="0"
                max="100"
                step="0.1"
                placeholder="0.0"
                value={filtros.promedioMin}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    promedioMin: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Promedio Máximo */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Promedio Máximo
              </label>
              <input
                type="number"
                min="0"
                max="100"
                step="0.1"
                placeholder="100.0"
                value={filtros.promedioMax}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    promedioMax: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>

            {/* Filtro por Préstamos */}
            <div>
              <label className="mb-1 block text-sm font-medium text-gray-700">
                Préstamos Activos
              </label>
              <select
                value={filtros.conPrestamos}
                onChange={(e) =>
                  setFiltros((prev) => ({
                    ...prev,
                    conPrestamos: e.target.value,
                  }))
                }
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              >
                <option value="">Todos</option>
                <option value="true">Con préstamos</option>
                <option value="false">Sin préstamos</option>
              </select>
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
              <Users className="h-6 w-6 text-blue-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">
                Total Estudiantes
              </p>
              <p className="text-2xl font-semibold text-gray-900">
                {estadisticas.total}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-green-100 p-2">
              <GraduationCap className="h-6 w-6 text-green-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Matriculados</p>
              <p className="text-2xl font-semibold text-green-600">
                {estadisticas.matriculados}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-yellow-100 p-2">
              <Award className="h-6 w-6 text-yellow-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Con Beca</p>
              <p className="text-2xl font-semibold text-yellow-600">
                {estadisticas.conBeca}
              </p>
            </div>
          </div>
        </div>

        <div className="rounded-lg border bg-white p-6 shadow">
          <div className="flex items-center">
            <div className="rounded-lg bg-purple-100 p-2">
              <BookOpen className="h-6 w-6 text-purple-600" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-gray-600">Con Préstamos</p>
              <p className="text-2xl font-semibold text-purple-600">
                {estadisticas.conPrestamos}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Estadísticas Detalladas */}
      <div className="grid grid-cols-1 gap-6 lg:grid-cols-2">
        {/* Estado de Matrícula */}
        <div className="rounded-lg bg-white p-6 shadow">
          <h3 className="mb-4 text-lg font-semibold text-gray-800">
            Estado de Matrícula
          </h3>
          <div className="grid grid-cols-2 gap-4">
            <div className="text-center">
              <p className="text-2xl font-bold text-green-600">
                {estadisticas.matriculados}
              </p>
              <p className="text-sm text-gray-600">Matriculados</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold text-gray-600">
                {estadisticas.noMatriculados}
              </p>
              <p className="text-sm text-gray-600">No Matriculados</p>
            </div>
          </div>
        </div>

        {/* Distribución de Becas */}
        <div className="rounded-lg bg-white p-6 shadow">
          <h3 className="mb-4 text-lg font-semibold text-gray-800">
            Distribución de Becas
          </h3>
          <div className="grid grid-cols-2 gap-4">
            <div className="text-center">
              <p className="text-2xl font-bold text-yellow-600">
                {estadisticas.conBeca}
              </p>
              <p className="text-sm text-gray-600">Con Beca</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold text-gray-600">
                {estadisticas.sinBeca}
              </p>
              <p className="text-sm text-gray-600">Sin Beca</p>
            </div>
          </div>
        </div>
      </div>

      {/* Top Carreras */}
      <div className="rounded-lg bg-white p-6 shadow">
        <h3 className="mb-4 text-lg font-semibold text-gray-800">
          Estudiantes por Carrera (Top 10)
        </h3>
        <div className="space-y-2">
          {estadisticas.porCarrera.slice(0, 10).map((carrera, index) => (
            <div
              key={carrera.nombre}
              className="flex items-center justify-between rounded bg-gray-50 p-2"
            >
              <span className="text-sm font-medium text-gray-700">
                {index + 1}. {carrera.nombre}
              </span>
              <span className="text-sm font-bold text-blue-600">
                {carrera.cantidad}
              </span>
            </div>
          ))}
        </div>
      </div>

      {/* Tabla de Resultados */}
      <div className="overflow-hidden rounded-lg bg-white shadow">
        <div className="border-b border-gray-200 px-6 py-4">
          <h3 className="text-lg font-semibold text-gray-800">
            Resultados ({datosFiltrados.length} estudiantes)
            {estadisticas.promedioGeneral > 0 && (
              <span className="ml-4 text-sm text-gray-600">
                Promedio General: {estadisticas.promedioGeneral.toFixed(2)}
              </span>
            )}
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
                  Carnet
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Nombre
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Email
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Matriculado
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Carrera
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Facultad
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Beca
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Promedio
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium tracking-wider text-gray-500 uppercase">
                  Préstamos
                </th>
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-200 bg-white">
              {datosFiltrados.map((estudiante) => (
                <tr key={estudiante.id} className="hover:bg-gray-50">
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.id}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.carnet}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.nombre_completo}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.email}
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span
                      className={`inline-flex rounded-full px-2 py-1 text-xs font-semibold ${
                        estudiante.matriculado
                          ? 'bg-green-100 text-green-800'
                          : 'bg-gray-100 text-gray-800'
                      }`}
                    >
                      {estudiante.matriculado ? 'Sí' : 'No'}
                    </span>
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.carrera}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.facultad}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.beca || '—'}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.promedio_notas?.toFixed(2) || '—'}
                  </td>
                  <td className="px-6 py-4 text-sm whitespace-nowrap text-gray-900">
                    {estudiante.prestamos_activos?.length || 0}
                  </td>
                </tr>
              ))}
              {datosFiltrados.length === 0 && (
                <tr>
                  <td
                    colSpan={10}
                    className="px-6 py-12 text-center text-gray-500"
                  >
                    No se encontraron estudiantes con los filtros aplicados.
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
