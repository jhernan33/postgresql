-- select * from container where code = '202'
select count(*) as total_cumplido
from operation 
where container_id = 14
and to_char(fecha_registro,'YYYY-MM') = '2018-08'

select * from container where id = '8'
select * from container where id = '8'
select * from container where id = 190
select * from container where code = '190';

select count(op.container_id) as frecuencia
,sum(op.peso_descargado)/1000000 as toneladas
--,sum(op.peso_entrada) as peso_entrada
--,sum(op.peso_salida) as peso_salida
from operation as op left outer join container as co on op.container_id = co.id
where co.code = '200'
and to_char(op.fecha_registro at time zone 'UTC-5','YYYY-MM') = '2018-10'
and op.eliminada = 'false'
and co.eliminada = 'false'
group by op.container_id