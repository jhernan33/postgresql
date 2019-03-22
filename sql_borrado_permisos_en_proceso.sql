select * from permissions order by id
delete from permissions where id in (184,185,186,187,188)

select * from permission_role where role_id  = 1
and permission_id in (184,185,186,187,188)

delete from permission_role where role_id  = 1
and permission_id in (184,185,186,187,188)