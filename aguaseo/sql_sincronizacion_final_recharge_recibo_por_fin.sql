-- Buscar la data de sincronizacion
select cont.codi_cont,cont.nomb_cont
,verdue.*
from containers as cont
left outer join (select * 
from dblink('dbname=vertederodb port=5432 host=dbaguaseo.ckfkjtjzgxxj.us-east-1.rds.amazonaws.com user=aguaseo password=123456789',
'select op.*,ve.placa,co.code,ve.peso_neto,re.referencia
from operation as op left outer join container as co on op.container_id = co.id
left outer join vehicle as ve on op.vehiculo_id = ve.vehiculo_id
left outer join recharge as re on op.recarga_id = re.recarga_id
where op.container_id is not null
and to_char(op.fecha_registro at time zone ''UTC-5'',''YYYY-MM'') = ''2018-12''
and op.eliminada=false')
as verdue (operacion_id integer
,fecha_registro timestamp without time zone
,fecha_actualizacion timestamp without time zone
,activo boolean
,direccion_ip character varying
,recarga_id integer
,user_agent character varying
,username_registro character varying
,username_actualizacion character varying
,vehiculo_id integer 
,peso_entrada double precision
,peso_salida double precision
,comment character varying
,empresa_id integer
,route_id integer
,trash_type_id integer
,tipo_empresa_id integer
,nombre_tipo_empresa character varying
,base double precision
,metric character varying
,unidad character varying
,peso_descargado double precision
,free boolean
,company_type_free boolean
,credito boolean
,visible boolean
,chofer character varying
,pending_id integer
,pending_manual_id integer
,chofer_id integer
,chofer_name character varying
,container_id integer
,eliminada boolean
,trash_type_min double precision
,trash_type_price double precision
,trash_type_min_price double precision
,change_id integer
,zone_id integer
,company_code character varying
,company_name character varying
,company_ruc character varying
,placa character varying
,code character varying
,peso_neto double precision
,referencia character varying)
) as verdue on cont.nomb_cont = verdue.code
where cont.deleted = 'false' order by verdue.operacion_id;
