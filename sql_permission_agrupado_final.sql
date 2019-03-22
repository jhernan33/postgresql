select pe.id,pe.name,pe.slug,ta.id,ta.description
,case when ro.id = 2 then true else false end as status,coalesce(ro.id,0) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and ro.id = 2
group by pe.id,pe.name,pe.slug,ta.id,ta.description,ro.id
union
select pe.id,pe.name,pe.slug,ta.id,ta.description
,case when ro.id = 2 then true else false end as status,coalesce(ro.id,1) as role_codi
from permissions as pe
left join permission_role as perool on pe.id = perool.permission_id
left join roles as ro               on ro.id = perool.role_id
left join tables as ta 		    on pe.id_table = ta.id
where pe.enable = true
and pe.id not in(select permission_id from permission_role where role_id = 2)
group by pe.id,pe.name,pe.slug,ta.id,ta.description,ro.id
order by status desc,description 
