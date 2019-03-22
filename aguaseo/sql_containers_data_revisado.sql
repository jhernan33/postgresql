select * from containers order by nomb_cont;
update containers set deleted = 'true' where codi_cont = 180
update containers set deleted = 'true' where codi_cont = 1
select * from containers where deleted ='true' order by nomb_cont;
select * from containers where deleted ='false' order by nomb_cont;

create SCHEMA if not exists prueba;
drop schema if exists prueba;