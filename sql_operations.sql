-- Table: process.operations

-- DROP TABLE process.operations;

CREATE TABLE process.operations
(
  oper_codi character varying(15) NOT NULL, -- Codigo de Operacion
  oper_fein timestamp without time zone, -- Fecha de la Operacion
  cust_codi character varying(15), -- Codigo del Cliente
  driv_codi character varying(15), -- Codigo del Conductor
  oper_obse text, -- Observaciones de la Operacion
  oper_fefi date, -- Fecha Final
  user_codi character varying(10), -- Codigo del Usuario
  oper_mtto double precision, -- Monto Total de la Operacion
  rous_codi integer, -- Codigo del Role Usuario
  CONSTRAINT process_operations_oper_codi_pk PRIMARY KEY (oper_codi),
  CONSTRAINT process_operations_cust_codi_fk FOREIGN KEY (cust_codi)
      REFERENCES public.customers (cust_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=TRUE
);
ALTER TABLE process.operations
  OWNER TO gtracking;
REVOKE ALL ON TABLE process.operations FROM public;
REVOKE ALL ON TABLE process.operations FROM gtracking;
COMMENT ON TABLE process.operations
  IS 'Registro de Operaciones';
COMMENT ON COLUMN process.operations.oper_codi IS 'Codigo de Operacion';
COMMENT ON COLUMN process.operations.oper_fein IS 'Fecha de la Operacion';
COMMENT ON COLUMN process.operations.cust_codi IS 'Codigo del Cliente';
COMMENT ON COLUMN process.operations.driv_codi IS 'Codigo del Conductor';
COMMENT ON COLUMN process.operations.oper_obse IS 'Observaciones de la Operacion';
COMMENT ON COLUMN process.operations.oper_fefi IS 'Fecha Final';
COMMENT ON COLUMN process.operations.user_codi IS 'Codigo del Usuario';
COMMENT ON COLUMN process.operations.oper_mtto IS 'Monto Total de la Operacion';
COMMENT ON COLUMN process.operations.rous_codi IS 'Codigo del Role Usuario';







-- Table: process.operations_details

-- DROP TABLE process.operations_details;

CREATE TABLE process.operations_details
(
  opde_codi bigserial NOT NULL, -- Codigo Consecutivo Unico de la Entrada Operacion
  oper_codi character varying(15), -- Codigo de la Operacion
  serv_codi integer, -- Codigo del Servicio
  opde_cant integer, -- Cantidad del Servicio del Detalle de la Operacion
  opde_peso double precision, -- Peso del Detalle del Detalle de la Operacion
  stat_codi integer, -- Codigo del Estatus
  opde_obse text, -- Observaciones del Detalle de la Operacion
  opde_prfi double precision, -- Precio Final del detalle de la Operacion
  CONSTRAINT process_operations_details_inde_codi_pk PRIMARY KEY (opde_codi),
  constraint process_operations_details_oper_codi_fk foreign key (oper_codi)
  references process.operations (oper_codi) match simple
  on update restrict on delete restrict,
  CONSTRAINT process_operations_details_serv_codi_fk FOREIGN KEY (serv_codi)
      REFERENCES public.services (serv_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=TRUE
);
ALTER TABLE process.operations_details
  OWNER TO gtracking;
REVOKE ALL ON TABLE process.operations_details FROM public;
REVOKE ALL ON TABLE process.operations_details FROM gtracking;
COMMENT ON TABLE process.operations_details IS 'Detalle de Operaciones';
COMMENT ON COLUMN process.operations_details.opde_codi IS 'Codigo Consecutivo Unico de la Entrada Operacion';
COMMENT ON COLUMN process.operations_details.oper_codi IS 'Codigo de la Operacion';
COMMENT ON COLUMN process.operations_details.serv_codi IS 'Codigo del Servicio';
COMMENT ON COLUMN process.operations_details.opde_cant IS 'Cantidad del Servicio del Detalle de la Operacion';
COMMENT ON COLUMN process.operations_details.opde_peso IS 'Peso del Detalle del Detalle de la Operacion';
COMMENT ON COLUMN process.operations_details.stat_codi IS 'Codigo del Estatus';
COMMENT ON COLUMN process.operations_details.opde_obse IS 'Observaciones del Detalle de la Operacion';
COMMENT ON COLUMN process.operations_details.opde_prfi IS 'Precio Final del detalle de la Operacion';


-- add constraints tracking_process

ALTER TABLE process.tracking_process
  ADD CONSTRAINT process_tracking_process_oper_codi_fk FOREIGN KEY (oper_codi)
      REFERENCES process.operations (oper_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE process.operations_details
  ADD CONSTRAINT process_operations_details_oper_codi_fk FOREIGN KEY (oper_codi)
      REFERENCES process.operations (oper_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
