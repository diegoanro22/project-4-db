import { PrismaClient, CursoCategoria, CursoEstado, TipoPago, Dia, TipoActividad, HorasBecaEstado, PrestamoEstado } from '@prisma/client';
import { faker } from '@faker-js/faker';

const prisma = new PrismaClient();

// Función para generar números decimales
const randomFloat = (min: number, max: number, decimals: number) => {
  const str = (Math.random() * (max - min) + min).toFixed(decimals);
  return parseFloat(str);
};

// Función para generar fechas válidas
const createValidDate = (hours: number, minutes = 0) => {
  return new Date(Date.UTC(2025, 0, 1, hours, minutes, 0));
};

async function main() {
  console.log('Iniciando seeding...');

  // 1. Facultades (5 registros)
  console.log('Creando facultades...');
  for (let i = 1; i <= 5; i++) {
    await prisma.facultades.create({ 
      data: { 
        facultad: faker.helpers.arrayElement([
          "Facultad de Ingeniería",
          "Facultad de Ciencias Sociales",
          "Facultad de Medicina",
          "Facultad de Arquitectura",
          "Facultad de Ciencias Económicas"
        ]) 
      } 
    });
  }

  // 2. Carreras (10 registros - 2 por facultad)
  console.log('Creando carreras...');
  const carrerasEjemplos = [
    "Ingeniería en Sistemas", "Ingeniería Civil", "Psicología", "Medicina", 
    "Arquitectura", "Administración de Empresas", "Derecho", "Biología",
    "Diseño Gráfico", "Contaduría Pública"
  ];
  
  for (let i = 1; i <= 10; i++) {
    await prisma.carreras.create({
      data: {
        carrera: carrerasEjemplos[i-1],
        descripcion: faker.lorem.sentence(),
        facultad_id: Math.ceil(i/2),
      },
    });
  }

  // 3. Becas (5 registros)
  console.log('Creando becas...');
  const becasNombres = [
    "Beca Excelencia Académica", 
    "Beca Deportiva", 
    "Beca Artística", 
    "Beca Socioeconómica", 
    "Beca Investigación"
  ];
  
  for (let i = 1; i <= 5; i++) {
    await prisma.becas.create({ 
      data: { 
        nombre: becasNombres[i-1], 
        porcentaje: [25, 50, 75, 100][i % 4] 
      } 
    });
  }

  // 4. Maestros (20 registros)
  console.log('Creando maestros...');
  for (let i = 1; i <= 20; i++) {
    await prisma.maestros.create({
      data: {
        nombre: faker.person.firstName(),
        apellido: faker.person.lastName(),
        email: faker.internet.email({firstName: `profesor${i}`}),
        telefono: `5${faker.string.numeric(7)}`,
      },
    });
  }

  // 5. Cursos (20 registros)
  console.log('Creando cursos...');
  const categorias = Object.values(CursoCategoria);
  const cursosEjemplos = [
    "Programación I", "Cálculo I", "Física Básica", "Química General",
    "Derecho Constitucional", "Anatomía Humana", "Diseño Arquitectónico",
    "Contabilidad I", "Psicología General", "Biología Celular",
    "Bases de Datos", "Estructuras", "Psicopatología", "Farmacología",
    "Urbanismo", "Finanzas", "Derecho Penal", "Genética", "Redes", "Mecánica"
  ];
  
  for (let i = 1; i <= 20; i++) {
    await prisma.cursos.create({
      data: {
        curso: cursosEjemplos[i-1],
        descripcion: faker.lorem.sentence(),
        creditos: [3, 4, 5][i % 3],
        categoria: categorias[i % categorias.length],
        precio: randomFloat(500, 2000, 2),
      },
    });
  }

  // 6. Salones (10 registros)
  console.log('Creando salones...');
  for (let i = 1; i <= 10; i++) {
    await prisma.salones.create({ 
      data: { 
        salon: `A-${i}${String.fromCharCode(64 + i)}`, 
        capacidad: 20 + (i * 5) 
      } 
    });
  }

  // 7. Secciones (20 registros - 1 por curso)
  console.log('Creando secciones...');
  const seccionesCreadas = new Set();

  for (let i = 1; i <= 20; i++) {
    let maestroId = i;
    let cursoId = i;
    let intentos = 0;
    const maxIntentos = 10;

    // Verificar combinación única
    while (seccionesCreadas.has(`${maestroId}-${cursoId}`) && intentos < maxIntentos) {
      maestroId = faker.number.int({ min: 1, max: 20 });
      cursoId = faker.number.int({ min: 1, max: 20 });
      intentos++;
    }

    if (intentos >= maxIntentos) {
      console.warn(`No se pudo encontrar una combinación única para sección ${i}`);
      continue;
    }

    await prisma.secciones.create({
      data: {
        maestro_id: maestroId,
        curso_id: cursoId,
        salon_id: (i % 10) + 1,
      },
    });

    seccionesCreadas.add(`${maestroId}-${cursoId}`);
  }

  // 8. Estudiantes (200 registros)
  console.log('Creando estudiantes...');
  for (let i = 1; i <= 200; i++) {
    const fechaNacimiento = faker.date.birthdate({ min: 18, max: 30, mode: 'age' });
    
    await prisma.estudiantes.create({
      data: {
        carnet: `20${faker.number.int({min: 20, max: 25})}${i.toString().padStart(4, '0')}`,
        nombre: faker.person.firstName(),
        apellido: faker.person.lastName(),
        email: faker.internet.email({firstName: `estudiante${i}`}),
        telefono: `4${faker.string.numeric(7)}`,
        fecha_nacimiento: fechaNacimiento,
        matriculado: faker.datatype.boolean(),
        horas_beca_restantes: faker.number.int({ min: 0, max: 100 }),
        carrera_id: (i % 10) + 1,
        beca_id: i % 5 === 0 ? null : (i % 5) + 1,
      },
    });
  }

  // 9. EstudianteSecciones (200 registros - 1 por estudiante)
  console.log('Creando relaciones estudiante-secciones...');
  for (let i = 1; i <= 200; i++) {
    await prisma.estudianteSecciones.create({
      data: {
        estudiante_id: i,
        seccion_id: (i % 20) + 1,
        estado: faker.helpers.arrayElement(Object.values(CursoEstado)),
      },
    });
  }

  // 10. EstudianteContactos (200 registros - 1 por estudiante)
  console.log('Creando contactos de estudiantes...');
  for (let i = 1; i <= 200; i++) {
    await prisma.estudianteContactos.create({
      data: {
        estudiante_id: i,
        nombre: faker.person.fullName(),
        contacto: faker.phone.number(),
      },
    });
  }

  // 11. EstudiantePagos (200 registros - 1 por estudiante)
  console.log('Creando pagos de estudiantes...');
  for (let i = 1; i <= 200; i++) {
    await prisma.estudiantePagos.create({
      data: {
        estudiante_id: i,
        tipo_pago: faker.helpers.arrayElement(Object.values(TipoPago)),
        fecha: faker.date.recent({ days: 30 }),
      },
    });
  }

  // 12. Horarios (40 registros - 2 por sección)
  console.log('Creando horarios...');
  for (let i = 1; i <= 40; i++) {
    const seccionId = Math.ceil(i/2);
    const dias = Object.values(Dia).filter(d => d !== Dia.DOMINGO);
    
    const horaInicio = 8 + (i % 8);
    const horaFin = horaInicio + 2;
    
    await prisma.horarios.create({
      data: {
        seccion_id: seccionId,
        dia: dias[i % dias.length],
        hora_inicio: new Date(Date.UTC(2025, 0, 1, horaInicio, 0, 0)),
        hora_fin: new Date(Date.UTC(2025, 0, 1, horaFin, 0, 0)),
      },
    });
  }

  // 13. Actividades (100 registros - 5 por sección)
  console.log('Creando actividades...');
  for (let i = 1; i <= 100; i++) {
    const seccionId = Math.ceil(i/5);
    
    await prisma.actividades.create({
      data: {
        seccion_id: seccionId,
        descripcion: `Actividad ${i}: ${faker.lorem.words(3)}`,
        nota_actividad: randomFloat(5, 20, 1),
        tipo_actividad: faker.helpers.arrayElement(Object.values(TipoActividad)),
      },
    });
  }

  // 14. EstudianteNotas (400 registros - 4 por actividad)
  console.log('Creando notas de estudiantes...');
  for (let i = 1; i <= 400; i++) {
    await prisma.estudianteNotas.create({
      data: {
        estudiante_id: (i % 200) + 1,
        actividad_id: Math.ceil(i/4),
        nota: randomFloat(0, 10, 1),
      },
    });
  }

  // 15. HorasBeca (20 registros)
  console.log('Creando horas de beca...');
  for (let i = 1; i <= 20; i++) {
    const horaInicio = 8 + (i % 8); // Hora entre 8 y 15
    const horaFin = horaInicio + 2; // Duración de 2 horas
    
    await prisma.horasBeca.create({
      data: {
        actividad: faker.helpers.arrayElement([
          "Asistencia biblioteca",
          "Apoyo docente",
          "Investigación",
          "Eventos universitarios"
        ]),
        cantidad_horas: [2, 4, 6][i % 3],
        dia: faker.helpers.arrayElement([
          Dia.LUNES, 
          Dia.MARTES, 
          Dia.MIERCOLES, 
          Dia.JUEVES, 
          Dia.VIERNES, 
          Dia.SABADO
        ]),
        hora_inicio: createValidDate(horaInicio),
        hora_fin: createValidDate(horaFin),
      },
    });
  }

  // 16. EstudianteHorasBeca (100 registros - 5 por actividad de beca)
  console.log('Creando relaciones estudiante-horas beca...');
  for (let i = 1; i <= 100; i++) {
    await prisma.estudianteHorasBeca.create({
      data: {
        estudiante_id: (i % 200) + 1,
        hora_beca_id: Math.ceil(i/5),
        estado: faker.helpers.arrayElement(Object.values(HorasBecaEstado)),
      },
    });
  }

  // 17. Autores (10 registros)
  console.log('Creando autores...');
  for (let i = 1; i <= 10; i++) {
    await prisma.autores.create({ 
      data: { 
        autor: faker.person.fullName() 
      } 
    });
  }

  // 18. Items (50 registros - 25 libros, 25 dispositivos)
  console.log('Creando items...');
  for (let i = 1; i <= 50; i++) {
    const esLibro = i <= 25;
    
    await prisma.items.create({
      data: {
        item: esLibro ? `Libro-${i}` : `Dispositivo-${i-25}`,
        disponible: faker.datatype.boolean(),
        cantidad: esLibro ? faker.number.int({ min: 1, max: 5 }) : 1,
      },
    });
  }

  // 19. Libros (25 registros - 1 por item de libro)
  console.log('Creando libros...');
  for (let i = 1; i <= 25; i++) {
    await prisma.libros.create({
      data: {
        item_id: i,
        nombre: faker.lorem.words(3),
        autor_id: (i % 10) + 1,
        año: faker.number.int({ min: 2000, max: 2024 }),
      },
    });
  }

  // 20. Dispositivos (25 registros - 1 por item de dispositivo)
  console.log('Creando dispositivos...');
  for (let i = 26; i <= 50; i++) {
    await prisma.dispositivos.create({
      data: {
        item_id: i,
        dispositivo: faker.helpers.arrayElement([
          "Laptop", "Tablet", "Proyector", "Cámara", "Micrófono",
          "Calculadora", "Impresora", "Escáner", "Audífonos", "Router"
        ]),
      },
    });
  }

  // 21. Prestamos (50 registros - 1 por item)
  console.log('Creando préstamos...');
  for (let i = 1; i <= 50; i++) {
    const fechaPrestamo = faker.date.recent({ days: 30 });
    const fechaDevolucion = faker.datatype.boolean() ? 
      faker.date.soon({ days: 15, refDate: fechaPrestamo }) : null;
    
    await prisma.prestamos.create({
      data: {
        item_id: i,
        estado: fechaDevolucion ? PrestamoEstado.DEVUELTO : 
               faker.date.past({ refDate: fechaPrestamo }) ? PrestamoEstado.VENCIDO : 
               PrestamoEstado.ACTIVO,
        fecha_prestamo: fechaPrestamo,
        fecha_devolucion: fechaDevolucion,
      },
    });
  }

  // 22. SalonesBiblioteca (5 registros)
  console.log('Creando salones de biblioteca...');
  for (let i = 1; i <= 5; i++) {
    await prisma.salonesBiblioteca.create({
      data: {
        salon: `Sala ${String.fromCharCode(64 + i)}`,
        capacidad: 10 * i,
      },
    });
  }

  // 23. Reservas (100 registros)
  console.log('Creando reservas...');
  for (let i = 1; i <= 100; i++) {
    const salonId = (i % 5) + 1;
    const horaInicio = 8 + (i % 8); // Hora entre 8 y 15
    const horaFin = horaInicio + 2; // Duración de 2 horas
    
    const fechaReserva = new Date();
    fechaReserva.setDate(fechaReserva.getDate() + faker.number.int({ min: 1, max: 30 }));
    
    await prisma.reservas.create({
      data: {
        salon_biblioteca_id: salonId,
        estudiante_id: (i % 200) + 1,
        fecha: fechaReserva,
        hora_inicio: new Date(fechaReserva.setHours(horaInicio, 0, 0, 0)),
        hora_fin: new Date(fechaReserva.setHours(horaFin, 0, 0, 0)),
      },
    });

  console.log('✅ Seeding completado con éxito!');}
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error('❌ Error durante el seeding:', e);
    await prisma.$disconnect();
    process.exit(1);
  });