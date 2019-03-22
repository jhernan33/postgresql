select * from customers;

select cust_dnic,cust_imag from customers
where cust_imag like '%http://zippypanama.com:8000%';


update customers 
set cust_imag = replace(cust_imag,'http://zippypanama.com:8000/','http://zippypanama.com:8000/prueba/')
where cust_imag like '%http://zippypanama.com:8000%';

"http://192.168.0.115:8999/images/5be99e799c8eb-zippyttech-2018-11-12.jpeg"