select cust_dnic,cust_actu
from customers 
where cust_dnic = '654321';

update customers set cust_actu = false where cust_dnic = '654321';

select * from process.operations where oper_codi = 168;
select cust_dnic,sta_id from process.operations where oper_codi = 168;
update process.operations set sta_id = 14 where oper_codi = 168;

select cust_dnic,cust_nomb,cust_actu
from customers 
where cust_dnic = '654321';

select count(cu.cust_dnic)
from public.customers as cu
left outer join process.operations as op on cu.cust_dnic = op.cust_dnic
where cu.acc_id = 1
--or op.sta_id = 11
--or op.sta_id = 12
and op.sta_id in(11,12)
-- and cu.cust_dnic = '46654';
and cu.cust_dnic = '22222111111';

update customers set cust_actu = true where cust_dnic ='22222111111'


-- Revision del cliente
select cust_dnic,cust_nomb,cust_actu from customers where cust_nomb like '%Julio%'
update customers set cust_actu = false where cust_dnic ='3433268877';

select oper_codi,sta_id from process.operations 
where oper_codi = 196;

update process.operations set sta_id = 14 where oper_codi = 196;