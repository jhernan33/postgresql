-- select * from evaluations;
-- select distinct on (codi_obes) codi_obes,codi_eval,pers_eval,codi_caev,codi_stco,obse_eval,stat_eval,deleted,codi_acco,codi_user,created_at,updated_at
select distinct on (ev.codi_obes) codi_obes as "objeto_estudio",cargo.container_nombre,ev.codi_eval as Codigo,
ev.created_at,ev.updated_at,ev.pers_eval,ev.codi_caev,ev.codi_stco,
ev.obse_eval,ev.stat_eval,ev.deleted,ev.codi_acco,ev.codi_user
from evaluations as ev
left outer join (
select *
from dblink('dbname=bd_load',
'select nomb_cont as container_nombre,codi_cont from containers
where deleted=false') 
as cargo(container_nombre character varying, codi_cont integer)
) as cargo on ev.codi_obes = cargo.codi_cont
order by ev.codi_obes,ev.created_at desc;
-- select codi_eval,pers_eval,codi_caev,codi_stco,codi_obes,obse_eval,stat_eval,deleted,codi_acco,codi_user,created_at,updated_at,count(*)
-- select (evaluations.*)::text, count(*)
-- select * from evaluations t1
-- where (select count(*) from evaluations t2 where t1.codi_obes = t2.codi_obes) > 1
-- order by t1.codi_obes
-- group by codi_eval,pers_eval,codi_caev,codi_stco,codi_obes,obse_eval,stat_eval,deleted,codi_acco,codi_user,created_at,updated_at
-- having count(*) >1;

-- select * from table t1
-- where (select count(*) from table t2
-- where t1.field = t2.field) > 1
-- order by field

-- select Column1, Column2, count(*)
-- from yourTable
-- group by Column1, Column2
-- HAVING count(*) > 1

-- SELECT (yourTable.*)::text, count(*)
-- FROM yourTable
-- GROUP BY yourTable.*
-- HAVING count(*) > 1