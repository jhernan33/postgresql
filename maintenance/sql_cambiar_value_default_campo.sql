-- Cambiar el valor default en un campo
alter table public.evaluations 
alter column feho_eval drop default,
alter column feho_eval type timestamp without time zone, 
alter column feho_eval set default (to_char(CURRENT_TIMESTAMP, 'YYYY-MM-dd HH24:MI'::text))::timestamp without time zone;

alter table public.evaluations alter column feho_eval drop default, alter column feho_eval type timestamp without time zone, alter column feho_eval set default (to_char(CURRENT_TIMESTAMP, 'YYYY-MM-dd HH24:MI'::text))::timestamp without time zone;