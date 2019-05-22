#puntos_enfrentamiento

delimiter //
Create trigger puntos_enfrentamiento AFTER insert on resultado
for each row 
begin
	declare id_equipo_local int;
	declare resultado_local int;
    
	declare id_equipo_visitante int;
	declare resultado_visitante int;

-- Equipo Local
	SELECT resultado.resultado_local  INTO resultado_local FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

	SELECT enfrentamiento.inscripcion_equipo_local_id INTO id_equipo_local FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

-- Equipo Visitante
	SELECT resultado.resultado_visitante  INTO resultado_visitante FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

	SELECT enfrentamiento.inscripcion_equipo_visitante_id INTO id_equipo_visitante FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;


    IF resultado_local > resultado_visitante THEN
			UPDATE inscripcion_equipo SET puntos = puntos + 3
			WHERE inscripcion_equipo.id = id_equipo_local;

			ELSEIF resultado_visitante > resultado_local THEN
				UPDATE inscripcion_equipo SET puntos = puntos + 3
				WHERE inscripcion_equipo.id = id_equipo_visitante;

				ELSEIF resultado_local = resultado_visitante THEN
					UPDATE inscripcion_equipo SET puntos = puntos + 1 WHERE inscripcion_equipo.id = id_equipo_local; 
					UPDATE inscripcion_equipo SET puntos = puntos + 1 WHERE inscripcion_equipo.id = id_equipo_visitante; 
    END IF;
end //
delimiter ;



DROP TRIGGER puntos_enfrentamiento;
