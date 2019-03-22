select ta.id as id_table,ta.description
,array_to_string(array_agg((pe.id||'-'||pe.slug||'-'||case when ro.id = 2 then 1 else 0 end) order by pe.slug asc),':') as permisos
--,row_to_json(t) as permisos
from
permission_role as pr right outer join permissions as pe on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
where pr.role_id = 2
and pe.enable = true
and ta.enable = true
and ro.enable = true
or pe.id not in(select permission_id from permission_role where role_id = 2)
and ta.id is not null
group by ta.id,ta.description
order by description;
