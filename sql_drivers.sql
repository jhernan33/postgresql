-- Table: public.drivers

-- DROP TABLE public.drivers;

CREATE TABLE public.drivers
(
  driv_codi character varying(15) NOT NULL, -- Codigo del Conductor
  driv_foto character varying(120), -- Foto del Conductor
  driv_dire character varying(255), -- Direccion de Residencia del Conductor
  driv_dial character varying(255), -- Direccion Alternativa del Conductor
  driv_temo character varying(120), -- Numero de Telefono Movil del Conductor
  driv_coel character varying(35), -- Correo Electronico del Conductor
  stat_codi integer, -- Estatus del Conductor
  driv_eras boolean, -- Borrado del Vehiculo (Logico)
  CONSTRAINT drivers_driv_codi_pk PRIMARY KEY (driv_codi),
  CONSTRAINT drivers_pers_cedu_uk unique (pers_cedu)
)
INHERITS (public.persons)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.drivers
  OWNER TO gtracking;
REVOKE ALL ON TABLE public.drivers FROM public;
REVOKE ALL ON TABLE public.drivers FROM gtracking;
COMMENT ON TABLE public.drivers
  IS 'Registro de Conductores';
COMMENT ON COLUMN public.drivers.driv_codi IS 'Codigo del Conductor';
COMMENT ON COLUMN public.drivers.driv_foto IS 'Foto del Conductor';
COMMENT ON COLUMN public.drivers.driv_dire IS 'Direccion de Residencia del Conductor';
COMMENT ON COLUMN public.drivers.driv_dial IS 'Direccion Alternativa del Conductor';
COMMENT ON COLUMN public.drivers.driv_temo IS 'Numero de Telefono Movil del Conductor';
COMMENT ON COLUMN public.drivers.driv_coel IS 'Correo Electronico del Conductor';
COMMENT ON COLUMN public.drivers.stat_codi IS 'Estatus del Conductor';
COMMENT ON COLUMN public.drivers.driv_eras IS 'Borrado del Vehiculo (Logico)';

select * from public.drivers;