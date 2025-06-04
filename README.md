# 📚 Proyecto 4 - Base de Datos 1

Sistema completo construido con **Next.js**, **Prisma** y **PostgreSQL**, utilizando buenas prácticas como **Prettier**, **ESLint**, **Husky** y `lint-staged`.

---

## 🚀 Tecnologías utilizadas

- [Next.js](https://nextjs.org/)
- [Prisma ORM](https://www.prisma.io/)
- [PostgreSQL](https://www.postgresql.org/)
- [Prettier](https://prettier.io/)
- [ESLint](https://eslint.org/)
- [Husky](https://typicode.github.io/husky/)
- [TypeScript](https://www.typescriptlang.org/)

---

## ⚙️ Requisitos previos

- Node.js >= 18.x
- PostgreSQL instalado y corriendo localmente

---

## 📦 Instalación

1. Clona el repositorio

```
git clone https://github.com/tu-usuario/proyecto-4-db.git
cd proyecto-4-db
```

2. Instala las dependencias

```
npm install
```

3. Copia el archivo `.env.example` y renómbralo como `.env`

```
cp .env.example .env
```

4. Modifica la variable `DATABASE_URL` en `.env` con tus datos locales de PostgreSQL:

```
DATABASE_URL="postgresql://usuario:contraseña@localhost:5432/proyecto4"
```

---

## 🛠️ Cómo correr el proyecto

Una vez configurado el entorno, seguí estos pasos para iniciar el servidor de desarrollo y preparar la base de datos:

Iniciá el servidor de desarrollo de Next.js:

```
npm run dev
```

El proyecto estará disponible en:

```
http://localhost:3000
```

---

## 🛠️ Migraciones de Base de Datos
Este proyecto utiliza Prisma como ORM. A continuación los comandos para manejar migraciones:

### Crear una nueva migración
Después de hacer cambios en el esquema (`schema.prisma`), ejecutar:

```
npx prisma migrate dev --name nombre_descriptivo_de_la_migracion 
```

### Aplicar migraciones en producción

```
npx prisma migrate deploy
```

### Generar el cliente de Prisma

```
npx prisma generate
```
---

## 🌱 Cargar datos de ejemplo (seed.ts)

Este proyecto incluye un script de seeding para poblar la base de datos con datos de prueba realistas. Ideal para pruebas y demostraciones.

### 🔧 Paso 1: Instalar dependencias necesarias

Asegúrate de tener instalados los siguientes paquetes:

```
npm install @faker-js/faker
```

### Ejecutar migraciones 
```
npx prisma migrate dev
```

### Ejecutar el archivo seed.ts 
```
npm run seed
```

### Ver datos
```
npx prisma studio
```

### Nota: Si se desea resetear 
```
npx prisma migrate reset
```


---

## 📤 Créditos

Proyecto desarrollado por el grupo de la Universidad del Valle de Guatemala para el curso **cc3088 - Bases de Datos 1 (Ciclo 1, 2025)**.
