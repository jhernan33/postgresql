select  ta.id as id_table,ta.description
,array_to_string(array_agg((pe.id||'-'||pe.slug||'-'||case when ro.id = 2 then true else false end )order by pe.slug desc),':') as permisos
from permission_role as pr right outer join permissions as pe on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
where pr.role_id = 2
or pe.id not in(select permission_id from permission_role where role_id = 2) 
and ta.id is not null
and ta.enable = true
and pe.enable = true
and ro.enable = true
group by ta.id,ta.description
order by description;

--select * from permission_role where role_id = 2;

--select * from permission_role where role_id = 1;
--select * from permission_role where role_id = 1 and permission_id in(31,32,33,34,35,41,42,43,44,45,46,47,48,49,50,76,77,78,79,80,81,82,83,84,85,135);
-- Borrar los roles de no usados a sysadmin
-- delete from permission_role where role_id = 1 and permission_id in(31,32,33,34,35,41,42,43,44,45,46,47,48,49,50,76,77,78,79,80,81,82,83,84,85,135);

-- delete from permission_role where role_id = 2
-- insert into permission_role (permission_id,role_id)
-- values
-- (89,2),
-- (90,2),
-- (91,2),
-- (96,2),
-- (88,2);
-- select * from tables order by id;
-- update tables set description ='No Usados' where id =30;
-- select * from permissions;
-- select * from permissions where id_table is null;
-- update permissions set id_table =30 where id_table is null;
-- select id,name,slug,id_table,enable,disable from permissions;