select c.cust_dnic,c.cust_nomb,c.cust_imag,op.oper_codi
from customers as c
right outer join process.operations as op on op.cust_dnic = c.cust_dnic
where op.sta_id = 11
union
select c.cust_dnic,c.cust_nomb,c.cust_imag,(select oper_codi from process.operations where cust_dnic = c.cust_dnic)
from customers as c where cust_dnic not in(select cust_dnic from process.operations where cust_dnic = c.cust_dnic)
order by oper_codi;
