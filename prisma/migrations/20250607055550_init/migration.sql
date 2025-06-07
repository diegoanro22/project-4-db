-- CreateEnum
CREATE TYPE "CursoCategoria" AS ENUM ('BASICO', 'INTERMEDIO', 'AVANZADO', 'ESPECIALIZADO');

-- CreateEnum
CREATE TYPE "CursoEstado" AS ENUM ('INSCRITO', 'CURSANDO', 'APROBADO', 'REPROBADO', 'RETIRADO');

-- CreateEnum
CREATE TYPE "TipoPago" AS ENUM ('EFECTIVO', 'TARJETA', 'TRANSFERENCIA', 'BECA');

-- CreateEnum
CREATE TYPE "Dia" AS ENUM ('LUNES', 'MARTES', 'MIERCOLES', 'JUEVES', 'VIERNES', 'SABADO', 'DOMINGO');

-- CreateEnum
CREATE TYPE "TipoActividad" AS ENUM ('EXAMEN', 'TAREA', 'PROYECTO', 'LABORATORIO', 'PRESENTACION');

-- CreateEnum
CREATE TYPE "HorasBecaEstado" AS ENUM ('PENDIENTE', 'COMPLETADO', 'CANCELADO');

-- CreateEnum
CREATE TYPE "PrestamoEstado" AS ENUM ('ACTIVO', 'DEVUELTO', 'VENCIDO', 'PERDIDO');

-- CreateTable
CREATE TABLE "estudiantes" (
    "id" SERIAL NOT NULL,
    "carnet" VARCHAR(50) NOT NULL,
    "carrera_id" INTEGER NOT NULL,
    "beca_id" INTEGER,
    "nombre" VARCHAR(100) NOT NULL,
    "apellido" VARCHAR(100) NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "fecha_nacimiento" TIMESTAMP(3) NOT NULL,
    "matriculado" BOOLEAN NOT NULL DEFAULT false,
    "telefono" VARCHAR(20) NOT NULL,
    "horas_beca_restantes" INTEGER NOT NULL DEFAULT 0,
    "creado_en" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizado_en" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "estudiantes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "maestros" (
    "id" SERIAL NOT NULL,
    "nombre" VARCHAR(100) NOT NULL,
    "apellido" VARCHAR(100) NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "telefono" VARCHAR(20) NOT NULL,
    "creado_en" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizado_en" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "maestros_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "facultades" (
    "id" SERIAL NOT NULL,
    "facultad" VARCHAR(200) NOT NULL,

    CONSTRAINT "facultades_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "carreras" (
    "id" SERIAL NOT NULL,
    "facultad_id" INTEGER NOT NULL,
    "carrera" VARCHAR(200) NOT NULL,
    "descripcion" TEXT NOT NULL,

    CONSTRAINT "carreras_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "becas" (
    "id" SERIAL NOT NULL,
    "nombre" VARCHAR(100) NOT NULL,
    "porcentaje" SMALLINT NOT NULL,

    CONSTRAINT "becas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cursos" (
    "id" SERIAL NOT NULL,
    "curso" VARCHAR(200) NOT NULL,
    "descripcion" TEXT NOT NULL,
    "creditos" INTEGER NOT NULL,
    "categoria" "CursoCategoria" NOT NULL,
    "precio" DECIMAL(10,2) NOT NULL,
    "creado_en" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizado_en" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "cursos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "secciones" (
    "id" SERIAL NOT NULL,
    "maestro_id" INTEGER NOT NULL,
    "curso_id" INTEGER NOT NULL,
    "salon_id" INTEGER NOT NULL,

    CONSTRAINT "secciones_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "salones" (
    "id" SERIAL NOT NULL,
    "salon" VARCHAR(100) NOT NULL,
    "capacidad" INTEGER NOT NULL,

    CONSTRAINT "salones_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "estudiante_secciones" (
    "id" SERIAL NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "seccion_id" INTEGER NOT NULL,
    "estado" "CursoEstado" NOT NULL,

    CONSTRAINT "estudiante_secciones_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "estudiante_contactos" (
    "id" SERIAL NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "nombre" VARCHAR(100) NOT NULL,
    "contacto" VARCHAR(200) NOT NULL,

    CONSTRAINT "estudiante_contactos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "estudiante_pagos" (
    "id" SERIAL NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "tipo_pago" "TipoPago" NOT NULL,
    "fecha" DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "estudiante_pagos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "horarios" (
    "id" SERIAL NOT NULL,
    "seccion_id" INTEGER NOT NULL,
    "dia" "Dia" NOT NULL,
    "hora_inicio" TIME NOT NULL,
    "hora_fin" TIME NOT NULL,

    CONSTRAINT "horarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "actividades" (
    "id" SERIAL NOT NULL,
    "seccion_id" INTEGER NOT NULL,
    "descripcion" TEXT NOT NULL,
    "nota_actividad" DECIMAL(10,2) NOT NULL,
    "tipo_actividad" "TipoActividad" NOT NULL,

    CONSTRAINT "actividades_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "estudiante_notas" (
    "id" SERIAL NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "actividad_id" INTEGER NOT NULL,
    "nota" DECIMAL(10,2) NOT NULL,

    CONSTRAINT "estudiante_notas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "horas_beca" (
    "id" SERIAL NOT NULL,
    "actividad" VARCHAR(200) NOT NULL,
    "cantidad_horas" INTEGER NOT NULL,
    "dia" "Dia" NOT NULL,
    "hora_inicio" TIME NOT NULL,
    "hora_fin" TIME NOT NULL,

    CONSTRAINT "horas_beca_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "estudiante_horas_beca" (
    "id" SERIAL NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "hora_beca_id" INTEGER NOT NULL,
    "estado" "HorasBecaEstado" NOT NULL,

    CONSTRAINT "estudiante_horas_beca_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "items" (
    "id" SERIAL NOT NULL,
    "item" VARCHAR(200) NOT NULL,
    "disponible" BOOLEAN NOT NULL DEFAULT true,
    "cantidad" INTEGER NOT NULL,

    CONSTRAINT "items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "autores" (
    "id" SERIAL NOT NULL,
    "autor" VARCHAR(200) NOT NULL,

    CONSTRAINT "autores_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "libros" (
    "id" SERIAL NOT NULL,
    "item_id" INTEGER NOT NULL,
    "nombre" VARCHAR(200) NOT NULL,
    "autor_id" INTEGER NOT NULL,
    "año" INTEGER NOT NULL,

    CONSTRAINT "libros_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "dispositivos" (
    "id" SERIAL NOT NULL,
    "item_id" INTEGER NOT NULL,
    "dispositivo" VARCHAR(200) NOT NULL,

    CONSTRAINT "dispositivos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "prestamos" (
    "id" SERIAL NOT NULL,
    "item_id" INTEGER NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "estado" "PrestamoEstado" NOT NULL,
    "fecha_prestamo" DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fecha_devolucion" DATE,

    CONSTRAINT "prestamos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "salones_biblioteca" (
    "id" SERIAL NOT NULL,
    "salon" VARCHAR(100) NOT NULL,
    "capacidad" INTEGER NOT NULL,

    CONSTRAINT "salones_biblioteca_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "reservas" (
    "id" SERIAL NOT NULL,
    "salon_biblioteca_id" INTEGER NOT NULL,
    "estudiante_id" INTEGER NOT NULL,
    "fecha" DATE NOT NULL,
    "hora_inicio" TIME NOT NULL,
    "hora_fin" TIME NOT NULL,

    CONSTRAINT "reservas_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "estudiantes_carnet_key" ON "estudiantes"("carnet");

-- CreateIndex
CREATE UNIQUE INDEX "estudiantes_email_key" ON "estudiantes"("email");

-- CreateIndex
CREATE UNIQUE INDEX "estudiantes_telefono_key" ON "estudiantes"("telefono");

-- CreateIndex
CREATE UNIQUE INDEX "maestros_email_key" ON "maestros"("email");

-- CreateIndex
CREATE UNIQUE INDEX "maestros_telefono_key" ON "maestros"("telefono");

-- CreateIndex
CREATE UNIQUE INDEX "secciones_maestro_id_curso_id_key" ON "secciones"("maestro_id", "curso_id");

-- CreateIndex
CREATE UNIQUE INDEX "estudiante_secciones_estudiante_id_seccion_id_key" ON "estudiante_secciones"("estudiante_id", "seccion_id");

-- CreateIndex
CREATE UNIQUE INDEX "estudiante_notas_estudiante_id_actividad_id_key" ON "estudiante_notas"("estudiante_id", "actividad_id");

-- AddForeignKey
ALTER TABLE "estudiantes" ADD CONSTRAINT "estudiantes_carrera_id_fkey" FOREIGN KEY ("carrera_id") REFERENCES "carreras"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiantes" ADD CONSTRAINT "estudiantes_beca_id_fkey" FOREIGN KEY ("beca_id") REFERENCES "becas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "carreras" ADD CONSTRAINT "carreras_facultad_id_fkey" FOREIGN KEY ("facultad_id") REFERENCES "facultades"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "secciones" ADD CONSTRAINT "secciones_maestro_id_fkey" FOREIGN KEY ("maestro_id") REFERENCES "maestros"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "secciones" ADD CONSTRAINT "secciones_curso_id_fkey" FOREIGN KEY ("curso_id") REFERENCES "cursos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "secciones" ADD CONSTRAINT "secciones_salon_id_fkey" FOREIGN KEY ("salon_id") REFERENCES "salones"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_secciones" ADD CONSTRAINT "estudiante_secciones_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_secciones" ADD CONSTRAINT "estudiante_secciones_seccion_id_fkey" FOREIGN KEY ("seccion_id") REFERENCES "secciones"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_contactos" ADD CONSTRAINT "estudiante_contactos_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_pagos" ADD CONSTRAINT "estudiante_pagos_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "horarios" ADD CONSTRAINT "horarios_seccion_id_fkey" FOREIGN KEY ("seccion_id") REFERENCES "secciones"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "actividades" ADD CONSTRAINT "actividades_seccion_id_fkey" FOREIGN KEY ("seccion_id") REFERENCES "secciones"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_notas" ADD CONSTRAINT "estudiante_notas_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_notas" ADD CONSTRAINT "estudiante_notas_actividad_id_fkey" FOREIGN KEY ("actividad_id") REFERENCES "actividades"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_horas_beca" ADD CONSTRAINT "estudiante_horas_beca_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "estudiante_horas_beca" ADD CONSTRAINT "estudiante_horas_beca_hora_beca_id_fkey" FOREIGN KEY ("hora_beca_id") REFERENCES "horas_beca"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "libros" ADD CONSTRAINT "libros_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "libros" ADD CONSTRAINT "libros_autor_id_fkey" FOREIGN KEY ("autor_id") REFERENCES "autores"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "dispositivos" ADD CONSTRAINT "dispositivos_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prestamos" ADD CONSTRAINT "prestamos_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prestamos" ADD CONSTRAINT "prestamos_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reservas" ADD CONSTRAINT "reservas_salon_biblioteca_id_fkey" FOREIGN KEY ("salon_biblioteca_id") REFERENCES "salones_biblioteca"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reservas" ADD CONSTRAINT "reservas_estudiante_id_fkey" FOREIGN KEY ("estudiante_id") REFERENCES "estudiantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
