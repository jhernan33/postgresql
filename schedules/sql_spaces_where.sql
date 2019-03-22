-- select * from bookings;
-- select * from spaces;

select * from spaces 
where to_char(date_from,'YYYY-MM-DD')='2018-10-15'
and spaces.account=1
and reserved =false;

select * from bookings where space_id = 141;

select bd.* 
from booking_details as bd left outer join bookings as b on b.id = bd.booking_id
where b.space_id = 141;

select b.*,s.capacity
from bookings as b
left outer join spaces as s
on b.space_id = s.id
where b.id = 53;

select * from spaces where id = 141;