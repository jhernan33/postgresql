-- select * from containers where deleted ='false';
select
vert.code as Caja
,vert.container_id
,trim(to_char(to_timestamp (date_part('month',vert.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
,to_char(vert.fecha_registro at time zone 'UTC-5','MM') as mesdue
,to_char(vert.fecha_registro at time zone 'UTC-5','YYYY') as yeardue
--,sum(((vert.peso_descargado)/1000::double precision)) as Toneladas
,sum(((vert.peso_descargado)/1000000::double precision)) as Toneladas
,count(vert.code) as Viajes
,round(avg(((vert.peso_descargado)/1000000::double precision))::numeric,4) as Promedio
,(count(distinct vert.vehiculo_id)) as Vehiculos
from containers as cont
left outer join (select * from dblink('dbname=vertedero',
	'select co.code,op.container_id,op.fecha_registro,op.peso_descargado,ve.vehiculo_id,ve.placa 
	from container as co left outer join operation as op on co.id = op.container_id
	left outer join vehicle  as ve on op.vehiculo_id = ve.vehiculo_id')
  as vert (code character varying, container_id integer,fecha_registro timestamp without time zone, peso_descargado double precision, vehiculo_id integer, placa character varying)
 )as vert on cont.nomb_cont = vert.code
where 
cont.deleted ='false' 
and cont.codi_acco = 2
and cont.codi_user = 1
and (vert.fecha_registro at time zone 'UTC-5')::date between '2018-08-01' and '2018-08-30'
group by vert.code
,vert.container_id
,to_char(to_timestamp (date_part('month',vert.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')
 ,to_char(vert.fecha_registro at time zone 'UTC-5','MM')
 ,to_char(vert.fecha_registro at time zone 'UTC-5','YYYY')
--  --order by op.container_id asc,to_char(op.fecha_registro,'MM')
order by vert.code asc,to_char(vert.fecha_registro at time zone 'UTC-5','MM')



 -- co.code as Caja,op.container_id
--  ,trim(to_char(to_timestamp (date_part('month',op.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
--  ,to_char(op.fecha_registro at time zone 'UTC-5','MM') as mesdue
--  ,to_char(op.fecha_registro at time zone 'UTC-5','YYYY') as yeardue
-- --,sum(((op.peso_descargado)/1000::double precision)) as Toneladas
-- ,sum(((op.peso_descargado)/1000000::double precision)) as Toneladas
-- ,count(co.code) as Viajes
-- ,round(avg(((op.peso_descargado)/1000000::double precision))::numeric,4) as Promedio
-- ,(count(distinct op.vehiculo_id)) as Vehiculos
--  from operation as op
-- left outer join container as co on op.container_id = co.id
-- left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
-- left outer join (select * 
-- 	from dblink('dbname=bd_load','select nomb_cont from containers where deleted=false')
-- 	as cargo (nomb_cont character varying)
--     ) as cargo on co.code = cargo.nomb_cont
-- where op.container_id is not null
-- and (op.fecha_registro at time zone 'UTC-5')::date between '2018-08-01'
-- and '2018-08-30'
-- group by co.code,op.container_id,to_char(to_timestamp 
--  (date_part('month',op.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')
--  ,to_char(op.fecha_registro at time zone 'UTC-5','MM')
--  ,to_char(op.fecha_registro at time zone 'UTC-5','YYYY')
--  --order by op.container_id asc,to_char(op.fecha_registro,'MM')
--  order by co.code asc,to_char(op.fecha_registro at time zone 'UTC-5','MM')