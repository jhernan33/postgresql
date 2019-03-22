select * from customers;
delete from customers where cust_dnic != '12478541' and cust_dnic !='94784136' and cust_dnic!='8742514' and cust_dnic != '358124986';
update customers set cust_imag='http://qatracking.zippyttech.com:8000/images/sambil.jpg' where cust_dnic ='12478541';
update customers set cust_imag='http://qatracking.zippyttech.com:8000/images/hospitalcentral.jpg' where cust_dnic ='94784136';
update customers set cust_imag='http://qatracking.zippyttech.com:8000/images/hotelgardensuites.jpg' where cust_dnic ='8742514';
update customers set cust_imag='http://qatracking.zippyttech.com:8000/images/hoteltajmahal.jpg' where cust_dnic ='358124986';