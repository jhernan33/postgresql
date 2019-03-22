-- Fecha/Hora del Sistema con TimeZone
select current_timestamp;
-- Verificar la Zona horaria de la Zona
select utc_offset from pg_timezone_names where name='America/Caracas';

SELECT TIMESTAMP WITH TIME ZONE '2009-11-06 17:05:01' AT TIME ZONE 'UTC-6'; --&gt; Rpta: "2009-11-07 04:05:01"
SELECT TIMESTAMP WITH TIME ZONE '2009-11-06 17:05:01' AT TIME ZONE 'UTC-7'; --&gt; Rpta: "2009-11-07 05:05:01"
SELECT TIMESTAMP WITH TIME ZONE '2009-11-06 17:05:01' AT TIME ZONE 'UTC-8'; --&gt; Rpta: "2009-11-07 06:05:01"
SELECT TIMESTAMP WITH TIME ZONE '2009-11-06 17:05:01' AT TIME ZONE 'MST'; --&gt; Rpta: "2009-11-06 15:05:01"
SELECT TIMESTAMP WITH TIME ZONE '2009-11-06 17:05:01' AT TIME ZONE 'PST'; --&gt; Rpta: "2009-11-06 14:05:01"