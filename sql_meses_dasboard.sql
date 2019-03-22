select c.cust_dnic,upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
left outer join drivers as d on op.dri_dni = d.dri_dni
left outer join process.operations_details as de on op.oper_codi = de.oper_codi
where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = '2018'||'-'||'06'
and op.oper_actu = true
and c.cust_actu = true
group by c.cust_dnic,c.cust_nomb
order by libras desc
limit 5;