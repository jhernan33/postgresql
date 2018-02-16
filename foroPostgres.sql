-- Practicas foros de postgresql
select pg_user.usename from pg_user;

--The example for creating a check constraint is missing a comma
drop table distributors;

create table distributors(
 did integer,
 name varchar(40)
 constraint con1 check(did > 100 and name<>'')
);

insert into distributors values(101,'Friends');
-- add file table 
alter table distributors add column estatus varchar(10);

select * from distributors;
--  Permisos para usuario por Columnas
create role hernan;
select * from pg_roles;

--show the value of a run-time parameter
show all;

-- how to show table structure?
SELECT relhasindex, relkind, relchecks, reltriggers, relhasrules
FROM pg_class WHERE relname='distributors';

--********* QUERY **********
SELECT a.attname, format_type(a.atttypid, a.atttypmod), a.attnotnull,
a.atthasdef, a.attnum
FROM pg_class c, pg_attribute a
WHERE c.relname = 'distributors'
  AND a.attnum > 0 AND a.attrelid = c.oid
ORDER BY a.attnum
--**************************

--********* QUERY **********
SELECT substring(d.adsrc for 128) FROM pg_attrdef d, pg_class c
WHERE c.relname = 'distributors' AND c.oid = d.adrelid AND d.adnum = 1

-- Permissions on the table
grant select on distributors to public;
grant select, update, insert on distributors to postgres;
grant select (did), update (did) on distributors to hernan;

-- List Permissions on the table
select * from information_schema.role_table_grants where grantee='hernan';
select current_user;
select has_table_privilege('public.distributors','select');
select has_table_privilege('hernan','public.distributors','select, delete with grant option');
select has_table_privilege('hernan','public.distributors','insert, select with grant option');
select pg_has_role('hernan','public.distributors','select, delete with grant option');


create or replace view admin.object_privileges as
select  objtype,
        schemaname,
        objname,
        owner,
        objuser,
        privs,
        string_agg(
            (case   privs_individual
                    when 'arwdDxt' then 'All'
                    when '*' then 'Grant'
                    when 'r' then 'SELECT'
                    when 'w' then 'UPDATE'
                    when 'a' then 'INSERT'
                    when 'd' then 'DELETE'
                    when 'D' then 'TRUNCATE'
                    when 'x' then 'REFERENCES'
                    when 't' then 'TRIGGER'
                    when 'X' then 'EXECUTE'
                    when 'U' then 'USAGE'
                    when 'C' then 'CREATE'
                    when 'c' then 'CONNECT'
                    when 'T' then 'TEMPORARY'
            else 'Unknown: '||privs end
            ), ', ' ORDER BY privs_individual) as privileges_pretty
from    (select objtype,
                schemaname,
                objname,
                owner,
                privileges,
                (case when coalesce(objuser,'') is not distinct from
'' then 'public' else objuser end)
                    || (case when pr2.rolsuper then '*' else '' end)
                as objuser,
                privs,
                (case   when privs in ('*','arwdDxt') then privs
                        else regexp_split_to_table(privs,E'\\s*')
                end) as privs_individual
        from    (select distinct
                        objtype,
                        schemaname,
                        objname,
                        coalesce(owner,'') || (case when pr.rolsuper
then '*' else '' end) as owner,
                        regexp_replace(privileges,E'\/.*','') as privileges,

(regexp_split_to_array(regexp_replace(privileges,E'\/.*',''),'='))[1]
as objuser,

(regexp_split_to_array(regexp_replace(privileges,E'\/.*',''),'='))[2]
as privs
                from    (SELECT n.nspname as schemaname,
                                c.relname as objname,
                                CASE c.relkind WHEN 'r' THEN 'table'
WHEN 'v' THEN 'view' WHEN 'S' THEN 'sequence' END as objtype,

regexp_split_to_table(array_to_string(c.relacl,','),',') as
privileges,
                                pg_catalog.pg_get_userbyid(c.relowner) as Owner
                        FROM pg_catalog.pg_class c
                        LEFT JOIN pg_catalog.pg_namespace n ON n.oid =
c.relnamespace
                        WHERE c.relkind IN ('r', 'v', 'S', 'f')
                        AND n.nspname !~ '(pg_catalog|information_schema)'
                        --AND pg_catalog.pg_table_is_visible(c.oid) /*
Uncomment to show only objects */
                        ) as y                                      /*
visible in search path */
                left join pg_roles pr on (pr.rolname = y.owner)
                ) as p2
        left join pg_roles pr2 on (pr2.rolname = p2.objuser)
        --where coalesce(p2.objuser,'') is distinct from '' /*
Uncomment to hide "public" role */
        ) as p3
group by objtype, schemaname,objname, owner, objuser, privs
order by objtype,schemaname,objname,objuser,privileges_pretty;

comment on column admin.object_privileges.owner is '"*" after the
owner indicates that the owner is a superuser';
comment on column admin.object_privileges.objuser is '"*" after the
objuser indicates that the objuser is a superuser';