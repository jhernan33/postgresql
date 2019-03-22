select * from process.operations;
select * from customers;

-- Operations Course Customers
select c.cust_dnic,c.cust_nomb,c.cust_imag,op.oper_codi
from customers as c
right outer join process.operations as op on op.cust_dnic = c.cust_dnic
where op.sta_id = 11
group by c.cust_dnic,c.cust_nomb,c.cust_imag,op.oper_codi
union
select c.cust_dnic,c.cust_nomb,c.cust_imag,(select oper_codi from process.operations where cust_dnic = c.cust_dnic) as oper_codi
from customers as c where cust_dnic not in(select cust_dnic from process.operations where cust_dnic = c.cust_dnic)
group by c.cust_dnic,c.cust_nomb,c.cust_imag,oper_codi
order by oper_codi;

-- Operations Course Customers Group
select  c.cust_dnic as dnic,c.cust_nomb,c.cust_imag,(select count(oper_codi) as total from process.operations where cust_dnic = c.cust_dnic) as cant_oper
from customers as c
right outer join process.operations as op on op.cust_dnic = c.cust_dnic
where op.sta_id = 11
and c.cust_actu = true
group by c.cust_dnic
union
select  c.cust_dnic as dnic,c.cust_nomb,c.cust_imag,
(select count(oper_codi) as total from process.operations as ope where cust_dnic = c.cust_dnic and ope.sta_id = 11) as cant_oper
from customers as c where c.cust_actu = true
or c.cust_dnic not in(select cust_dnic from process.operations)
group by c.cust_dnic
order by cant_oper desc;

-- cliente con operaciones
select c.cust_dnic,c.cust_nomb,o.oper_codi,o.sta_id
from customers as c left outer join process.operations as o on c.cust_dnic =o.cust_dnic 
where c.cust_nomb like '%j%'





--order by op.oper_codi;

select c.cust_dnic,c.cust_nomb,c.cust_imag
from customers as c where cust_dnic not in(select cust_dnic from process.operations where cust_dnic = c.cust_dnic)

select * from process.operations where oper_codi ='27';

alter table process.operations add column oper_encl boolean default false;
COMMENT ON COLUMN process.operations.oper_encl IS 'Operacion Entrada Cerrada';

select * from process.operations_details order by opde_codi desc;

select opde.opde_codi,opde.oper_codi,opde.serv_codi,se.serv_desc
from process.operations_details as opde left outer join public.services as se on opde.serv_codi = se.serv_codi
where opde.oper_codi = 24;

select * from services;
select * from process.operations order by oper_codi desc;
select oper_codi,oper_encl,cust_dnic,dri_dni from process.operations order by oper_codi desc;
select * from process.operations_details;

select od.opde_codi,od.oper_codi,od.serv_codi,s.serv_desc,od.opde_cant,od.opde_peso,od.sta_id
from process.operations_details as od 
left outer join public.services as s
on od.serv_codi = s.serv_codi;

select * from process.operations_details_output; 


select * from customers;
select * from customers;

delete from process.tracking_process; 
delete from process.operations_details_output ;
delete from process.operations_details;
delete from process.operations;