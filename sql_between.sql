select op.*
from process.operations as op
left outer join public.customers as cu on op.cust_dnic = cu.cust_dnic
where 
op.oper_fein between '2018-05-21'::timestamp
and '2018-05-21'::timestamp + '1 days'::interval
and op.sta_id in(13,14)
order by op.oper_fein;

