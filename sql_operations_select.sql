create extension unaccent;

select * from customers;
select * from customers order by cust_nomb;
select * from customers where cust_nomb='Hospital Central';
select * from customers where lower(unaccent(cust_nomb)) like lower('%quirurgico%');
select * from customers where lower(unaccent(cust_nomb)) like lower('%medico%');
select * from customers where lower(cust_nomb) like lower('%quirurgico%');
select * from customers where lower(cust_nomb) like lower('%medico%');

select * from drivers;
select * from process.operations;
select * from process.operations_details;

delete from process.operations_details;

select * from public.services;

delete from process.operations where oper_codi in(6);
delete from process.operations_details;
-- Buscar los registros de permissions
select * from public.permissions;
select * from public.permission_role;
-- Borrar los registros de permissions
delete from public.permission_role;
delete from public.permissions;

SELECT unaccent('unaccent', 'Hôtel');
SELECT unaccent('Hôtel');