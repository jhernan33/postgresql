select op.* 
from operation as op left outer join container as co on op.container_id = co.id
where 
-- op.container_id = '44'
co.code = '190'
and to_char(op.fecha_registro,'YYYY-MM')='2018-08'
order by op.fecha_registro desc
--limit 1;
select * from container where code = '46'
select * from container where code = '85'
select * from container where code = '190'
select * from container where code = '198'
select * from container where code = '202'


select count(op.operacion_id)
from operation as op left outer join container as co on op.container_id = co.id
where 
co.code = '202'
and to_char(op.fecha_registro,'YYYY-MM')='2018-08'

--limit 1;