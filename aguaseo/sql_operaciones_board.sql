select co.code as Caja --op.operacion_id as ID,co.code,--,op.container_id,
,(to_char(op.fecha_registro,'YYYY-MM-dd')::date) as Fecha
,(to_char(op.fecha_registro,'HH:MI:SS')::time) as Hora
,((op.peso_descargado)/1000::double precision) as Toneladas
,ve.placa as vehiculo	-- ,op.vehiculo_id as vehiculo
from operation as op
left outer join container as co on op.container_id = co.id
left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where 
op.container_id is not null
-- op.container_id = 6
and to_char(op.fecha_registro,'MM')::integer = 08
and to_char(op.fecha_registro,'YYYY')::integer = 2018
-- and op.fecha_registro between '2018-08-01'
-- and '2018-08-30' --and co.code = '269'
-- group by op.operacion_id,co.code
group by co.code,op.fecha_registro,op.peso_descargado,ve.placa,op.container_id
-- order by co.code desc--op.fecha_registro,
-- order by ve.placa desc--op.fecha_registro,
-- order by op.container_id,(to_char(op.fecha_registro,'YYYY-MM-dd')::date)
order by op.container_id,(to_char(op.fecha_registro,'YYYY-MM-dd')::date)
limit 1000;
