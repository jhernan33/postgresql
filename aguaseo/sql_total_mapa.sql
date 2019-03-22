-- select * from container where code = '202'
select count(*) from operation 
where to_char(fecha_registro,'YYYY-MM')='2018-08'
and container_id is not null

