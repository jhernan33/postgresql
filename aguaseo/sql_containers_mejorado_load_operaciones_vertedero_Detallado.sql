-- -- DETALLADO DE OPERACIONES, Containers en LOAd, luego buscar operaciones vertedero
-- select 
-- load_cont.nomb_cont as Caja
-- ,verdue.operacion_id as OperacionId
-- ,verdue.referencia
-- ,verdue.fecha_registro at time zone 'UTC-5' as fecha_operacion
-- ,verdue.peso_descargado as peso_operacion
-- ,load_cont.codi_cont
-- ,verdue.vehiculo_id
-- ,verdue.placa as Vehiculo
-- from containers as load_cont
-- left outer join (
-- select * 
-- from dblink('dbname=vertedero',
-- 'select op.fecha_registro,op.peso_descargado,co.code,op.vehiculo_id,ve.placa,op.container_id,op.operacion_id,re.referencia
--  from operation as op
--  left outer join container as co on op.container_id = co.id
--  left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
--  left outer join recharge  as re on op.operacion_id = re.operation_id
--  where op.container_id is not null
--  and op.eliminada=false')
-- as verdue (fecha_registro timestamp without time zone,
--  peso_descargado double precision,
--  code character varying(255),
--  placa character varying(255),
--  container_id integer,
--  operacion_id integer,
--  vehiculo_id integer,
--  referencia character varying(255))
-- ) as verdue on load_cont.nomb_cont = verdue.code
-- --and load_cont.codi_cont = 81
-- and to_char(verdue.fecha_registro at time zone 'UTC-5','MM')::integer = 08
-- and to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY')::integer = 2018
-- -- orden
-- order by verdue.container_id
-- ,(to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date)
-- , verdue.placa desc;


-- insert into vertedero.operation(operacion_id,fecha_registro,activo,vehiculo_id,peso_entrada,route_id,trash_type_id,tipo_empresa_id,nombre_tipo_empresa,company_type_free)
-- select operacion_id,fecha_registro,activo,vehiculo_id,peso_entrada,route_id,trash_type_id,tipo_empresa_id,nombre_tipo_empresa,company_type_free from
-- dblink('dbname=vertedero',
-- 'select operacion_id,fecha_registro,activo,vehiculo_id,peso_entrada,route_id,trash_type_id,tipo_empresa_id,nombre_tipo_empresa,company_type_free from operation order by fecha_registro')
-- as emp(operacion_id integer,fecha_registro timestamp without time zone,activo boolean,vehiculo_id integer, peso_entrada double precision,route_id integer,trash_type_id integer,tipo_empresa_id integer,nombre_tipo_empresa character varying,company_type_free boolean );

-- Guardado de operaciones
-- begin;
-- do $$
-- declare tableid integer;
-- begin

-- commit;
-- Guardado en el detalle operation_details
--   insert into process.operation_details(codi_oper,feho_deop,peso_deop,codi_cont,codi_vehi,plac_vehi,obse_deop,codi_acco,codi_user)
--    select 
-- 	inserted.codi_oper,
-- 	verdue.fecha_registro at time zone 'UTC-5' as fecha_operacion
-- 	,verdue.peso_descargado as peso_operacion
-- 	,load_cont.codi_cont
-- 	,verdue.vehiculo_id
-- 	,verdue.placa as Vehiculo
-- 	,'Sincronizacion del Detalle Operaciones'
-- 	,2
-- 	,1
-- 	from containers as load_cont
-- 	left outer join (
-- 	select * 
-- 	from dblink('dbname=vertedero',
-- 	'select op.fecha_registro,op.peso_descargado,co.code,op.vehiculo_id,ve.placa,op.container_id,op.operacion_id,re.referencia
-- 	 from operation as op
-- 	 left outer join container as co on op.container_id = co.id
-- 	 left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
-- 	 left outer join recharge  as re on op.operacion_id = re.operation_id
-- 	 where op.container_id is not null
-- 	 and op.eliminada=false')
-- 	as verdue (fecha_registro timestamp without time zone,
-- 	 peso_descargado double precision,
-- 	 code character varying(255),
-- 	 placa character varying(255),
-- 	 container_id integer,
-- 	 operacion_id integer,
-- 	 vehiculo_id integer,
-- 	 referencia character varying(255))
-- 	) as verdue on load_cont.nomb_cont = verdue.code
-- 	--and load_cont.codi_cont = 81
-- 	and to_char(verdue.fecha_registro at time zone 'UTC-5','MM')::integer = 08
-- 	and to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY')::integer = 2018
-- 	-- orden
-- 	order by verdue.container_id
-- 	,(to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date)
-- 	, verdue.placa desc;
-- end $$;
-- commit;
-- select * from  process.operations_codi_oper_seq 


truncate process.operation_details cascade;
TRUNCATE process.operations cascade;
with inserted as (
 insert into process.operations(feho_oper,reci_oper,obse_oper,codi_acco,codi_user)
 (select 
	-- load_cont.nomb_cont as Caja
	-- ,verdue.operacion_id as OperacionId
	verdue.fecha_registro at time zone 'UTC-5' as fecha_operacion
	,verdue.referencia
	-- ,verdue.peso_descargado as peso_operacion
	,load_cont.codi_cont,2,1
	-- ,verdue.vehiculo_id
	-- ,verdue.placa as Vehiculo
	from containers as load_cont
	left outer join (
	select * 
	from dblink('dbname=vertedero',
	'select op.fecha_registro,op.peso_descargado,co.code,op.vehiculo_id,ve.placa,op.container_id,op.operacion_id,re.referencia
	 from operation as op
	 left outer join container as co on op.container_id = co.id
	 left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
	 left outer join recharge  as re on op.operacion_id = re.operation_id
	 where op.container_id is not null
	 and op.eliminada=false')
	as verdue (fecha_registro timestamp without time zone,
	 peso_descargado double precision,
	 code character varying(255),
	 placa character varying(255),
	 container_id integer,
	 operacion_id integer,
	 vehiculo_id integer,
	 referencia character varying(255))
	) as verdue on load_cont.nomb_cont = verdue.code
	--and load_cont.codi_cont = 81
	and to_char(verdue.fecha_registro at time zone 'UTC-5','MM')::integer = 08
	and to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY')::integer = 2018
	-- orden
	order by verdue.container_id
	,(to_char(verdue.fecha_registro at time zone 'UTC-5','YYYY-MM-dd')::date)
	, verdue.placa desc)
RETURNING codi_oper,codi_acco,codi_user
), operation_details as(
 insert into process.operation_details(codi_oper,codi_acco,codi_user)
 (select inserted.codi_oper,inserted.codi_acco,inserted.codi_user from inserted)
)