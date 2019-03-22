select * from current_date;
select * from current_time;

select * from current_timestamp;
select * from current_timestamp ;
select (current_timestamp + interval '24 hour') as fecha;
-- Extract Month of date in format 01-12select (current_timestamp + interval '4 hour') as fecha;
select to_char(current_date,'MM');
-- Truncate to specified precision
select date_trunc('month',current_date)::date as date ;
select date_trunc('month',current_timestamp)::timestamp as date ;

SELECT EXTRACT(MONTH FROM TIMESTAMP '2001-02-16 20:38:40');

SELECT to_char(to_timestamp 
(date_part('month', timestamp '2016-03-26 20:38:40')::text, 'MM'),
 'Month');


select operacion_id,to_char(to_timestamp 
(date_part('month', fecha_registro)::text, 'MM'),'Month') 
from operation limit 100;

select now()::timestamp;

SELECT now() AT TIME ZONE current_setting('TimeZone');
SELECT now() AT TIME ZONE 'Europe/Paris';
SELECT now() AT TIME ZONE 'UTC';
