-- Table Graphics card
drop table if exists emc2net.grahicscard;
create table emc2net.grahicscard(
tgraf_id character varying(10),
tgraf_fabricante character varying(120)
);
-- select table
--select * from emc2net.grahicscard;
--select count(*) from emc2net.grahicscard;
truncate emc2net.grahicscard;

copy emc2net.grahicscard(tgraf_id, tgraf_fabricante) 
from '/home/hernan/sql/tgrafica.csv' delimiter ',' csv;

-- Table HardDisk
drop table if exists emc2net.harddisk;
create table emc2net.harddisk(
disco_id character varying(10),
disco_fabricante character varying(120),
disco_capacidad integer
);

truncate emc2net.harddisk;
copy emc2net.harddisk(disco_id,disco_fabricante,disco_capacidad)
from '/home/hernan/sql/disco.csv' delimiter ',' csv;

-- Table Memory
drop table if exists emc2net.memory;
create table emc2net.memory(
mem_id character varying(10),
mem_capacidad character varying(120),
men_tipo character varying(15)
);

truncate emc2net.memory;
copy emc2net.memory(mem_id,mem_capacidad,men_tipo)
from '/home/hernan/sql/memoria.csv' delimiter ',' csv;

-- Table cpu
drop table if exists emc2net.cpu;
create table emc2net.cpu(
 cpu_id character varying(10),
 cpu_fabricante character varying(120),
 cpu_tipo character varying(120)
);

truncate emc2net.cpu;
copy emc2net.cpu(cpu_id,cpu_fabricante,cpu_tipo) 
from '/home/hernan/sql/cpu.csv' delimiter ',' csv;

-- Table Pc
drop table if exists emc2net.pc;
create table emc2net.pc(
 pcid integer not null,
 mem_id character varying(10),
 cpu_id character varying(10),
 disco_id character varying(10),
 tgrafica character varying(10),
 precio double precision
);

truncate emc2net.pc;
copy emc2net.pc(pcid,mem_id,cpu_id,disco_id,tgrafica,precio)
from '/home/hernan/sql/pc.csv' delimiter ',' csv;

-- Consulta 1
select *
from emc2net.pc as a
inner join emc2net.memory as b on(a.mem_id = b.mem_id)
inner join emc2net.cpu as c on(a.cpu_id = c.cpu_id)
inner join emc2net.harddisk as d on(a.disco_id = d.disco_id)
inner join emc2net.grahicscard as e on(a.tgrafica = e.tgraf_id);

-- para acceder a los atributos de cada tabla
SELECT
a.pcid,
b.men_tipo,
b.mem_capacidad AS mem_MB,
c.cpu_fabricante AS cpu_fab,
c.cpu_tipo,
d.disco_fabricante AS disco_fab,
d.disco_capacidad AS disco_GB,
e.tgraf_fabricante AS tgraf_fab,
a.precio
FROM emc2net.pc AS a
INNER JOIN emc2net.memory AS b ON (a.mem_id = b.mem_id)
INNER JOIN emc2net.cpu AS c ON (a.cpu_id = c.cpu_id)
INNER JOIN emc2net.harddisk AS d ON (a.disco_id = d.disco_id)
INNER JOIN emc2net.grahicscard AS e ON (a.tgrafica = e.tgraf_id);

-- Terminar se ordena el resultado
SELECT
a.pcid,
b.men_tipo,
b.mem_capacidad AS mem_MB,
c.cpu_fabricante AS cpu_fab,
c.cpu_tipo,
d.disco_fabricante AS disco_fab,
d.disco_capacidad AS disco_GB,
e.tgraf_fabricante AS tgraf_fab,
a.precio
FROM emc2net.pc AS a
INNER JOIN emc2net.memory AS b ON (a.mem_id = b.mem_id)
INNER JOIN emc2net.cpu AS c ON (a.cpu_id = c.cpu_id)
INNER JOIN emc2net.harddisk AS d ON (a.disco_id = d.disco_id)
INNER JOIN emc2net.grahicscard AS e ON (a.tgrafica = e.tgraf_id)
order by precio desc;

-- Consulta 2
SELECT
a.pcid,
b.men_tipo,
b.mem_capacidad AS mem_MB,
c.cpu_fabricante AS cpu_fab,
c.cpu_tipo,
d.disco_fabricante AS disco_fab,
d.disco_capacidad AS disco_GB,
e.tgraf_fabricante AS tgraf_fab,
a.precio
FROM emc2net.pc AS a
left outer JOIN emc2net.memory AS b ON (a.mem_id = b.mem_id)
left outer JOIN emc2net.cpu AS c ON (a.cpu_id = c.cpu_id)
left outer JOIN emc2net.harddisk AS d ON (a.disco_id = d.disco_id)
left outer JOIN emc2net.grahicscard AS e ON (a.tgrafica = e.tgraf_id)
order by precio desc;

--Obtener una relación de solo los modelos de 'PC NO completos' a la venta.
-- Queremos toda la información disponible sobre los componentes que lo forman
-- Consulta 3
(SELECT
a.pcid,
b.men_tipo,
b.mem_capacidad AS mem_MB,
c.cpu_fabricante AS cpu_fab,
c.cpu_tipo,
d.disco_fabricante AS disco_fab,
d.disco_capacidad AS disco_GB,
e.tgraf_fabricante AS tgraf_fab,
a.precio
FROM emc2net.pc AS a
left outer JOIN emc2net.memory AS b ON (a.mem_id = b.mem_id)
left outer JOIN emc2net.cpu AS c ON (a.cpu_id = c.cpu_id)
left outer JOIN emc2net.harddisk AS d ON (a.disco_id = d.disco_id)
left outer JOIN emc2net.grahicscard AS e ON (a.tgrafica = e.tgraf_id)
)
except
(
SELECT
a.pcid,
b.men_tipo,
b.mem_capacidad AS mem_MB,
c.cpu_fabricante AS cpu_fab,
c.cpu_tipo,
d.disco_fabricante AS disco_fab,
d.disco_capacidad AS disco_GB,
e.tgraf_fabricante AS tgraf_fab,
a.precio
FROM emc2net.pc AS a
inner JOIN emc2net.memory AS b ON (a.mem_id = b.mem_id)
inner JOIN emc2net.cpu AS c ON (a.cpu_id = c.cpu_id)
inner JOIN emc2net.harddisk AS d ON (a.disco_id = d.disco_id)
inner JOIN emc2net.grahicscard AS e ON (a.tgrafica = e.tgraf_id)
)
order by precio desc;

-- Consulta 4
SELECT
a.pcid,
b.men_tipo,
b.mem_capacidad AS mem_MB,
c.cpu_fabricante AS cpu_fab,
c.cpu_tipo,
d.disco_fabricante AS disco_fab,
d.disco_capacidad AS disco_GB,
e.tgraf_fabricante AS tgraf_fab,
a.precio
FROM emc2net.pc AS a
left outer JOIN emc2net.memory AS b ON (a.mem_id = b.mem_id)
left outer JOIN emc2net.cpu AS c ON (a.cpu_id = c.cpu_id)
left outer JOIN emc2net.harddisk AS d ON (a.disco_id = d.disco_id)
left outer JOIN emc2net.grahicscard AS e ON (a.tgrafica = e.tgraf_id)
where c.cpu_fabricante like '%amd%'
and d.disco_fabricante like '%samsung%'
order by precio desc;

-- Consulta 5
--Obtener una relación del numero de PCs que tienen CPUs de Intel y de AMD. Ordenar de mayor a menor.

select * 
from emc2net.pc as a
inner join emc2net.cpu as b on(a.cpu_id = b.cpu_id);

-- Agrupar por fabricante
select 
b.cpu_fabricante,
count(*) as total
from emc2net.pc as a
inner join emc2net.cpu as b on (a.cpu_id = b.cpu_id)
group by b.cpu_fabricante
order by total desc;

select coalesce(1,2);
select coalesce(null,2,1);
select coalesce(3,2,1);
select coalesce(excerpt, left(content,150)) from post;

-- Coalesce Example
create table items(
id serial primary key,
product varchar(100) not null,
price numeric not null,
discount numeric
);

INSERT INTO items (product, price, discount)
VALUES
 ('A', 1000 ,10),
 ('B', 1500 ,20),
 ('C', 800 ,5),
 ('D', 500, NULL);

 select * from items;

 SELECT product, (price - discount) AS net_price FROM items;
 SELECT product, (price - COALESCE(discount,0)) AS net_price FROM items;

 SELECT product,(price - 
	CASE WHEN discount IS NULL THEN 0
	ELSE
	discount
	END
 ) AS net_price
FROM items;

-- Erase schema
drop schema audit cascade;