select * from process.operations order by oper_codi;
select oper_codi,sta_id 
from process.operations 
where oper_codi = 114
order by oper_codi;

select * from process.operations where oper_codi = 114;
select * from process.operations_details where oper_codi = 114;
select * from process.operations_details_output where oper_codi = 114;

select * from services;