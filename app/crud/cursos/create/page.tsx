import CursoForm from '@/components/crud/cursos/CursoForm';

export default function CreateCurso() {
  return (
    <div className="mx-auto my-10 max-w-xl rounded bg-white p-6 shadow">
      <h1 className="mb-4 text-2xl font-bold">Nuevo curso</h1>
      <CursoForm mode="create" />
    </div>
  );
}
