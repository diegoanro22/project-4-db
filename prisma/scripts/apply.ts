import { PrismaClient } from '@prisma/client';
import { exec } from 'child_process';
import path from 'path';
import fs from 'fs';

const prisma = new PrismaClient();

async function applySqlFile(filePath: string) {
  const command = `psql -d ${process.env.DATABASE_URL} -f ${filePath}`;

  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error) {
        console.error(`Error executing ${filePath}:`, stderr);
        reject(error);
      } else {
        console.log(`Successfully executed ${filePath}:`, stdout);
        resolve(stdout);
      }
    });
  });
}

async function applyViews() {
  const viewsDir = path.join(__dirname, 'views');

  try {
    // Verificar si el directorio de vistas existe
    if (!fs.existsSync(viewsDir)) {
      console.log('No views directory found, skipping views application');
      return;
    }

    // Leer todos los archivos SQL en el directorio de vistas
    const viewFiles = fs
      .readdirSync(viewsDir)
      .filter((file) => file.endsWith('.sql'))
      .map((file) => path.join(viewsDir, file));

    // Aplicar cada vista en orden
    for (const viewFile of viewFiles) {
      await applySqlFile(viewFile);
    }

    console.log(`Successfully applied ${viewFiles.length} views`);
  } catch (error) {
    console.error('Error applying views:', error);
    throw error;
  }
}

async function main() {
  const functionsPath = path.join(__dirname, 'functions.sql');
  const triggersPath = path.join(__dirname, 'triggers.sql');

  try {
    console.log('Applying database functions...');
    await applySqlFile(functionsPath);

    console.log('Applying database triggers...');
    await applySqlFile(triggersPath);

    console.log('Applying database views...');
    await applyViews();

    console.log('All SQL scripts applied successfully');
  } catch (error) {
    console.error('Failed to apply SQL scripts:', error);
    process.exit(1);
  } finally {
    await prisma.$disconnect();
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
