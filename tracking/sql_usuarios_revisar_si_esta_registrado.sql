select * from users;
select id,use_dni,use_nam,email,use_act from users where use_act ='true';
select * from users where use_act ='true';
-- Usuarios activos
select id,use_dni,use_nam,email,use_act 
from users 
where use_act ='true'
-- and use_nam ='perezj'
-- and email like '%juan%'
order by use_nam;
-- and use_dni ='0002313';
delete from users where id = 52;