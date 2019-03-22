select * from personas;

insert into personas (cedula,nombre,apellido,sexo,fecha_nacimiento) values (27989234,'jose miguel','escalante rangel','M','2018/05/17');

insert into personas (cedula,nombre,apellido,sexo,fecha_nacimiento) 
	values (22334455,'clientas','sin factura','F','1999/08/27'),
		(99887766,'otra clienta','sin venta','F','1999/09/27');


update personas set borrado=true where cedula=27989234;

insert into personas (cedula,nombre,apellido,sexo,fecha_nacimiento) 
values (12345678,'pruebas','registro','M','2018-01-17');

select count(cedula) from personas;

select count(cedula) as toral_personas from personas;

select count(cedula)::integer as total from personas;

select count(cedula)::character varying as total from personas;

select cast(count(cedula) as character varying) as total from personas;

delete from personas where cedula=12345678;

select * from ventas;

select * from clientes;

insert into ventas (numero_factura,fecha_hora,cedula,monto_factura)
	values ('0013','2018-07-01',98765432,600),
	('0014','2018-08-05',98765432,8000),
	('0015','2018-03-09',98765432,900);

delete from ventas where numero_factura='0001';

insert into clientes (cedula,nombre,apellido,sexo,fecha_nacimiento,direccion,correo,telefono)
	values(12345678,'prueba', 'persona','M','2001-01-01','una direccion de pruena','uncorreo@deprueba.com','0412-123123');
select current_date;
select current_time;
select current_timestamp;

select * from productos;

select  * from detalles_ventas;

select ventas.*, detalles_ventas.*,productos.nombre FROM detalles_ventas
	JOIN ventas ON ventas.numero_factura=detalles_ventas.numero_factura
	JOIN productos ON productos.codigo=detalles_ventas.codigo_producto;

select personas.nombre,personas.cedula, count(ventas.numero_factura) as ventas_posee from personas
	JOIN ventas ON ventas.cedula=personas.cedula
	GROUP BY personas.cedula;

select count(detalles_ventas.codigo_producto) as mas_vendido,detalles_ventas.codigo_producto, productos.nombre from detalles_ventas
	JOIN productos ON productos.codigo=detalles_ventas.codigo_producto
 group by codigo_producto,productos.nombre  order by mas_vendido DESC limit 1;

insert into productos (codigo,nombre,descripcion,stock_min,stock_max)
	values ('a0002','teclado ejemplo', 'teclado de ejemplo para los ejemplos', 0,10);

insert into detalles_ventas (id,numero_factura,codigo_producto,precio_venta,cantidad_productos) 
	values (13,'0013','a0002',100000,1),select fecha_hora::date,round(avg(monto_factura),2)::character varying as promedio from ventas group by fecha_hora order by fecha_hora DESC limit 5
		(5,'0004','a0002',100000,1),(6,'0005','a0002',100000,1),
		(7,'0006','a0002',100000,1),(8,'0007','a0002',100000,1),
		(9,'0008','a0002',100000,1),(10,'0009','a0002',100000,1),
		(11,'0010','a0002',100000,1),(12,'0011','a0002',100000,1)


select round(avg(monto_factura),2)::character varying as promedio from ventas

select fecha_hora::date,round(avg(monto_factura),2)::character varying as promedio from ventas group by fecha_hora order by fecha_hora DESC limit 5
