-- select general
 select 
 co.code as Caja,op.container_id
 ,trim(to_char(to_timestamp (date_part('month',op.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
 ,to_char(op.fecha_registro at time zone 'UTC-5','MM') as mesdue
 ,to_char(op.fecha_registro at time zone 'UTC-5','YYYY') as yeardue
,sum(((op.peso_descargado)/1000000::double precision)) as Toneladas
,count(co.code) as Viajes
,round(avg(((op.peso_descargado)/1000000::double precision))::numeric,4) as Promedio
,(count(distinct op.vehiculo_id)) as Vehiculos
from operation as op
left outer join container as co on op.container_id = co.id
left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where op.container_id is not null
and (op.fecha_registro at time zone 'UTC-5')::date between '2018-08-01' and '2018-08-31'
group by co.code,op.container_id,to_char(to_timestamp 
 (date_part('month',op.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')
 ,to_char(op.fecha_registro at time zone 'UTC-5','MM')
 ,to_char(op.fecha_registro at time zone 'UTC-5','YYYY')
 order by co.code asc,to_char(op.fecha_registro at time zone 'UTC-5','MM');

-- select detallado

select co.code as Caja
,op.operacion_id as OperacionId
,(to_char(op.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date) as Fecha
,(to_char(op.fecha_registro at time zone 'UTC-5','HH:MI:SS')::time) as Hora
-- ,op.fecha_registro
--,op.fecha_registro at time zone 'UTC-5'
--,((op.peso_descargado)/1000::double precision) as Toneladas
,((op.peso_descargado)/1000000::double precision) as Toneladas
,ve.placa as vehiculo
from operation as op
left outer join container as co on op.container_id = co.id
left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where 
op.container_id = 52
and to_char(op.fecha_registro at time zone 'UTC-5','MM')::integer = 08
and to_char(op.fecha_registro at time zone 'UTC-5','YYYY')::integer = 2018
group by co.code,op.fecha_registro,op.peso_descargado,ve.placa,op.container_id,op.operacion_id
--order by op.container_id,(to_char(op.fecha_registro,'YYYY-MM-dd')::date)
order by op.container_id,(to_char(op.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date), vehiculo desc ;

-- select *
-- from operation
-- where 
-- -- operacion_id=50339;
-- recarga_id = 58215;

-- -- Buscar la operacion y recarga y recibo
-- select op.operacion_id
-- from operation as op
-- left outer join recharge as re on op.recarga_id = re.recarga_id
-- 
-- select * from recharge --limit 100;
-- where 
-- -- operation_id = 50339;
-- recarga_id = 58215

--  select * from transaccion limit 100;
-- select count(*) from recharge;