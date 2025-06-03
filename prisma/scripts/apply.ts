import { PrismaClient } from '@prisma/client';
import { exec } from 'child_process';
import path from 'path';

const prisma = new PrismaClient();

async function applySqlFile(filePath: string) {
  const command = `psql ${process.env.DATABASE_URL} -f ${filePath}`;

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

async function main() {
  const functionsPath = path.join(__dirname, './functions.sql');
  const triggersPath = path.join(__dirname, './triggers.sql');

  try {
    await applySqlFile(functionsPath);
    await applySqlFile(triggersPath);
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
