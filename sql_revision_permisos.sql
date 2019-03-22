select * from permissions where id = 30;
-- No usados
select * from tables where id = 30;
select * from tables order by id;
select pr.* from permission_role as pr;

select pr.* from permissions as pr
where pr.id_table = 30;
-- Borrar todos los permisos de 30
delete from permissions where id_table = 30;

-- Buscar los permissions por role
select pr.id,pr.permission_id,role_id,p.name,t.description
from permission_role as pr left outer join permissions as p
on pr.permission_id = p.id left outer join tables as t
on p.id_table = t.id order by description;

select * from users;
select * from drivers;
insert into drivers(dri_dni,dri_nam,dri_lic,dri_pho,use_nam,sta_id,acc_id) 
values(444444,'guest',4,'s/f','guest',3,1);