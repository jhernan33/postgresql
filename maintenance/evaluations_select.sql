select * from evaluations;
select * from evaluations where stat_eval = false;
select * from evaluations where stat_eval = true;

create extension if not exists plpgsql;