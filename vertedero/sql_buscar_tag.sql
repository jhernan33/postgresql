-- Buscar los datos del tag
select tag_id, vehiculo_id,contenedor_id
from tag_rfid 
where eliminada = 'false'
order by contenedor_id