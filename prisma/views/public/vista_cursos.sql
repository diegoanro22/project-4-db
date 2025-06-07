SELECT
  id,
  curso,
  descripcion,
  creditos,
  categoria,
  precio,
  (
    SELECT
      json_agg(
        json_build_object(
          'id',
          s.id,
          'maestro',
          (
            ((m.nombre) :: text || ' ' :: text) || (m.apellido) :: text
          ),
          'salon',
          sa.salon,
          'capacidad',
          sa.capacidad,
          'horario',
          (
            SELECT
              json_agg(
                json_build_object(
                  'dia',
                  h.dia,
                  'hora_inicio',
                  h.hora_inicio,
                  'hora_fin',
                  h.hora_fin
                )
              ) AS json_agg
            FROM
              horarios h
            WHERE
              (h.seccion_id = s.id)
          ),
          'estudiantes_inscritos',
          (
            SELECT
              count(*) AS count
            FROM
              estudiante_secciones es
            WHERE
              (
                (es.seccion_id = s.id)
                AND (
                  es.estado = ANY (
                    ARRAY ['INSCRITO'::"CursoEstado", 'CURSANDO'::"CursoEstado"]
                  )
                )
              )
          )
        )
      ) AS json_agg
    FROM
      (
        (
          secciones s
          JOIN maestros m ON ((s.maestro_id = m.id))
        )
        JOIN salones sa ON ((s.salon_id = sa.id))
      )
    WHERE
      (s.curso_id = c.id)
  ) AS secciones
FROM
  cursos c;