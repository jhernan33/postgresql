select * from customers where cust_actu = 'true';
select * from customers where cust_actu = 'false';

select  c.cust_dnic as dnic,c.cust_nomb,c.cust_imag,
(select count(oper_codi) as total from process.operations as ope where cust_dnic = c.cust_dnic and ope.sta_id = 11) as cant_oper
from customers as c where c.cust_actu = true
--or c.cust_dnic not in(select cust_dnic from process.operations)
group by c.cust_dnic
order by cant_oper desc