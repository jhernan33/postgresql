select pr.*,pe.slug as named,pe.id_table,ta.description,pe.slug,ro.slug as roled
from permission_role as pr
left outer join permissions as pe on pr.permission_id = pe.id
left outer join tables as ta on pe.id_table = ta.id
left outer join roles as ro on pr.role_id =ro.id
where pr.role_id= 1
and id_table = 23;
-- "delete.assign permission-true:index.assign permission-true:show.assign permission-true:store.assign permission-true:update.assign permission-true"
-- select oper_codi,sta_id from process.operations 
-- where oper_codi = 204
-- update process.operations set sta_id = 11 where oper_codi = 204;
select * from process.operations 
-- where oper_codi '[0-9]';
 where cust_dnic ~ '^[6-7]' order by cust_dnic;
--where oper_codi::character varying ~ '^[1-2]' order by oper_codi;
select * from users where use_act = true;
-- select * from roles where enable = true;
select pswhash = crypt('123456', gen_salt('md5'));
SELECT password = crypt('123456', gen_salt('md5')) FROM users;

