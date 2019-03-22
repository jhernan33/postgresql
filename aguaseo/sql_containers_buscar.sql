-- Buscar los containers
select * from containers;
-- Buscar los contenedores asignados
select * from container_assigneds;
-- Buscar la clasificacion de los containers
select * from classification_containers;

select setval('public.classification_containers_codi_clco_seq',2);
-- Insert de prueba para ver el codigo generado deberia ser numero 3
-- insert into classification_containers(desc_clco,codi_acco,codi_user)
-- values('Prueba',2,1);

select * from unit_measurements;
-- Insert de Prueba en la tabla de unit_measurements
insert into unit_measurements(desc_unme,codi_acco,codi_user)
values('Prueba',2,1)

select * from category_loads_codi_ctlo_seq;
select * from category_loads;
-- insert into category_loads(desc_ctlo,codi_unme,codi_acco,codi_user)
-- values('Prueba',1,2,1);

select * from zones_codi_zone_seq; 
select * from zones; 

INSERT INTO zones (codi_zone, nomb_zone,cout_zone,codi_acco,codi_user)
VALUES (1,'Panama City',ST_GeomFromText('POLYGON((
-73.973057 40.764356,
-73.981898 40.768094,
-73.958209 40.800621,
-73.949282 40.796853,
-73.973057 40.764356),
(-73.966681 40.785221,
-73.966058 40.787674,
-73.965586 40.788064,
-73.9649 40.788291,
-73.963913 40.788194,
-73.963333 40.788291,
-73.962539 40.788259,
-73.962153 40.788389,
-73.96181 40.788714,
-73.961359 40.788909,
-73.960887 40.788925,
-73.959986 40.788649,
-73.959492 40.788649,
-73.958913 40.78873,
-73.958269 40.788974,
-73.957797 40.788844,
-73.957497 40.788568,
-73.957497 40.788259,
-73.957776 40.787739,
-73.95784 40.787057,
-73.957819 40.786569,
-73.960801 40.782394,
-73.961145 40.78215,
-73.961638 40.782036,
-73.962518 40.782199,
-73.963076 40.78267,
-73.963677 40.783661,
-73.965694 40.784457,
-73.966681 40.785221)
)',4326),2,1);

-- delete from zones
INSERT INTO zones (codi_zone, nomb_zone,cout_zone,codi_acco,codi_user)
VALUES (1,'Panama City',ST_GeomFromText('POLYGON((
-73.973057 40.764356,
-73.981898 40.768094,
-73.958209 40.800621,
-73.949282 40.796853,
-73.973057 40.764356)
)',4326),2,1);

select * from zones 
where 

Select ST_GeomFromText('POINT(-79.4609576808001 43.9726680183837)', 4326)
Select codi_zone,ST_AsText(cout_zone) from zones;

select count(*) from containers;
SELECT * from containers_codi_cont_seq;