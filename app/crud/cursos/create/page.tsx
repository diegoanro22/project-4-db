import CursoForm from '@/components/crud/cursos/CursoForm';
import { PlusCircle } from 'lucide-react';

export default function CreateCurso() {
  return (
    <div className="mx-auto my-12 max-w-3xl rounded-lg bg-white p-8 shadow-xl">
      <div className="mb-6 flex items-center">
        <PlusCircle className="h-6 w-6 text-blue-600" />
        <h1 className="ml-3 text-2xl font-semibold text-gray-800">
          Nuevo Curso
        </h1>
      </div>
      <CursoForm mode="create" />
    </div>
  );
}
