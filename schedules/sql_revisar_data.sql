-- buscar los bookings de la cuenta dos
select * from bookings where account = 2 order by id;

-- restablecer 
update bookings set state_id = 2 where id = 174;
-- select * from bookings 
select id,space_id,state_id,created_at,updated_at from bookings 
where account = 2 and id = 174
order by id;

-- Buscar los espacios de la cuenta dos
select * from spaces where account= 2;

-- Buscar los status
select * from states;

-- Buscar los targets reigstrados
select * from targets;

-- Buscar le detail de booking
select * from booking_details;

-- Buscar los targets times work
select * from targets_times_work;

-- Buscar la evaluacion del objeto de estudio 107
-- select bo.id,bo.space_id,bo.user_creator,bo.responsable,bo.penalized,bo.date_cancel,bo.created_at,bo.updated_at
select bo.id,bo.space_id,bo.created_at
,sp.date_to,bo.state_id,sp.target_id,st.name
-- ,bd.person,bd.occupied,bd.occupant,bd.description
from bookings as bo left outer join spaces as sp on bo.space_id = sp.id
left outer join targets as ta on sp.target_id = ta.id
left outer join states as st on bo.state_id = st.id
-- left outer join booking_details as bd on bo.id = bd.booking_id
where bo.account = 2
and date_to ='2018-11-01 22:10:00'
and sp.target_id = '193'
order by target_id

-- Realizar la operacion de espacio disponible
-- update bookings set stat_id = 
