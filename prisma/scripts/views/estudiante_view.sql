CREATE OR REPLACE VIEW vista_estudiantes AS
SELECT 
    e.id,
    e.carnet,
    e.nombre || ' ' || e.apellido AS nombre_completo,
    e.email,
    e.telefono,
    e.matriculado,
    c.carrera,
    f.facultad,
    b.nombre AS beca,
    calcular_promedio_estudiante(e.id) AS promedio_notas,
    calcular_horas_beca_restantes(e.id) AS horas_beca_restantes,
    (
        SELECT json_agg(json_build_object(
            'curso', cu.curso,
            'seccion_id', s.id,
            'estado', es.estado,
            'horario', (
                SELECT json_agg(json_build_object(
                    'dia', h.dia,
                    'hora_inicio', h.hora_inicio,
                    'hora_fin', h.hora_fin
                ))
                FROM horarios h
                WHERE h.seccion_id = s.id
            )
        ))
        FROM estudiante_secciones es
        JOIN secciones s ON es.seccion_id = s.id
        JOIN cursos cu ON s.curso_id = cu.id
        WHERE es.estudiante_id = e.id
    ) AS cursos,
    (
        SELECT json_agg(json_build_object(
            'item', i.item,
            'fecha_prestamo', p.fecha_prestamo,
            'fecha_devolucion', p.fecha_devolucion,
            'estado', p.estado
        ))
        FROM prestamos p
        JOIN items i ON p.item_id = i.id
        WHERE p.estado = 'ACTIVO'
        AND p.id IN (
            SELECT id 
            FROM prestamos 
            WHERE item_id = i.id
        )
    ) AS prestamos_activos
FROM estudiantes e
JOIN carreras c ON e.carrera_id = c.id
JOIN facultades f ON c.facultad_id = f.id
LEFT JOIN becas b ON e.beca_id = b.id;