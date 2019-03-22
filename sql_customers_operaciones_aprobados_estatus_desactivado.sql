select * from customers 
where cust_dnic = '654321'
--cust_actu = true

update customers set cust_actu = false where cust_dnic ='654321';