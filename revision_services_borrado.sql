select * from services order by serv_codi;

update services set serv_actu = true where serv_codi = 14;

select count(se.serv_codi)
from process.operations_details as opde 
left join services as se on opde.serv_codi = se.serv_codi
where se.acc_id = 1
and se.serv_codi = 14

select * from services order by serv_codi;

select * from process.operations where sta_id in (13,14) order by oper_fefi;


select * from process.operations where oper_codi= 217;
select * from "services" left join "process"."operations_details" as "opde" on "opde"."serv_codi" = "services"."serv_codi" where "services"."acc_id" = ? and "services"."serv_codi" = ?