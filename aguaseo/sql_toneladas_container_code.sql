-- select * from containers;
-- *************************************
-- Search Travels of Container and Month
-- *************************************
select cont.codi_cont,cont.nomb_cont,
verdue.toneladas,verdue.frecuencia
from containers as cont
left outer join (select * 
from dblink('dbname=vertedero',
' select count(op.container_id) as frecuencia
,sum(op.peso_descargado)/1000000 as toneladas,co.code
 from operation as op left outer join 
 container as co on op.container_id = co.id
 where op.container_id is not null
 and to_char(op.fecha_registro at time zone ''UTC-5'',''YYYY-MM'') = ''2018-10''
 and op.eliminada=false group by co.code')
as verdue (frecuencia integer,
 toneladas double precision,code character varying)
) as verdue on cont.nomb_cont = verdue.code
where cont.nomb_cont = '200';

--**********************************************************************
--Search operations for Id Container in OperationVertedero Bottom Travel
--**********************************************************************

select cont.codi_cont,cont.nomb_cont,verdue.fecha_registro
,verdue.toneladas,verdue.placa,verdue.code
from containers as cont
left outer join (select * 
from dblink('dbname=vertedero',
' select to_char(op.fecha_registro at time zone ''UTC-5'',''YYYY-MM-dd'') as fecha_registro,
 to_char(op.fecha_registro at time zone ''UTC-5'',''HH:MI:SS'')as hora_registro,
 peso_descargado/1000000 as toneladas,ve.placa,co.code
 from operation as op left outer join container as co on op.container_id = co.id
 left outer join vehicle as ve on op. vehiculo_id= ve.vehiculo_id
 where op.container_id is not null
 and to_char(op.fecha_registro at time zone ''UTC-5'',''YYYY-MM'') = ''2018-10''
 and op.eliminada=false 
 group by co.code,op.fecha_registro,op.peso_descargado,ve.placa  order by op.fecha_registro desc')
as verdue (fecha_registro date,hora_registro time,
 toneladas double precision,placa character varying, code character varying)
) as verdue on cont.nomb_cont = verdue.code
where cont.nomb_cont = '200' limit 1;

--*********************************************
-- Search Percentage of the container for month
--*********************************************
/*
 select count(*) as total_cumplido
        from operation 
        where container_id = '$Container'
        and to_char(fecha_registro at time zone 'UTC-5','YYYY-MM') = '$Fecha'
        and eliminada = 'false'
*/
select verdue.total_cumplido
from containers as cont
left outer join (select * 
from dblink('dbname=vertedero',
' select count(*) as total_cumplido,co.code
 from operation as op left outer join container as co on op.container_id = co.id
 where to_char(op.fecha_registro at time zone ''UTC-5'',''YYYY-MM'') = ''2018-10''
 and op.eliminada=false 
 group by code
 ')
as verdue (total_cumplido integer,code character varying)
) as verdue on cont.nomb_cont = verdue.code
where cont.nomb_cont = '223';
