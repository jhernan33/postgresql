-- Container
select * from container where id = 123;
select * from container where id = 144;
-- select *
select operacion_id,fecha_registro,vehiculo_id,container_id
from operation 
where 
 container_id = 144
-- and to_char(fecha_registro,'YYYY-MM')='2018-08';
-- and to_char(fecha_registro,'YYYY-MM')='2018-08'
and container_id is not null 
order by container_id;