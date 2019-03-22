select * from containers;
select count(*) from vertedero.operation;

select * from vertedero.container;
select * from vertedero.operation;
select * from vertedero.vehicle;

-- Borrado de las tablas
delete from vertedero.container;
delete from vertedero.operation;
delete from vertedero.vehicle;

select *
from
dblink('dbname=vertedero',
'select operacion_id,fecha_registro from operation order by fecha_registro')
as emp(operacion_id integer,fecha_registro timestamp without time zone );

-- (PROCESO DE SINCRONIZACION)
-- Realizar el insert de Operation
insert into vertedero.operation(operacion_id,fecha_registro,activo,vehiculo_id,peso_entrada,route_id,trash_type_id,tipo_empresa_id,nombre_tipo_empresa,company_type_free)
select operacion_id,fecha_registro,activo,vehiculo_id,peso_entrada,route_id,trash_type_id,tipo_empresa_id,nombre_tipo_empresa,company_type_free from
dblink('dbname=vertedero',
'select operacion_id,fecha_registro,activo,vehiculo_id,peso_entrada,route_id,trash_type_id,tipo_empresa_id,nombre_tipo_empresa,company_type_free from operation order by fecha_registro')
as emp(operacion_id integer,fecha_registro timestamp without time zone,activo boolean,vehiculo_id integer, peso_entrada double precision,route_id integer,trash_type_id integer,tipo_empresa_id integer,nombre_tipo_empresa character varying,company_type_free boolean );

-- Realizar el insert de vehicle
insert into vertedero.vehicle(vehiculo_id,empresa_id,fecha_registro,fecha_actualizacion,activo,imagen,direccion_ip,placa,user_agent,username_registro,username_actualizacion,tipo_vehiculo_id,peso_neto,visible,chofer,chofer_id,eliminada)
select vehiculo_id,empresa_id,fecha_registro,fecha_actualizacion,activo,imagen,direccion_ip,placa,user_agent,username_registro,username_actualizacion,tipo_vehiculo_id,peso_neto,visible,chofer,chofer_id,eliminada from
dblink('dbname=vertedero',
'select vehiculo_id,empresa_id,fecha_registro,fecha_actualizacion,activo,imagen,direccion_ip,placa,user_agent,username_registro,username_actualizacion,tipo_vehiculo_id,peso_neto,visible,chofer,chofer_id,eliminada from vehicle')
as veh(vehiculo_id integer,empresa_id integer,fecha_registro timestamp without time zone,fecha_actualizacion timestamp without time zone,activo boolean,imagen text,direccion_ip character varying,placa character varying,user_agent character varying,username_registro character varying,username_actualizacion character varying,tipo_vehiculo_id integer,peso_neto double precision,visible boolean,chofer character varying,chofer_id integer,eliminada boolean)

-- Realizar el Insert de Container
insert into vertedero.container(id,code,company_id,fecha_registro,fecha_actualizacion,detail,activo,direccion_ip,plate,tagrfid_id,title,user_agent,username_registro,username_actualizacion,visible,eliminada)
select id,code,company_id,fecha_registro,fecha_actualizacion,detail,activo,direccion_ip,plate,tagrfid_id,title,user_agent,username_registro,username_actualizacion,visible,eliminada from
dblink('dbname=vertedero',
'select id,code,company_id,fecha_registro,fecha_actualizacion,detail,activo,direccion_ip,plate,tagrfid_id,title,user_agent,username_registro,username_actualizacion,visible,eliminada from container')
as cont(id integer,code character varying,company_id integer,fecha_registro timestamp without time zone,fecha_actualizacion timestamp without time zone,detail character varying,activo boolean,direccion_ip character varying,plate character varying,tagrfid_id integer,title character varying,user_agent character varying,username_registro character varying,username_actualizacion character varying,visible boolean,eliminada boolean)


select count(*) from vertedero.operation;
select count(*) from vertedero.vehicle;
select count(*) from vertedero.container;

select count(*) from process.operations;
select count(*) from process.operation_details;

TRUNCATE process.operations cascade;

select op.*,ve.placa
from operation as op left outer join 
container as co on op.container_id = co.id
vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where op.container_id is not null
and to_char(op.fecha_registro at time zone ''UTC-5'',''YYYY-MM'') = ''$Fecha''
and op.eliminada=false

