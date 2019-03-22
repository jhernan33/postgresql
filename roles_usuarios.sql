select * from users;
select * from roles;
select * from roles where id =13;
delete from roles where id = 11;
update roles set enable = false where id in(5,12);
update roles set enable = true where id = 5;

-- Roles y Permissions
select * from permissions where enable = true;
select count(*) from permissions where enable = true;
select * from roles where enable = true;
select count(*) from roles where enable = true;

select * from permission_role;

-- Buscar los permisos
select pe.id,pe.name,pe.description,perool.role_id,ro.name
from permissions as pe
right join permission_role as perool on pe.id = perool.permission_id
left join roles as ro on ro.id = perool.role_id
where pe.enable = true
--and ro.name = 'sysadmin'
and ro.name = 'admin'

-- Buscar los permisos del rol
select pe.id,pe.name,pe.slug,perool.role_id,ro.name,ta.id,ta.description,
case 
when ro.id = 1 then true else false end as valor,coalesce(ro.id,0) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and ro.id = 1
order by ta.id


-- sql laravel
select pe.id,pe.slug,case when ro.id = 2 then true else false end as status,ta.id,ta.description,coalesce(ro.id,0) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and ro.id = 2
order by ta.id

union
-- Buscar los permisos no estan asignado al rol
--select pe.id,pe.name,perool.role_id--,ro.name
select pe.slug,case when ro.id = 2 then true else false end as status,coalesce(ro.id,1) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
where pe.enable = true
and pe.id not in(select permission_id from permission_role where role_id = 2)
order by role_id desc

select * from roles;


-- Datos para el FrontEnd
select pe.id_table,ta.description--,array_to_string(array_agg(pe.slug),',')as permissions
,case when ro.id = 1 then true else false end as status
,array_agg((pe.id||'-'||pe.slug||'-'||case when ro.id = 1 then true else false end ))
--,array_agg(pe.id)
--,array_agg((pe.id||'-'||pe.slug))
--,json_agg(REGEXP_REPLACE(pe.slug,'\s+$', ''))--,jsonb_agg(pe.slug)
from permission_role as pr right outer join permissions as pe on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
where pr.role_id = 1
and pe.enable = true
group by pe.id_table,ta.description,ro.id
order by pe.id_table;

--1
--SELECT REGEXP_REPLACE('enterprise 	', '\s+$', '');

-- Buscar los slug
select pe.id,pe.name,pe.slug,perool.role_id,ro.name,ta.id,ta.description,
case 
when ro.id = 1 then true else false end as valor,coalesce(ro.id,0) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and ro.id = 1
order by pe.slug

-- Otro MODELO

select pe.id,pe.name,pe.slug,perool.role_id,ro.name,ta.id,ta.description
,case when ro.id = 2 then true else false end as status,coalesce(ro.id,0) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and ro.id = 2
group by 
union
select  pe.id,pe.name,pe.slug,perool.role_id,ro.name,ta.id,ta.description
,case when ro.id = 2 then true else false end as status,coalesce(ro.id,1) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and pe.id not in(select permission_id from permission_role where role_id = 2)
order by status desc


-- Otra forma para los roles
select pe.id_table,ta.description
--,case when ro.id = 2 then true else false end as status
,array_agg((pe.id||'-'||pe.slug||'-'||case when ro.id = 2 then true else false end )) as permisos
from permission_role as pr right outer join permissions as pe on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
where pr.role_id = 2
and pe.enable = true
or pe.id not in(select permission_id from permission_role where role_id = 2)
group by pe.id_table,ta.description,ro.id
order by description


union
select pe.id_table,ta.description
--,case when ro.id = 2 then true else false end as status
,array_agg((pe.id||'-'||pe.slug||'-'||case when ro.id = 2 then true else false end ))as permisos
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and pe.id not in(select permission_id from permission_role where role_id = 2)
group by pe.id_table,ta.description,ro.id
order by id_table

