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