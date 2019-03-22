select * from process.operations;

select op.oper_codi,op.sta_id,st.sta_des
from process.operations as op
left outer join status as st
on op.sta_id = st.sta_id;