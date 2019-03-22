-- select oper_codi,oper_fein::timestamp
select oper_codi,oper_fein::character varying
from process.operations
where oper_fein >= '2018-05-21  11:00'
and oper_fein < '2018-05-21  15:00'
order by oper_fein;