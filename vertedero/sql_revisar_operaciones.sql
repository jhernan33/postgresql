select count(*) from operation

-- Buscar el contenedor
select * from operation 
where to_char(fecha_registro,'YYYY-MM') ='2018-08'
-- and  container_id = '137'
order by fecha_registro


-- select General
select 
co.code as Caja,op.container_id
,trim(english_to_spanish(to_char(to_timestamp 
(date_part('month',op.fecha_registro)::text, 'MM'),'Month'))) as mes
,to_char(op.fecha_registro,'MM') as mesdue
,to_char(op.fecha_registro,'YYYY') as yeardue
--,sum(((op.peso_descargado)/1000::double precision)) as Toneladas
,sum(((op.peso_descargado)/1000000::double precision)) as Toneladas
,count(op.vehiculo_id) as Viajes
,round(avg(((op.peso_descargado)/1000000::double precision))::numeric,4) as Promedio
,(count(distinct op.vehiculo_id)) as Vehiculos
from operation as op
left outer join container as co on op.container_id = co.id
left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where op.container_id is not null
and op.fecha_registro::date between '2018-08-01'
and  '2018-08-31'
-- and to_char(op.fecha_registro,'MM')::integer =08
-- and to_char(op.fecha_registro,'YYYY')::integer = 2018
group by co.code,op.container_id,to_char(to_timestamp 
(date_part('month',op.fecha_registro)::text, 'MM'),'Month')
,to_char(op.fecha_registro,'MM')
,to_char(op.fecha_registro,'YYYY')
--order by op.container_id asc,to_char(op.fecha_registro,'MM')
order by co.code asc,to_char(op.fecha_registro,'MM')

-- select detallado
-- select co.code as Caja
-- ,op.operacion_id as OperacionId
-- ,(to_char(op.fecha_registro,'YYYY-MM-dd')::date) as Fecha
-- ,(to_char(op.fecha_registro,'HH:MI:SS')::time) as Hora
-- --,((op.peso_descargado)/1000::double precision) as Toneladas
-- ,((op.peso_descargado)/1000000::double precision) as Toneladas
-- ,ve.placa as vehiculo
-- from operation as op
-- left outer join container as co on op.container_id = co.id
-- left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
-- where 
-- op.container_id = 77
-- and to_char(op.fecha_registro,'MM')::integer = 08
-- and to_char(op.fecha_registro,'YYYY')::integer = 2018
-- group by co.code,op.fecha_registro,op.peso_descargado,ve.placa,op.container_id,op.operacion_id
-- --order by op.container_id,(to_char(op.fecha_registro,'YYYY-MM-dd')::date)
-- order by op.container_id,(to_char(op.fecha_registro,'YYYY-MM-dd')::date) desc