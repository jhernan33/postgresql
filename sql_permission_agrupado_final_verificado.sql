select  ta.id as id_table,ta.description
--,array_to_string(array_agg(pe.id||'-'||pe.slug||'-'||case when ro.id =2 then true else false end order by pe.slug desc),':') as permisos
,array_to_string(array_agg(distinct pe.slug||'-'||case when ro.id =1 then true else false end),':') as permisos
--,array_to_string(array_agg(permisosdue ),':') as permisos
--,array_agg(distinct (pe.id||'-'||pe.slug||'-'||case when ro.id = 13 then true else false end)) as permisos
--,array_agg(resudue.result) as permisos
--,array_agg(distinct (pe.id||'-'||pe.slug||'-'||case when ro.id = 2 then true else false end) ) as permisos
--,array_to_string(array_agg(distinct (pe.id) order by pe.id desc) ,':') as permisos_orde
from /*(select unnest(distinct (pe.id||'-'||pe.slug||'-'||case when ro.id = 13 then true else false end)) as result from permissions as pe
left outer join permission_role as pr on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
 order by pe.slug) as resudue,*/
permission_role as pr right outer join permissions as pe on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
where pr.role_id = 1
--and pe.enable = true
--and ta.enable = true
--and ro.enable = true
or pe.id not in(select distinct permission_id from permission_role where role_id = 1  order by permission_id)
--or exists(select distinct permission_id from permission_role where role_id = ro.id and ta.enable=true order by permission_id)
and ta.id is not null
and ta.enable = true
and pe.enable = true
and ro.enable = true
group by ta.id,ta.description
order by description


-- select * from roles where id = 4;