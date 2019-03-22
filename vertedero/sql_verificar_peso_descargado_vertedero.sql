select oper.operacion_id,oper.fecha_registro,oper.peso_entrada,oper.peso_salida
,(oper.peso_descargado)/1000000,oper.vehiculo_id,vehi.placa
from operation as oper
left outer join vehicle as vehi on oper.vehiculo_id = vehi.vehiculo_id
 order by operacion_id desc limit 10 ;

-- select * from operation limit 10;