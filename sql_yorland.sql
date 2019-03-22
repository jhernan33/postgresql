select c.cust_dnic,c.cust_nomb,o.oper_codi,o.sta_id
from customers as c left outer join process.operations as o
on c.cust_dnic = o.cust_dnic
where o.sta_id = 11 or o.cust = null
group by c.cust_dnic,c.cust_nomb,o.oper_codi
order by o.sta_id