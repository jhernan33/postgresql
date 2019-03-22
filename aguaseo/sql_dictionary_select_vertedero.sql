-- create extension dblink;
-- select *
-- from
-- dblink('dbname=bd_futbol','select codi_emde,desc_emde from empresa_deportivas')
-- as emp(codi_emde character varying(10),desc_empde character varying(100) );
-- select * from public.english_to_spanish('January');
dblink('dbname=vertedero','');