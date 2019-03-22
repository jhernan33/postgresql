select * from process.operations where oper_codi =172;
select oper_codi,sta_id from process.operations where oper_codi =162;
update process.operations set sta_id = 12 where oper_codi = 172;

select * from permission_role where role_id=2 and permission_id =5

-- Base de Datos Qatracking
select * from process.operations where oper_codi =114;
select oper_codi,sta_id from process.operations where oper_codi =114;
select * from services;
select * from services where serv_codi in (1,3);

-- Base de Datos tracking_dev
select * from process.operations where oper_codi =172;
select * from services where serv_codi = 5;

