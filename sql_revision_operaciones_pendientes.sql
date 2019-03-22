select * from roles where enable = true
select * from process.operations where oper_codi = 215;
update process.operations set sta_id = 11 where oper_codi = 215;

select * from users; 
select * from users where use_dni '12345671'; 
select * from drivers where dri_dni ='12345671' order by dri_dni;
select * from drivers order by dri_dni;

select * from permissions where slug like '%customer%';
select * from customers where cust_actu = 'true';