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
