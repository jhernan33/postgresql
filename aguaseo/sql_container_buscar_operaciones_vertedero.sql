select * from containers order by codi_cont
select * from containers where codi_cont = 47 order by codi_cont
select * from containers where codi_cont = 219 order by codi_cont


select *
from
dblink('dbname=vertedero',
'select operacion_id,fecha_registro from operation where container_id =47  order by fecha_registro')
as emp(operacion_id integer,fecha_registro timestamp without time zone );

select *
from
dblink('dbname=vertedero',
'select id,code from container where id=47')
as ver(id integer, code character varying);

update containers set deleted = 'false' where codi_cont= '219';