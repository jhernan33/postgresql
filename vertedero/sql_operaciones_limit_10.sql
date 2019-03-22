-- Operations limit 10 traer el numero de recibo
select op.*,re.referencia
from operation as op
left outer join recharge as re on op.recarga_id = re.recarga_id
where container_id =77
--and operacion_id = 57991
order by operacion_id desc
limit 10;

select * from company
where empresa_id = 23;

select * from recharge where
select * from recharge where recarga_id = 60480
where referencia = '57773';

select * from operation 
where operacion_id = 57773;

-- Container 200
select *
from container
where code = '216';

-- Revisar las recargas por operacion
select *
from recharge 
where operation_id = 61389
