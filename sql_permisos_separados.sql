select ta.id as id_table,ta.description,ro.id as role_codi,ro.slug
,array_to_string(array_agg(distinct (case when ro.id = 34 then true else false end )),':') as permisos
--,array_to_string(array_agg(distinct pe.slug),':') as permisosdu
,array_to_string(array_agg(distinct pe.slug),':') as permisosdu
from permission_role as pr right outer join permissions as pe on pe.id = pr.permission_id 
left outer join tables as ta 	on pe.id_table = ta.id
left join roles as ro               on ro.id = pr.role_id
where ro.id = 34
and ta.id is not null
and ta.enable = true
and pe.enable = true
and ro.enable = true
group by ta.id,ta.description,ro.id
order by description;