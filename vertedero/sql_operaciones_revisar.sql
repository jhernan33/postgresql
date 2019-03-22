select * 
from operation 
where to_char(fecha_registro,'YYYY-MM')='2018-08'
-- and container_id = 49
order by fecha_registro desc


select * from container
where code = '238'