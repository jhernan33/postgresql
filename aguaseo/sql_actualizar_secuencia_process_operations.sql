select * from process.operations order by codi_oper;
select * from process.operations_codi_oper_seq;

-- 
select count(*) from process.operations;

-- Actualizar el valor de la secuencia
alter SEQUENCE process.operations_codi_oper_seq start with 
select max(codi_oper)from process.operations;

select count(*) from information_schema.sequences;
select * from information_schema.sequences;
select sequence_schema,sequence_name 
from information_schema.sequences;

WITH fq_objects AS (SELECT c.oid,n.nspname || '.' ||c.relname AS fqname ,c.relkind, c.relname AS relation FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace ),
    sequences AS (SELECT oid,fqname FROM fq_objects WHERE relkind = 'S'),
    tables    AS (SELECT oid, fqname FROM fq_objects WHERE relkind = 'r' )
SELECT
       s.fqname AS sequence,
       t.fqname AS table,
       a.attname AS column
FROM
     pg_depend d JOIN sequences s ON s.oid = d.objid
                 JOIN tables t ON t.oid = d.refobjid
                 JOIN pg_attribute a ON a.attrelid = d.refobjid and a.attnum = d.refobjsubid
WHERE
     d.deptype = 'a' 


DROP FUNCTION public.update_sequence();
-- Crear la funcion
create or replace function update_sequence() returns void as
$body$
declare 
totals integer; xcad varchar;
row record;
begin  
-- select count(*) into totals from information_schema.sequences;
--  for K in 1 .. select * from information_schema.sequences; loop
  -- raise 'Seq=%',total.sequence_schema||total.sequence_name;
-- for row in select * from information_schema.sequences loop
for row in WITH fq_objects AS (SELECT c.oid,n.nspname || '.' ||c.relname AS fqname ,c.relkind, c.relname AS relation FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace ),
    sequences AS (SELECT oid,fqname FROM fq_objects WHERE relkind = 'S'),
    tables    AS (SELECT oid, fqname FROM fq_objects WHERE relkind = 'r' )
SELECT
       s.fqname AS sequence,
       t.fqname AS table,
       a.attname AS column
FROM
     pg_depend d JOIN sequences s ON s.oid = d.objid
                 JOIN tables t ON t.oid = d.refobjid
                 JOIN pg_attribute a ON a.attrelid = d.refobjid and a.attnum = d.refobjsubid
WHERE
     d.deptype = 'a'  loop
  --raise notice 'Sequencia:%', row.sequence_schema||'.'||row.sequence_name;
--  xcad := row.sequence_schema||'.'||row.sequence_name;
--  raise notice 'Sequencia:%', xcad;
  -- select setval(;
-- (select max(codi_oper)from row.sequence_schema));
--    raise notice 'Sequencia:%', row.sequence||row.table||row.column;
   --select setval(row.sequence,(select max(row.column) from row.table));
   EXECUTE 'SELECT setval('''||row.sequence||''', COALESCE((SELECT MAX('||row.column||')+1 FROM '||row.table||'), 1), false);';
 end loop;
end;
$body$
language plpgsql;

select update_sequence();

select setval('process.operations_codi_oper_seq',
(select max(codi_oper)from process.operations));

alter SEQUENCE process.operations_codi_oper_seq restart;



-- CREATE OR REPLACE FUNCTION reset_sequence() RETURNS void AS 
-- $BODY$
-- DECLARE _sql VARCHAR := '';
-- DECLARE result threecol%rowtype; 
-- BEGIN
-- FOR result IN 
-- WITH fq_objects AS (SELECT c.oid,n.nspname || '.' ||c.relname AS fqname ,c.relkind, c.relname AS relation FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace ),
--     sequences AS (SELECT oid,fqname FROM fq_objects WHERE relkind = 'S'),
--     tables    AS (SELECT oid, fqname FROM fq_objects WHERE relkind = 'r' )
-- SELECT
--        s.fqname AS sequence,
--        t.fqname AS table,
--        a.attname AS column
-- FROM
--      pg_depend d JOIN sequences s ON s.oid = d.objid
--                  JOIN tables t ON t.oid = d.refobjid
--                  JOIN pg_attribute a ON a.attrelid = d.refobjid and a.attnum = d.refobjsubid
-- WHERE
--      d.deptype = 'a' 
-- LOOP
--      EXECUTE 'SELECT setval('''||result.col1||''', COALESCE((SELECT MAX('||result.col3||')+1 FROM '||result.col2||'), 1), false);';
-- END LOOP;
-- END;$BODY$ LANGUAGE plpgsql;