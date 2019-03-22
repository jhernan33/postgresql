-- Verificar si la programacion tiene reservaciones o cancelaciones
select hg.id,hg.date_start,hg.date_end,sp.reserved
from historial_generates as hg 
left join spaces as sp on hg.id = sp.history_generate_id
left join bookings as bo on bo.space_id = sp.id
where hg.id = 41
and hg.deleted='false'
and sp.reserved = 'true'
and sp.deleted = 'false'
and sp.blocked = 'false'
and bo.deleted = 'false';