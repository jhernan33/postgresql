-- Usuario verificar el rol
select * from users where id = 4;
select * from roles where enable = true;
select * from role_user where user_id = 4;
select rous.role_id,user_id,ro.name  from role_user as rous 
left outer join roles as ro on rous.role_id = ro.id
where user_id = 4;