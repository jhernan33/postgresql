select * from evaluations;
select * from evaluations where codi_eval = 2;

select * from state_conditions order by codi_stco;
select * from state_conditions where codi_stco = 2;
update state_conditions set deleted = false where codi_stco = 1;
update state_conditions set deleted = false where codi_stco = 8;

select * from evaluations 
where codi_stco =8
and stat_eval = 'false'
and deleted = 'false'
and codi_acco = 2
and codi_user = 1;