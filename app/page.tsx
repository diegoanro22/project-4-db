import Link from 'next/link';
import { User, BookOpen, Smartphone } from 'lucide-react';

export default function Home() {
  return (
    <div className="flex min-h-screen flex-col bg-gray-50">
      {/* Hero section */}
      <header className="bg-white shadow">
        <div className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
          <h1 className="text-3xl font-bold text-gray-900">
            Panel de Administración
          </h1>
          <p className="mt-2 text-gray-600">
            Seleccione un módulo para gestionar sus datos
          </p>
        </div>
      </header>

      {/* Main content */}
      <main className="mx-auto max-w-7xl flex-grow px-4 py-10 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-3">
          {/* Estudiantes */}
          <Link
            href="/crud/estudiantes"
            className="group block rounded-lg border border-gray-200 bg-white p-6 transition hover:border-blue-500 hover:shadow-lg"
          >
            <div className="mb-4 flex items-center justify-center">
              <User className="h-12 w-12 text-blue-500" />
            </div>
            <h2 className="text-xl font-semibold text-gray-800 group-hover:text-blue-600">
              Estudiantes
            </h2>
            <p className="mt-2 text-gray-500">
              Ver, crear, editar y eliminar registros de estudiantes.
            </p>
          </Link>

          {/* Cursos */}
          <Link
            href="/crud/cursos"
            className="group block rounded-lg border border-gray-200 bg-white p-6 transition hover:border-blue-500 hover:shadow-lg"
          >
            <div className="mb-4 flex items-center justify-center">
              <BookOpen className="h-12 w-12 text-blue-500" />
            </div>
            <h2 className="text-xl font-semibold text-gray-800 group-hover:text-blue-600">
              Cursos
            </h2>
            <p className="mt-2 text-gray-500">
              Gestiona tus cursos: crea nuevas secciones y administra sus datos.
            </p>
          </Link>

          {/* Préstamos */}
          <Link
            href="/crud/prestamos"
            className="group block rounded-lg border border-gray-200 bg-white p-6 transition hover:border-blue-500 hover:shadow-lg"
          >
            <div className="mb-4 flex items-center justify-center">
              <Smartphone className="h-12 w-12 text-blue-500" />
            </div>
            <h2 className="text-xl font-semibold text-gray-800 group-hover:text-blue-600">
              Préstamos
            </h2>
            <p className="mt-2 text-gray-500">
              Administra los préstamos de libros y dispositivos de la
              biblioteca.
            </p>
          </Link>
        </div>
      </main>

      {/* Footer */}
      <footer className="bg-white">
        <div className="mx-auto max-w-7xl px-4 py-4 text-center text-sm text-gray-500 sm:px-6 lg:px-8">
          &copy; {new Date().getFullYear()} CC3088. Todos los derechos
          reservados.
        </div>
      </footer>
    </div>
  );
}
