select * from process.operations where sta_id in (13,14);
select oper_codi,round(oper_peen::numeric,2) from process.operations

--roles system
select * from users;
select * from permissions where enable=true order by id;