-- conectar a la base de datos de aguaseo produccion
select * from process.operations;
select * from containers;
-- crear extension de dblink
create extension dblink;
-- Buscar los registros de operaciones en vertedero
-- select *
-- from
-- dblink('dbname=bd_futbol','select codi_emde,desc_emde from empresa_deportivas')
-- as emp(codi_emde character varying(10),desc_empde character varying(100) );

select * from containers
where deleted = 'false'
and codi_cont = '11'
and codi_acco = 2
and codi_user = 1;