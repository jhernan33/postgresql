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
 where spaces.date_from::TIMESTAMP - h.time_visual <= '2018-11-28 12:05:01'::TIMESTAMP 
 AND spaces.date_from::TIMESTAMP >= '2018-11-28 12:05:01'::TIMESTAMP 
 and "spaces"."reserved" = 'false'
  and "spaces"."account" = 1
   and "spaces"."date_from"::date = '2018-11-28' 
   and "spaces"."blocked" = 'false'