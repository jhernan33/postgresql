select * from evaluations;

select * from evaluations where codi_obes='200';
select * from evaluations where codi_obes='190';

select * from evaluations where stat_eval='true';
update evaluations set stat_eval = 'false' where stat_eval ='true';
select * from remediations;

-- delete from evaluations;
-- delete from remediations;

select * from remediations;

-- Buscar las remediatios
select 
distinct on (eval.codi_obes) eval.codi_obes
,to_char(reme.feho_reme,'YYYY-MM-DD H'),reme.codi_eval,reme.pers_reme
from remediations as reme 
left outer join evaluations as eval on reme.codi_eval = eval.codi_eval
where reme.deleted='false'
and reme.codi_acco = 2
and reme.codi_user = 1
-- group by eval.codi_obes,reme.feho_reme,reme.codi_eval,reme.pers_reme
order by eval.codi_obes,reme.feho_reme desc;