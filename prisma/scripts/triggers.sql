-- Trigger 1: Actualizar disponibilidad de items basado en préstamos activos
CREATE OR REPLACE FUNCTION actualizar_disponibilidad_item()
RETURNS TRIGGER AS $$
DECLARE
    prestamos_activos INTEGER;
    item_cantidad INTEGER;
BEGIN
    -- Obtener la cantidad total del item y préstamos activos
    SELECT cantidad INTO item_cantidad FROM items WHERE id = COALESCE(NEW.item_id, OLD.item_id);
    
    SELECT COUNT(*) INTO prestamos_activos 
    FROM prestamos 
    WHERE item_id = COALESCE(NEW.item_id, OLD.item_id) 
    AND estado = 'ACTIVO';
    
    -- Actualizar disponibilidad basada en si hay stock disponible
    UPDATE items 
    SET disponible = CASE 
        WHEN prestamos_activos >= item_cantidad THEN false 
        ELSE true 
    END
    WHERE id = COALESCE(NEW.item_id, OLD.item_id);
    
    RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger para items
DROP TRIGGER IF EXISTS trigger_actualizar_disponibilidad_item ON prestamos;
CREATE TRIGGER trigger_actualizar_disponibilidad_item
    AFTER INSERT OR UPDATE OR DELETE ON prestamos
    FOR EACH ROW
    EXECUTE FUNCTION actualizar_disponibilidad_item();

-- Trigger 2: Verificar disponibilidad de salones 
CREATE OR REPLACE FUNCTION verificar_disponibilidad_salon()
RETURNS TRIGGER AS $$
DECLARE
    conflicto_exists BOOLEAN;
BEGIN
    SELECT EXISTS(
        SELECT 1 FROM reservas
        WHERE salon_biblioteca_id = NEW.salon_biblioteca_id
        AND fecha = NEW.fecha
        AND id != COALESCE(NEW.id, 0) -- Excluir el registro actual en caso de UPDATE
        AND (
            (NEW.hora_inicio BETWEEN hora_inicio AND hora_fin) OR
            (NEW.hora_fin BETWEEN hora_inicio AND hora_fin) OR
            (hora_inicio BETWEEN NEW.hora_inicio AND NEW.hora_fin)
        )
    ) INTO conflicto_exists;
    
    IF conflicto_exists THEN
        RAISE EXCEPTION 'El salón ya está reservado en ese horario';
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trigger_verificar_disponibilidad_salon ON reservas;
CREATE TRIGGER trigger_verificar_disponibilidad_salon
    BEFORE INSERT OR UPDATE ON reservas
    FOR EACH ROW
    EXECUTE FUNCTION verificar_disponibilidad_salon();

-- Trigger 3: Actualizar horas de beca restantes al completar actividades
CREATE OR REPLACE FUNCTION actualizar_horas_beca_estudiante()
RETURNS TRIGGER AS $$
DECLARE
    horas_actividad INTEGER;
BEGIN
    -- Solo procesar cuando el estado cambia a COMPLETADO
    IF NEW.estado = 'COMPLETADO' AND (OLD.estado IS NULL OR OLD.estado != 'COMPLETADO') THEN
        -- Obtener las horas de la actividad
        SELECT cantidad_horas INTO horas_actividad 
        FROM horas_beca 
        WHERE id = NEW.hora_beca_id;
        
        -- Reducir las horas restantes del estudiante
        UPDATE estudiantes 
        SET horas_beca_restantes = GREATEST(0, horas_beca_restantes - horas_actividad)
        WHERE id = NEW.estudiante_id;
        
    -- Si se cancela una actividad completada, restaurar las horas
    ELSIF NEW.estado = 'CANCELADO' AND OLD.estado = 'COMPLETADO' THEN
        SELECT cantidad_horas INTO horas_actividad 
        FROM horas_beca 
        WHERE id = NEW.hora_beca_id;
        
        UPDATE estudiantes 
        SET horas_beca_restantes = horas_beca_restantes + horas_actividad
        WHERE id = NEW.estudiante_id;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trigger_actualizar_horas_beca_estudiante ON estudiante_horas_beca;
CREATE TRIGGER trigger_actualizar_horas_beca_estudiante
    AFTER INSERT OR UPDATE ON estudiante_horas_beca
    FOR EACH ROW
    EXECUTE FUNCTION actualizar_horas_beca_estudiante();

-- Trigger 4: Validar capacidad de salones al inscribir estudiantes
CREATE OR REPLACE FUNCTION validar_capacidad_salon()
RETURNS TRIGGER AS $$
DECLARE
    capacidad_salon INTEGER;
    estudiantes_inscritos INTEGER;
BEGIN
    -- Obtener capacidad del salón de esta sección
    SELECT s.capacidad INTO capacidad_salon
    FROM secciones sec
    JOIN salones s ON sec.salon_id = s.id
    WHERE sec.id = NEW.seccion_id;
    
    -- Contar estudiantes ya inscritos en esta sección
    SELECT COUNT(*) INTO estudiantes_inscritos
    FROM estudiante_secciones
    WHERE seccion_id = NEW.seccion_id
    AND estado IN ('INSCRITO', 'CURSANDO');
    
    -- Validar que no se exceda la capacidad
    IF estudiantes_inscritos >= capacidad_salon THEN
        RAISE EXCEPTION 'No se puede inscribir más estudiantes. Capacidad del salón excedida (máximo: %)', capacidad_salon;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trigger_validar_capacidad_salon ON estudiante_secciones;
CREATE TRIGGER trigger_validar_capacidad_salon
    BEFORE INSERT OR UPDATE ON estudiante_secciones
    FOR EACH ROW
    WHEN (NEW.estado IN ('INSCRITO', 'CURSANDO'))
    EXECUTE FUNCTION validar_capacidad_salon();