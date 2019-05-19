#puntos_enfrentamiento

delimiter //
Create trigger puntos_enfrentamiento AFTER insert on resultado
for each row 
begin
	declare id_equipo_local int;
	declare resultado_local int;
    
	declare id_equipo_visitante int;
	declare resultado_visitante int;

	SELECT resultado.resultado_local  INTO resultado_local, enfrentamiento.inscripcion_equipo_local_id INTO id_equipo_local FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

	-- SELECT resultado.equipo_visitante  INTO equipo_visitante, enfrentamiento.inscripcion_equipo_visitante_id INTO id_equipo_visitante FROM enfrentamiento
	-- INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id 
	-- WHERE enfrentamiento.id = new.id;

    IF resultado_local > resultado_visitante THEN
        UPDATE inscripcion_equipo SET puntos = puntos + 3
    WHERE inscripcion_equipo.id = id_equipo_local; 
    END IF;
end //
delimiter ;