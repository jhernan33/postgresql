-- Buscar la evaluaciones Activas
select * from evaluations;

select * from evaluations where stat_eval = true order by feho_eval;
select * from evaluations where stat_eval = false order by feho_eval;
select * from evaluations where stat_eval = false order by codi_obes;
-- Buscar las evaluaciones del objeto de estudio y solo programaciones
select * from evaluations 
where codi_obes = '201' and codi_caev=11 order by codi_obes;

select codi_eval,stat_eval from evaluations where codi_obes='201';
select * from evaluations where codi_obes='189';
-- Buscar las evaluaciones estatus false y ordenadas por objeto de estudio
select * from evaluations where stat_eval = false order by codi_obes;
select * from remediations;1

select * from evaluations where codi_eval = 80;
update evaluations set stat_eval =false where codi_eval in(92,94);

select * from evaluations where stat_eval = true and codi_obes=201;
select * from evaluations where stat_eval = true;
select * from remediations;
-- Restaurar
update evaluations set stat_eval =false;
delete from remediations;

select * from evaluations where codi_eval=92;

select * from evaluations where stat_eval ='false' 
and deleted='false'
and codi_caev =11
order by feho_eval;

-- Filtrar las evaluaciones por contenedor
select * from evaluations 
where stat_eval ='false' 
and deleted='false' 
and codi_obes = 200
and codi_caev = 10
order by feho_eval;

