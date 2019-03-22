select * from evaluations;

delete from evaluations;
select * from evaluations_codi_eval_seq;
 select setval('public.evaluations_codi_eval_seq',1);