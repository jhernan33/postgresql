select co.code as Caja,op.container_id
,op.operacion_id as OperacionId
,(to_char(op.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date) as Fecha
,(to_char(op.fecha_registro at time zone 'UTC-5','HH:MI:SS')::time) as Hora
-- ,to_char(op.fecha_registro at time zone 'UTC-5','MM') as mesdue
,((op.peso_descargado)/1000000::double precision) as Toneladas
,ve.placa as vehiculo
from operation as op
left outer join container as co on op.container_id = co.id
left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where 
op.container_id = 52
 and (op.fecha_registro at time zone 'UTC-5')::date between '2018-10-01' and '2018-10-11'
group by co.code,op.fecha_registro,op.peso_descargado,ve.placa,op.container_id,op.operacion_id
order by op.container_id,(to_char(op.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date) desc