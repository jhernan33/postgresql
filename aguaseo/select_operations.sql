-- -- bd vertedero
-- select * from operation;
-- select * from operation limit 100;
-- -- Listado de operaciones
-- select operacion_id,container_id,fecha_registro,peso_entrada,peso_salida,peso_descargado
-- from operation 
-- where container_id is not null
-- order by fecha_registro desc
-- limit 1000;


-- select co.code as Caja --op.operacion_id as ID,co.code,--,op.container_id,
-- ,(to_char(op.fecha_registro,'YYYY-MM-dd')::date) as Fecha
-- ,(to_char(op.fecha_registro,'HH:MI:SS')::time) as Hora
-- ,((op.peso_descargado)/1000::double precision) as Toneladas
-- ,ve.placa as vehiculo	-- ,op.vehiculo_id as vehiculo
-- from operation as op
-- left outer join container as co on op.container_id = co.id
-- left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
-- where op.container_id is not null
-- and op.fecha_registro between '2018-08-01'
-- and '2018-08-30'
-- -- group by op.operacion_id,co.code
-- group by co.code,op.fecha_registro,op.peso_descargado,ve.placa
-- order by co.code desc--op.fecha_registro,
-- limit 1000;

--  select to_char(op.fecha_registro,'MM') as mes
 select 
 co.code as Caja,op.container_id --op.operacion_id as ID,co.code,--,op.container_id,
 ,trim(english_to_spanish(to_char(to_timestamp 
 (date_part('month',op.fecha_registro)::text, 'MM'),'Month'))) as mes
 ,to_char(op.fecha_registro,'MM') as mesdue
 ,to_char(op.fecha_registro,'YYYY') as yeardue
-- ,(to_char(op.fecha_registro,'YYYY-MM-dd')::date) as Fecha
-- ,(to_char(op.fecha_registro,'HH:MI:SS')::time) as Hora
,sum(((op.peso_descargado)/1000::double precision)) as Toneladas
,count(co.code) as Viajes
,round(avg(((op.peso_descargado)/1000::double precision))::numeric,4) as Promedio
,(count(distinct op.vehiculo_id)) as Vehiculos
-- ,ve.placa as vehiculo	-- ,op.vehiculo_id as vehiculo
from operation as op
left outer join container as co on op.container_id = co.id
left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where op.container_id is not null
-- and (to_char(op.fecha_registro,'YYYY')::character varying) = '2018'
and op.fecha_registro between '2018-08-01'
and '2018-12-30' --and co.code like '%269%'
--  group by co.code,op.container_id,to_char(op.fecha_registro,'MM')
group by co.code,op.container_id,to_char(to_timestamp 
 (date_part('month',op.fecha_registro)::text, 'MM'),'Month')
 ,to_char(op.fecha_registro,'MM')
 ,to_char(op.fecha_registro,'YYYY')
 order by op.container_id,to_char(op.fecha_registro,'MM')
-- order by co.code desc--op.fecha_registro,
-- order by op.container_id,trim(english_to_spanish(to_char(to_timestamp 
--  (date_part('month',op.fecha_registro)::text, 'MM'),'Month')))
-- limit 1000;

-- SELECT DISTINCT COUNT(*) OVER() as total_count, 
-- * FROM operation limit 2 offset 0;

-- Describe Table
-- select column_name, data_type, character_maximum_length
-- from INFORMATION_SCHEMA.COLUMNS where table_name = 'operation';
