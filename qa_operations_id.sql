select * from process.operations where oper_codi = 16;

select * from process.operations_details where oper_codi = 16;

select * from process.operations_details_output where oper_codi = 16;

-- Operation, DetailOperation, OutPut
select op.*,opd.*,opdo.*
from process.operations as op 
left outer join process.operations_details as opd 
on op.oper_codi = opd.oper_codi 
left outer join process.operations_details_output as opdo
on op.oper_codi = opdo.oper_codi
where op.oper_codi = 16;

-- Operation, Output
select op.*,opdo.*
from process.operations as op 
left outer join process.operations_details_output as opdo
on op.oper_codi = opdo.oper_codi
where op.oper_codi = 16;

-- OutPut
select opdo.*
from process.operations as op 
left outer join process.operations_details_output as opdo
on op.oper_codi = opdo.oper_codi
where op.oper_codi = 16;

