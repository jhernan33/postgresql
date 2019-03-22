/*
select op.oper_codi,op.cust_dnic,op.dri_dni,op.oper_pend,op.closed
,de.opde_codi,de.serv_codi,se.serv_desc,de.opde_cant,de.opde_peso
from process.operations as op left outer join process.operations_details as de 
on op.oper_codi = de.oper_codi
left outer join public.services as se on de.serv_codi = se.serv_codi
where op.closed = false
*/
select tr.trpr_codi,tr.trpr_fech,tr.stag_codi,st.stag_desc,tr.opde_codi,de.oper_codi,
de.serv_codi, se.serv_desc,op.cust_dnic,op.dri_dni
from process.tracking_process as tr left outer join public.stages as st
on tr.stag_codi = st.stag_codi
left outer join process.operations_details as de 
on tr.opde_codi = de.opde_codi
left outer join public.services as se on de.serv_codi = se.serv_codi
left outer join process.operations as op on de.oper_codi = op.oper_codi
where op.oper_codi = 3
and op.closed = false
order by tr.trpr_codi;

