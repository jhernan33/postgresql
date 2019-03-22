-- select *
select op.operacion_id,op.fecha_registro,peso_descargado/1000000 as toneladas,ve.placa
from operation as op
left outer join vehicle as ve on op. vehiculo_id= ve.vehiculo_id
-- where
order by op.fecha_registro desc
limit 1
