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

1. Generar el cliente de Prisma

```
npx prisma generate
```

2. Aplicar migraciones existentes

```
npx prisma migrate deploy
```

3. Aplicar funciones, triggers y vistas

```
npm run db:apply
```

4. Cargar datos de ejemplo

```
npm run seed
```

5. Iniciá el servidor de desarrollo de Next.js:

```
npm run dev
```

El proyecto estará disponible en:

```
http://localhost:3000
```



---

## 📤 Créditos

Proyecto desarrollado por el grupo de la Universidad del Valle de Guatemala para el curso **cc3088 - Bases de Datos 1 (Ciclo 1, 2025)**.
