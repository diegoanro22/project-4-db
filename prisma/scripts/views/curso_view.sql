CREATE OR REPLACE VIEW vista_cursos AS
SELECT
    c.id,
    c.curso,
    c.descripcion,
    c.creditos,
    c.categoria,
    c.precio,
    (
        SELECT json_agg(json_build_object(
            'id', s.id,
            'maestro', m.nombre || ' ' || m.apellido,
            'salon', sa.salon,
            'capacidad', sa.capacidad,
            'horario', (
                SELECT json_agg(json_build_object(
                    'dia', h.dia,
                    'hora_inicio', h.hora_inicio,
                    'hora_fin', h.hora_fin
                ))
                FROM horarios h
                WHERE h.seccion_id = s.id
            ),
            'estudiantes_inscritos', (
                SELECT COUNT(*)
                FROM estudiante_secciones es
                WHERE es.seccion_id = s.id
                AND es.estado IN ('INSCRITO', 'CURSANDO')
            )
        ))
        FROM secciones s
        JOIN maestros m ON s.maestro_id = m.id
        JOIN salones sa ON s.salon_id = sa.id
        WHERE s.curso_id = c.id
    ) AS secciones
FROM cursos c;