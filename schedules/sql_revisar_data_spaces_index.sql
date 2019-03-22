select spaces.date_from
-- ,h.time_visual
-- ,spaces.date_from::TIMESTAMP - h.time_visual <= '2019-01-22 09:38:04'::TIMESTAMP
--,spaces.date_from::TIMESTAMP - h.time_visual <= '2019-01-22 09:38:04'::TIMESTAMP
,spaces.id, spaces.created_at, spaces.target_id,
spaces.capacity, spaces.date_to,
spaces.manager_id, spaces.location_id, spaces.blocked,
spaces.user_block, spaces.description, spaces.title,
spaces.deleted, spaces.reserved, spaces.account,
cont.name as context_id, h.time_visual, h.time_cancel 
from spaces 
left join historial_generates as h on spaces.history_generate_id = h.id 
left join contexts as cont on spaces.context_id = cont.id 
where h.deleted = 'false' 
and spaces.date_from::TIMESTAMP - h.time_visual >= '2019-01-22 13:00:04'::TIMESTAMP 
AND spaces.date_from::TIMESTAMP <= '2019-01-22 14:34:04'::TIMESTAMP 
order by spaces.id asc;