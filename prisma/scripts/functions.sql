-- 1. Función para calcular el promedio de notas de un estudiante
CREATE OR REPLACE FUNCTION calcular_promedio_estudiante(p_estudiante_id INTEGER)
RETURNS DECIMAL(10,2) AS $$
DECLARE
    promedio DECIMAL(10,2);
BEGIN
    SELECT COALESCE(AVG(nota), 0.00)
    INTO promedio
    FROM estudiante_notas
    WHERE estudiante_id = p_estudiante_id;
    
    RETURN promedio;
END;
$$ LANGUAGE plpgsql;

--2. Función para Calcular Horas de Beca Restantes
CREATE OR REPLACE FUNCTION calcular_horas_beca_restantes(p_estudiante_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
    horas_totales INTEGER;
    horas_completadas INTEGER;
    horas_restantes INTEGER;
BEGIN
    -- Obtener horas totales de la beca del estudiante
    SELECT b.porcentaje * 40 / 100 INTO horas_totales
    FROM estudiantes e
    JOIN becas b ON e.beca_id = b.id
    WHERE e.id = p_estudiante_id;
    
    -- Si no tiene beca, retornar 0
    IF horas_totales IS NULL THEN
        RETURN 0;
    END IF;
    
    -- Calcular horas completadas
    SELECT COALESCE(SUM(hb.cantidad_horas), 0) INTO horas_completadas
    FROM estudiante_horas_beca ehb
    JOIN horas_beca hb ON ehb.hora_beca_id = hb.id
    WHERE ehb.estudiante_id = p_estudiante_id
    AND ehb.estado = 'COMPLETADO';
    
    -- Calcular horas restantes
    horas_restantes := horas_totales - horas_completadas;
    
    -- No permitir valores negativos
    IF horas_restantes < 0 THEN
        RETURN 0;
    END IF;
    
    RETURN horas_restantes;
END;
$$ LANGUAGE plpgsql;

-- 3. Función para Verificar Disponibilidad de Salón
CREATE OR REPLACE FUNCTION verificar_disponibilidad_salon(
    p_salon_id INTEGER,
    p_fecha DATE,
    p_hora_inicio TIME,
    p_hora_fin TIME
)
RETURNS BOOLEAN AS $$
DECLARE
    existe_reserva BOOLEAN;
BEGIN
    -- Verificar si hay reservas que se solapen con el horario solicitado
    SELECT EXISTS (
        SELECT 1
        FROM reservas r
        WHERE r.salon_biblioteca_id = p_salon_id
        AND r.fecha = p_fecha
        AND (
            (r.hora_inicio < p_hora_fin AND r.hora_fin > p_hora_inicio)
        )
    ) INTO existe_reserva;
    
    -- Retornar TRUE si está disponible 
    RETURN NOT existe_reserva;
END;
$$ LANGUAGE plpgsql;