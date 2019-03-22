-- RESUMEN (TOTALES, SUMAS) Containers en load luego operaciones de vertedero
select 
load_cont.nomb_cont as Caja,verdue.container_id,load_cont.codi_cont
,trim(to_char(to_timestamp (date_part('month',verdue.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
,to_char(verdue.fecha_registro at time zone 'UTC-5','MM') as mesdue
,to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY') as yeardue
,sum(((verdue.peso_descargado)/1000000::double precision)) as Toneladas
,count(verdue.code) as Viajes
,round(avg(((verdue.peso_descargado)/1000000::double precision))::numeric,4) as Promedio
,(count(distinct verdue.vehiculo_id)) as Vehiculos
from containers as load_cont
left outer join (
select * 
from dblink('dbname=vertedero',
'select op.fecha_registro,op.peso_descargado,co.code,op.vehiculo_id,op.container_id
 from operation as op
 left outer join container as co on op.container_id = co.id
 left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
 where op.container_id is not null
 and op.eliminada=false')
as verdue (fecha_registro timestamp without time zone,
 peso_descargado double precision,
 code character varying(255),
 vehiculo_id integer,
 container_id integer)
) as verdue on load_cont.nomb_cont = verdue.code
and (verdue.fecha_registro at time zone 'UTC-5')::date between '2018-08-01' and '2018-08-31'
-- operation as op
group by load_cont.nomb_cont,verdue.container_id
,load_cont.codi_cont
,to_char(to_timestamp (date_part('month',verdue.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')
,to_char(verdue.fecha_registro at time zone 'UTC-5','MM')
,to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY')
 order by load_cont.nomb_cont asc
,to_char(verdue.fecha_registro at time zone 'UTC-5','MM');



-- source code
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



select * from container where code ='200';
select count(op.container_id) as frecuencia
,sum(op.peso_descargado)/1000000 as toneladas,co.code
 from operation as op left outer join 
 container as co on op.container_id = co.id
 where op.container_id =52
 and to_char(op.fecha_registro at time zone 'UTC-5','YYYY-MM') = '2018-10'
 and op.eliminada=false group by co.code


