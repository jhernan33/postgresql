-- Funtion update_sequence
DROP FUNCTION public.update_sequence();
create or replace function update_sequence() returns void as
$body$
declare 
totals integer; xcad varchar;
row record;
begin  
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
     raise notice 'Sequencia:%', row.sequence||row.table||row.column;
   EXECUTE 'SELECT setval('''||row.sequence||''', COALESCE((SELECT MAX('||row.column||')+1 FROM '||row.table||'), 1), false);';
 end loop;
end;
$body$
language plpgsql;

select update_sequence();

-- Buscar todas las secuencias
select * from pg_class c where c.relkind='S'

select * from authenticationtoken_seq;
select count(*) from authentication_token;
select * from authentication_token order by id desc limit 10 ;

select * from operation_seq;
select count(*) from operation;
select * from operation order by operation_id desc limit 10 ;

select count(*) from access;
select * from access_seq;


 SELECT t.relname as related_table, 
           a.attname as related_column,
           s.relname as sequence_name
    FROM pg_class s 
      JOIN pg_depend d ON d.objid = s.oid 
      JOIN pg_class t ON d.objid = s.oid AND d.refobjid = t.oid 
      JOIN pg_attribute a ON (d.refobjid, d.refobjsubid) = (a.attrelid, a.attnum)
      JOIN pg_namespace n ON n.oid = s.relnamespace 
    WHERE s.relkind     = 'S' 

--   AND n.nspname     = 'public'

select * from pg_class order by relname;
select * from pg_class order by oid;
select * from information_schema.sequences;
select * from pg_depend;
select * from pg_namespace;
select * from pg_catalog.pg_tables;
select * from information_schema.tables;

SELECT table_name, column_name, column_default from
information_schema.columns where table_name='testing';

select * from information_schema.columns;

SELECT * FROM information_schema.columns WHERE column_default LIKE 'nextval%';

SELECT
  c.relname as "Name",
  CASE c.relkind WHEN 'r' THEN 'table'
  WHEN 'v' THEN 'view'
  WHEN 'm' THEN 'materialized view'
  WHEN 'i' THEN 'index'
  WHEN 'S' THEN 'sequence'
  WHEN 's' THEN 'special'
  WHEN 'f' THEN 'foreign table' END as "Type"
FROM pg_catalog.pg_class c
     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
WHERE c.relkind IN ('r','v','m','S','f','')
      AND n.nspname <> 'pg_catalog'
      AND n.nspname <> 'information_schema'
      AND n.nspname !~ '^pg_toast'
  AND pg_catalog.pg_table_is_visible(c.oid);


SELECT
  p.proname as "Name",
  'function'
FROM pg_catalog.pg_proc p
     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace
WHERE pg_catalog.pg_function_is_visible(p.oid)
      AND n.nspname <> 'pg_catalog'
      AND n.nspname <> 'information_schema';

select pg_get_serial_sequence('vehicle', 'vehicle_id');


select *
  from (select n.nspname,c.relname,
               (select substring(pg_catalog.pg_get_expr(d.adbin, d.adrelid) for 128)
                  from pg_catalog.pg_attrdef d
                 where d.adrelid=a.attrelid
                   and d.adnum=a.attnum
                   and a.atthasdef) as def
          from pg_class c, pg_attribute a, pg_namespace n
         where c.relkind='r'
           and c.oid=a.attrelid
           and n.oid=c.relnamespace
           and a.atthasdef
           and a.atttypid=20) x
 where x.def ~ '^nextval'
 order by nspname,relname;

-- Manualmente actualizar
select setval('public.access_seq',(select max(access_id) from access));  
select setval('public.accessdetail_seq',(select max(access_detail_id) from access_detail));
select setval('public.account_seq',(select max(account_id) from account));
select setval('public.antenna_seq',(select max(antenna_id) from antenna));
select setval('public.authenticationtoken_seq',(select max(id) from authentication_token));
select setval('public.automatic_seq',(select max(automatic_id) from automatic));
select setval('public.balance_seq',(select max(balance_id) from balance));
select setval('public.banco_seq',(select max(banco_id) from banco));
select setval('public.channel_seq',(select max(channel_id) from channel));
select setval('public.company_seq',(select max(company_id) from company));
select setval('public.companytype_seq',(select max(company_type_id) from company_type));
select setval('public.container_seq',(select max(container_id) from container));
select setval('public.driver_seq',(select max(driver_id) from driver));
select setval('public.event_seq',(select max(event_id) from event));
select setval('public.info_seq',(select max(info_id) from info));
select setval('public.notification_seq',(select max(notification_id) from notification));
select setval('public.operation_seq',(select max(operation_id) from operation));
select setval('public.param_seq',(select max(param_id) from param));
select setval('public.permission_seq',(select max(permission_id) from permission));
select setval('public.place_seq',(select max(place_id) from place));
select setval('public.recharge_seq',(select max(recharge_id) from recharge));
select setval('public.rechargetype_seq',(select max(recharge_type_id) from recharge_type));
select setval('public.record_seq',(select max(record_id) from record));
select setval('public.requestmap_seq',(select max(id) from request_map));
select setval('public.role_seq',(select max(id) from role));
select setval('public.rr_pending_changes_id_seq',(select max(id) from rr_pending_changes));
select setval('public.rule_seq',(select max(rule_id) from rule));
select setval('public.sandtype_seq',(select max(sand_type_id) from sand_type));
select setval('public.tag_seq',(select max(tag_id) from tag));
select setval('public.uptake_seq',(select max(uptake_id) from uptake));
select setval('public.user_seq',(select max(id) from vehicle_type));
select setval('public.vehicle_seq',(select max(vehicle_id) from vehicle));
select setval('public.vehicletype_seq',(select max(id) from vehicle_type));


