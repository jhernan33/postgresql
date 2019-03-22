-- Modificar nombre de un campo
alter table containers rename column prof_cont to larg_cont;
-- Modificar el comentario de un campo
COMMENT ON COLUMN public.containers.larg_cont IS 'Largo del Contenedor';
-- add field extension
alter table containers add column exte_cont boolean;
comment on column containers.exte_cont is 'Extension del Contenedor';
-- Add field alto extension
alter table containers add column hiex_cont double precision;
comment on column containers.hiex_cont is 'Altura de la Extension del Contenedor';
-- Add field ancho extension
alter table containers add column wiex_cont double precision;
comment on column containers.wiex_cont is 'Ancho de la Extension del Contenedor';
-- Add field largo extension
alter table containers add column loex_cont double precision;
comment on column containers.loex_cont is 'Longitud de la Extension del Contenedor';
-- Add field total capacidad 
alter table containers add column toca_cont double precision;
comment on column containers.toca_cont is 'Total Capacidad de la Extension del Contenedor'; 
-- Add field piston
alter table containers add column pist_cont double precision;
comment on column containers.pist_cont is 'Piston de la Extension del Contenedor';