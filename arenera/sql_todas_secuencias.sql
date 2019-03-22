-- Devuelve todas las secuencias
select * from information_schema.sequences;
select * from information_schema.sequences;
-- Devuelve todas las tablas
select * from information_schema.tables;


select * from pg_class;
select oid from pg_class;
select * from pg_namespace;
select * from pg_depend;
select * from pg_tables; 
select oid,schemaname,tablename from pg_tables; 


SELECT c.oid,n.nspname || '.' ||c.relname AS fqname ,
c.relkind, c.relname AS relation 
FROM pg_class c join pg_namespace n ON n.oid = c.relnamespace
where relkind ='S' --relkind ='r' or
order by relkind;

SELECT
c.oid,
  c.relname as "Name",
  CASE c.relkind 
  WHEN 'S' THEN 'sequence'
  END as "Type"
FROM pg_catalog.pg_class c
     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
WHERE c.relkind IN ('S','')
      AND n.nspname <> 'pg_catalog'
      AND n.nspname <> 'information_schema'
      AND n.nspname !~ '^pg_toast'
  AND pg_catalog.pg_table_is_visible(c.oid);








select * from pg_class where relnamespace= 11;
select cla.oid
from pg_class cla inner pg_namespace np
on cla.oid = np.rel

select tbl.table_name from information_schema.tables tbl
where table_schema not in ('information_schema', 'pg_catalog')
and table_type = 'BASE TABLE';

select s.sequence_schema,s.sequence_name
from information_schema.sequences s;