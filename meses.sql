-- Table: public.meses

-- DROP TABLE public.meses;

CREATE TABLE public.meses
(
  mes_id integer,
  name character varying(30)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.meses OWNER TO postgres;
COMMENT ON TABLE public.meses IS 'Mese';

INSERT INTO public.meses(mes_id, name)
    VALUES 
    (1, 'Enero'),
    (2, 'Febrero'),
    (3, 'Marzo'),
    (4, 'Abril'),
    (5, 'Mayo'),
    (6, 'Junio'),
    (7, 'Julio'),
    (8, 'Agosto'),
    (9, 'Septiembre'),
    (10, 'Octubre'),
    (11, 'Noviembre'),
    (12, 'Diciembre')
    ;
