-- Fecha/Hora del Sistema con TimeZone
select current_timestamp;
-- Verificar la Zona horaria de la Zona
select utc_offset from pg_timezone_names where name='America/Caracas';