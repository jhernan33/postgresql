-- State Conditions
select * from state_conditions;

-- Generar los inserts
INSERT INTO state_conditions(codi_stco,nomb_stco,desc_stco
,vapo_stco,colo_stco
,codi_acco,codi_user
)
SELECT id, 'Prueba',md5(random()::text)
      ,random()::int * 100 -random()+5,'Azul',1,1
FROM generate_series(1,5) id;

-- Buscar los hallazgos
select * from findings;

-- Insert de Hallazgos
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (1, 'Vacio', 1, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (2, 'Un Cuarto', 2, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (3, 'Medio', 3, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (4, 'Tres Cuartos', 4, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (5, 'Full', 5, false, 1, 1);

-- INSERT INTO findings(codi_find,nomb_find,codi_stco
-- ,codi_acco,codi_user
-- )
-- SELECT id, md5(random()::text), 1
--       ,1,1
-- FROM generate_series(1,5) id;


