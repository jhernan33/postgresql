select row_to_json(t)
from (
 select pe.id,pe.slug,case when ro.id = 2 then true else false end,ta.id as id_table,ta.description from permissions as pe
 left outer join permission_role as pr  on pe.id = pr.permission_id 
 left join roles as ro               on ro.id = pr.role_id
 left outer join tables as ta 	on pe.id_table = ta.id
  where pr.role_id = 2
 and pe.enable = true
 and ta.enable = true
 and ro.enable = true
 and ta.id is not null
 or pe.id not in(select permission_id from permission_role where role_id = 2)
 group by pe.id,pe.slug,ro.id,ta.id,ta.description
order by ta.id
) as t