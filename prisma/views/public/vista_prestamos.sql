SELECT
  p.id,
  p.estado,
  p.fecha_prestamo,
  p.fecha_devolucion,
  i.item,
  CASE
    WHEN (l.id IS NOT NULL) THEN 'Libro' :: text
    WHEN (d.id IS NOT NULL) THEN 'Dispositivo' :: text
    ELSE 'Otro' :: text
  END AS tipo_item,
  l.nombre AS libro,
  a.autor AS autor_libro,
  l."año" AS "año_publicacion",
  d.dispositivo,
  (
    ((e.nombre) :: text || ' ' :: text) || (e.apellido) :: text
  ) AS estudiante,
  e.carnet
FROM
  (
    (
      (
        (
          (
            prestamos p
            JOIN items i ON ((p.item_id = i.id))
          )
          LEFT JOIN libros l ON ((i.id = l.item_id))
        )
        LEFT JOIN autores a ON ((l.autor_id = a.id))
      )
      LEFT JOIN dispositivos d ON ((i.id = d.item_id))
    )
    JOIN estudiantes e ON ((p.estudiante_id = e.id))
  );