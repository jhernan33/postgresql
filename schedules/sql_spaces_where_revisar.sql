select "spaces"."id", "spaces"."created_at", 
"spaces"."target_id", "spaces"."capacity", 
"spaces"."date_from", "spaces"."date_to", 
"spaces"."manager_id", "spaces"."location_id", 
"spaces"."blocked", "spaces"."user_block", 
"spaces"."description", "spaces"."title", 
"spaces"."deleted", "spaces"."reserved", 
"spaces"."account", "spaces"."context_id", 
"h"."time_visual", "h"."time_cancel" 
from "spaces" left join "historial_generates" as "h"
on "spaces"."history_generate_id" = "h"."id" 
where spaces.date_from::TIMESTAMP 
- h.time_visual <= '2018-11-26 08:06:54'::TIMESTAMP 
AND spaces.date_from::TIMESTAMP >= '2018-11-26 08:06:54'::TIMESTAMP 
and "spaces"."reserved" = false 
and "spaces"."account" = 1 
and "spaces"."date_from"::date = '2018-11-01' 
and "spaces"."blocked" = false

-- save spaces
insert into "spaces" ("target_id", "date_from", "date_to", "capacity", "location_id", "account", "date_from_to", "context_id", "manager_id", "history_generate_id", "updated_at", "created_at") 
values ('Hoyo 10', '2018-11-26 08:00:00', '2018-11-26 08:30:00', 4, Club, 1, [2018-11-26 08:00:00, 2018-11-26 08:30:00), TeeTime, Club, 1, 2018-11-26 13:20:35, 2018-11-26 13:20:35) returning "id")