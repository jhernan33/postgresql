select tag_id,numero_tag,contenedor_id
from tag_rfid 
-- where vehiculo_id is not null
where numero_tag is not null
and contenedor_id is not null