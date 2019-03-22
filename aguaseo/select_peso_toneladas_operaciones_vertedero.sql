-- select * --from operation 
 select operacion_id,fecha_registro,vehiculo_id,peso_entrada,peso_salida,peso_descargado,(peso_entrada-peso_salida) as resta,peso_descargado/1000000
 from operation 
-- where operacion_id = 52288
order by fecha_registro desc
limit 100 ;

select count(*) from operation;
select * from operation where operacion_id = 50192;


-- Buscar las frecuencias mensual por container
-- select * from operation where container_id is not null limit 100;
-- select operacion_id,fecha_registro,container_id from operation where container_id is not null order by fecha_registro desc limit 100;

-- Lista la Cantidad de Viajes por mes
select op.operacion_id,op.fecha_registro,op.container_id,
op.peso_descargado,co.code,(op.peso_descargado)/1000000 as manuel,
op.peso_entrada,op.peso_salida,op.base
from operation as op left outer join container as co on op.container_id = co.id
-- where op.container_id =  18 --259
where co.code = '259'
-- where co.code is not null
and to_char(op.fecha_registro,'YYYY-MM')='2018-08'
-- to_char(op.fecha_registro,'YYYY-MM')='2018-08'
-- order by op.fecha_registro desc, code desc
order by code desc

-- Total de Viajes por mes y contenedor
select count(container_id) as frecuencia
,sum(peso_descargado)as Toneladas
,sum(peso_entrada) as Peso_Entrada
,sum(peso_salida) as Peso_Salida
from operation
where container_id =  18
and to_char(fecha_registro,'YYYY-MM')='2018-08'
and eliminada = 'false'
group by container_id


select op.container_id,count(op.container_id) as frecuencia
,sum(op.peso_descargado)/1000000 as Toneladas
,sum(op.peso_entrada) as Peso_Entrada
,sum(op.peso_salida) as Peso_Salida
from operation as op left outer join container as co on op.container_id = co.id
-- where co.code = '259'
where co.id = 18
and to_char(op.fecha_registro,'YYYY-MM')='2018-08'
and op.eliminada = 'false'
and co.eliminada = 'false'
group by op.container_id


select * from container where code = '1015' order by code;