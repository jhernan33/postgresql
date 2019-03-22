select * from customers;
select * from customers where cust_actu = true;
select * from customers where cust_actu = true and cust_dnic = '45635';
update customers 
set cust_imag ='http://192.168.0.115:8000/images/5ab904c5ea7ab-zippyttech-2018-03-26.png'
where cust_dnic = '45635';
-- Vacio
update customers 
set cust_imag =''
where cust_dnic = '45635';