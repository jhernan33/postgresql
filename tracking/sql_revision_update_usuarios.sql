select * from users
select * from role_user;
select * from roles;

select * from users where id = 39;
select rous.*,ro.name 
from role_user as rous left outer join roles as ro on rous.role_id = ro.id
where rous.user_id = 39;

select * from customers;