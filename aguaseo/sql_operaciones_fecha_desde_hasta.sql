-- Buscar por fecha desde y hasta
select
vert.code as Caja
--,vert.container_id
,vert.container_id
,cont.peco_cont as PesoContratado
-- ,to_char(vert.fecha_registro at time zone 'UTC-5','YYYY-MM-DD')
-- ,trim(to_char(to_timestamp (date_part('month',vert.fecha_registro at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
-- ,to_char(vert.fecha_registro at time zone 'UTC-5','MM') as mesdue
-- ,to_char(vert.fecha_registro at time zone 'UTC-5','YYYY') as yeardue
,sum(((vert.peso_descargado)/1000000::double precision)) as PesoTotal
,sum(((vert.peso_descargado)/1000000::double precision)) as Toneladas
,count(vert.code) as Viajes
,round(avg(((vert.peso_descargado)/1000000::double precision))::numeric,4) as Promedio
,(count(distinct vert.vehiculo_id)) as Vehiculos
from containers as cont
left outer join (select * from dblink('dbname=vertedero port=5432 host=127.0.0.1 user=postgres password=123456',
'select co.code,op.container_id,op.fecha_registro,op.peso_descargado,ve.vehiculo_id,ve.placa 
from container as co left outer join operation as op on co.id = op.container_id
left outer join vehicle  as ve on op.vehiculo_id = ve.vehiculo_id')
as vert (code character varying, container_id integer, fecha_registro timestamp without time zone, peso_descargado double precision, vehiculo_id integer, placa character varying)
 )as vert on cont.nomb_cont = vert.code
where 
cont.deleted ='false' 
and cont.codi_acco = 2
and cont.codi_user = 1
and (vert.fecha_registro at time zone 'UTC-5')::date between '2018-10-01' and '2018-10-11'
group by vert.container_id
,vert.code
,cont.peco_cont
-- ,vert.fecha_registro
-- ,to_char(vert.fecha_registro at time zone 'UTC-5','YYYY-MM-DD')
order by vert.code asc



