-- Places
select * from places order by codi_plac;
-- Actualizar secuencia en place
select setval('public.places_codi_plac_seq',37);
select * from places_codi_plac_seq;
