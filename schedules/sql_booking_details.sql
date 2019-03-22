select * from booking_details where account = 2;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'booking_details';

-- Buscar el Booking del space
select sp.id,sp.target_id::int,sp.date_to
from spaces as sp
where sp.account = 2
order by sp.target_id;

-- Buscar los spaces create for account = 2
select * from spaces where account = 2;
select id,target_id from spaces where account = 2;

select id,created_at,to_char(created_at,'YYYY-MM-DD HH24:MI')
-- to_char(created_at,'YYYY-MM-DD HH:MM')::timestamp without time zone
from spaces where account = 2 
and to_char(created_at,'YYYY-MM-DD HH24:MI')='2018-11-20 16:13';
-- and to_char(created_at,'YYYY-MM-DD HH:MM')='2018-11-20 16:13';



select * from spaces;
-- Busquedad dowhere
select "spaces"."id", "spaces"."created_at", "spaces"."target_id",
 "spaces"."capacity", "spaces"."date_from", "spaces"."date_to",
  "spaces"."manager_id", "spaces"."location_id", "spaces"."blocked",
   "spaces"."user_block", "spaces"."description", "spaces"."title", 
   "spaces"."deleted", "spaces"."reserved", "spaces"."account", 
   "spaces"."context_id"
    ,"h"."time_visual", "h"."time_cancel" 
   from "spaces"
     left join "historial_generates" as "h" 
   on "spaces"."history_generate_id" = "h"."id" 
   where 
   spaces.date_from::TIMESTAMP - h.time_visual <= '2018-11-20 11:18:29'::TIMESTAMP 
   AND spaces.date_from::TIMESTAMP >= '2018-11-20 12:00:29'::TIMESTAMP 
   and "spaces"."account" = 2 
   and 1=1 ORDER BY spaces.date_from::DATE


-- select "spaces"."id", "spaces"."created_at", "spaces"."target_id", "spaces"."capacity", "spaces"."date_from", "spaces"."date_to", "spaces"."manager_id", "spaces"."location_id", "spaces"."blocked", "spaces"."user_block", "spaces"."description", "spaces"."title", "spaces"."deleted", "spaces"."reserved", "spaces"."account", "spaces"."context_id", "h"."time_visual", "h"."time_cancel" from "spaces" left join "historial_generates" as "h" on "spaces"."history_generate_id" = "h"."id" where spaces.date_from::TIMESTAMP - h.time_visual <= '2018-11-20 10:19:51'::TIMESTAMP AND spaces.date_from::TIMESTAMP >= '2018-11-20 10:19:51'::TIMESTAMP and "spaces"."account" = 2 and 1=1 ORDER BY spaces.date_from::DATE

-- Ver la data de la tabla historial_generates
select * from historial_generates;

delete from spaces;

select * from bookings;

