select id,created_at,availability,capacity,reserved,date_to,date_from
from spaces
where reserved = 'true';

delete from booking_details;
delete from bookings;
delete from spaces;
delete from targets_times_work;
delete from targets_historial;
delete from times_work;
delete from historial_generates;


--Buscar las programaciones del target_id
select id,target_id,created_at,availability,capacity,reserved,date_to,date_from,deleted
from spaces
where target_id ='200'
and deleted='false'
order by date_to;

delete from spaces where target_id ='200'

update spaces set deleted='true' where id =1522;
update spaces set deleted='false' where id in (1518,1523,1521,1522);


select *
from spaces
where reserved = true;

update spaces set reserved = true where id = 774;
update bookings set cancelled = 'false', date_canceL=null where id= 15;
-- Buscar el booking por id
select * from bookings where id = 15;

-- Buscar un space por id
select * from spaces where id= 774;

select * from spaces;

select * from historial_generates as h
where h.time_visual='2018-11-28'

select * from bookings;
select * from booking_details;
select * from historial_generates;
select * from times_work;
select * from targets_historial;
select * from targets_times_work;


-- Buscar los spaces
select * from spaces where blocked = 'true';
select * from spaces where id = '805';

-- buscar los spaces bloqueados
select id,target_id,date_to,date_from,reserved,blocked,date_blocked,user_block
from spaces where blocked='true' order by reserved;


update spaces set blocked='false', date_blocked =null, user_block='' where id = 838;

select id,date_to,date_from,reserved,blocked
from spaces order by id;

select * from bookings where id = 28;

-- Buscar los bookings;
select * from bookings;
select * from booking_details where booking_id = 31;

-- select trim(to_char(22032985.45, '999G999G999G999G999D99'))

select * from spaces order by target_id;

-- Verificar el guardado de un space
select * from historial_generates;
select * from targets_historial;

select * from historial_generates where deleted='false';
update historial_generates set deleted='false';


-- Actualizar la programacion
select * from historial_generates;
select * from times_work;

-- Guardar una nueva plantilla
insert into times_work(size,time_cancel,title,capacity,hour_start,hour_end,manager_id,time_visual,days)
values(15,360,'base15m',4,'07:00 am','05:00 pm','Anonimo','12:00:00',' "0"=>"0", "1"=>"1", "2"=>"1", "3"=>"1", "4"=>"1", "5"=>"1", "6"=>"0" ');

-- Buscar los spaces generados con el historial
select * from historial_generates;
-- delete from historial_generates where id = 30;
-- delete from targets_historial where historial_id = 30;

select * from targets_historial where historial_id = 41;
select * from spaces where history_generate_id = 41;

select id,blocked,user_block,reserved,target_id
from spaces where history_generate_id = 41
-- and blocked = 'false'
and id in (3049,3050,3068)
order by blocked;

select * from bookings order by id;

update spaces set user_block='' where id = 3068;

-- Buscar el space si esta siendo utilizado
select hg.id,sp.id,bo.id,bo.space_id--,sp.history_generate_id
from historial_generates as hg
left outer join spaces as sp on hg.id = sp.history_generate_id
left outer join bookings as bo on sp.id = bo.space_id
where hg.id = 30;

-- Condicion para el borrado del historial
select sp.id,date_to,date_from,hg.id,sp.blocked,sp.reserved,sp.deleted
from spaces as sp
left outer join historial_generates as hg on hg.id = sp.history_generate_id
where hg.id = 29
and sp.reserved='true'
or sp.blocked = 'true'
order by reserved;

-- Contar
select count(hg.id)
from spaces as sp
left outer join historial_generates as hg on hg.id = sp.history_generate_id
where hg.id = 29
and sp.reserved='true'
or sp.blocked = 'true';

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'spaces';

-- Buscar las reservaciones para la account = 1 (Teetime)
select * from bookings where account = 1; 

-- Buscar el status reserved del space
select id,reserved,history_generate_id 
from spaces where id = 1646;

select * from historial_generates;
select * from spaces where target_id = '203'
select * from spaces where history_generate_id = 58

-- Buscar los integrantes de la reservacion
select * from bookings where cancelled = 'false' order by id;
select * from bookings where id = 63;
select * from booking_details where booking_id = 63;
-- Buscar el space_id en space
select * from spaces where id = 3068;

-- pasar hstore to row
select hstore(spaces.*) from  spaces where id =3068;

select hg.id,hg.manager_id,hg.capacity,hg.spaces_generates
,hg.user_creator,hg.date_start,hg.date_end,hg.hour_start
,hg.hour_end,hg.size,hg.description,hg.deleted,hg.account
,hg.location,co.name as context, hg.time_cancel,hg.days
,hg.exceptions,hg.time_visual
,co.name
from historial_generates as hg
left outer join contexts as co on hg.context::integer = co.id
where hg.deleted ='false'


-- Borrar la reservacion
select * from historial_generates where id = 65;
-- Buscar los espacios de la reservacion
select * from spaces 
where history_generate_id = 65
and reserved = true;

-- Sql consulta laravel
select "hg"."id", "hg"."date_start", "hg"."date_end", "sp"."reserved" 
from "historial_generates" as "hg" 
left join "spaces" as "sp" on "hg"."id" = "sp"."history_generate_id" 
left join "bookings" as "bo" on "bo"."space_id" = "sp"."id" 
where "hg"."id" = 65 and "hg"."deleted" = false 
and "sp"."reserved" = true 
and "sp"."deleted" = false
 and "sp"."blocked" = true and "bo"."deleted" = false

-- Sql para buscar los miembros de la reservacion
select * from bookings where deleted='false' order by id;
select * from booking_details where booking_id = 66;

-- Buscar el campo capacity desde bookings
select bo.space_id,hg.capacity
from bookings as bo
left outer join spaces as sp on bo.space_id = sp.id 
left outer join historial_generates as hg on sp.history_generate_id = hg.id
where bo.id = 66;

-- Buscar el context desde bookings
select bo.space_id,co.name
from bookings as bo
left outer join spaces as sp on bo.space_id = sp.id 
left outer join historial_generates as hg on sp.history_generate_id = hg.id
left outer join contexts as co on hg.context::integer = co.id
where bo.id = 66;

select * from bookings where id = 67;
select * from booking_details where booking_id = 67;

-- Verificar el borrado de la programacio
select * from historial_generates where id = 66;
select * from spaces where history_generate_id = 41;
-- delete from spaces where history_generate_id = 66;
select * from bookings where space_id = 5681;
select * from booking_details where booking_id = 67;


select * from "bookings" 
left join "spaces" on "spaces"."id" = "bookings"."space_id" 
left join "booking_details" on "booking_details"."booking_id" = "bookings"."id"
left join "historial_generates" on "historial_generates"."id" = "spaces"."history_generate_id"
left join "targets_historial" on "targets_historial"."historial_id" = "historial_generates"."id" 
  where "spaces"."history_generate_id" = 66

select * from historial_generates;
select * from spaces where history_generate_id = 78 order by date_from;

select * from bookings order by id desc;
update bookings set space_id = 6665, cancelled = 'false', penalized='false', date_cancel=null where id = 72;
--update bookings set space_id = 6644, cancelled = 'false', penalized='false', date_cancel=null where id = 72;

‌select spaces.id, spaces.created_at, spaces.target_id,
spaces.capacity, spaces.date_from, spaces.date_to,
spaces.manager_id, spaces.location_id, spaces.blocked,
spaces.user_block, spaces.description, spaces.title,
spaces.deleted, spaces.reserved, spaces.account,
cont.name as context_id, h.time_visual, h.time_cancel 
from spaces 
left join historial_generates as h on spaces.history_generate_id = h.id 
left join contexts as cont on spaces.context_id = cont.id 
where h.deleted = 'false' 
and spaces.date_from::TIMESTAMP - h.time_visual <= '2019-01-22 09:38:04'::TIMESTAMP 
AND spaces.date_from::TIMESTAMP >= '2019-01-22 09:38:04'::TIMESTAMP 
order by spaces.id asc;