CREATE OR REPLACE VIEW vista_prestamos AS
SELECT
    p.id,
    p.estado,
    p.fecha_prestamo,
    p.fecha_devolucion,
    i.item,
    CASE
        WHEN l.id IS NOT NULL THEN 'Libro'
        WHEN d.id IS NOT NULL THEN 'Dispositivo'
        ELSE 'Otro'
    END AS tipo_item,
    l.nombre AS libro,
    a.autor AS autor_libro,
    l.año AS año_publicacion,
    d.dispositivo AS dispositivo,
    e.nombre || ' ' || e.apellido AS estudiante,
    e.carnet
FROM prestamos p
JOIN items i ON p.item_id = i.id
LEFT JOIN libros l ON i.id = l.item_id
LEFT JOIN autores a ON l.autor_id = a.id
LEFT JOIN dispositivos d ON i.id = d.item_id
JOIN estudiantes e ON p.id = e.id;