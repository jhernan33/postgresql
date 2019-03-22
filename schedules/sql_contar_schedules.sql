select count('s.target_id') as total,s.target_id
from "bookings" inner join "spaces" as "s" 
on "s"."id" = "bookings"."space_id" 
where "s"."account" = 2 and "s"."target_id" = '202'
 group by s.target_id

select "s"."target_id" as "Container", 
count('s.target_id') as cant 
from "bookings" inner join "spaces" as "s"
 on "s"."id" = "bookings"."space_id" 
 where "s"."account" = 2
 and "s"."target_id" = '202' 
 group by "s"."target_id"