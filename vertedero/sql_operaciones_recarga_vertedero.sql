select op.operacion_id,op.fecha_registro,re.operation_id, re.referencia
from operation as op 
right outer join recharge as re on op.operacion_id = re.operation_id
order by op.fecha_registro
limit 100;


select count(*) from operation
select count(*) from recharge
select * from recharge where referencia is not null