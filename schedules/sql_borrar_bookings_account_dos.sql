select b.*,s.target_id from bookings as b left outer join spaces as s
on b.space_id = s.id
where b.account = 2;

-- delete from bookings where account = 2;

-- select * from spaces;
-- select * from bookings 
-- where account = 2;
-- 
-- delete from bookings where account = 2;