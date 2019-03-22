drop schema if exists maintenance cascade;
drop schema if exists conditions cascade;
drop schema if exists process cascade;
drop schema if exists public cascade;

create SCHEMA public;
-- Table: public.rutas

-- DROP TABLE public.rutas;

CREATE TABLE public.routes
(
  codi_rout bigserial, -- Codigo de la Ruta
  nomb_rout character varying(200), -- Nombre de la Ruta
  inic_rout character varying(200), -- Punto de Inicio de la Ruta
  fina_rout character varying(200), -- Punto Final de la Ruta
  borr_rout boolean DEFAULT false, -- Borrado Logico de la Ruta
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_public_routes_codi_rout PRIMARY KEY (codi_rout),
  CONSTRAINT ck_public_routes_nomb_rout CHECK (nomb_rout::text <> ''::text)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.routes OWNER TO postgres;
COMMENT ON TABLE public.routes
  IS 'Maestro de Rutas';
COMMENT ON COLUMN public.routes.codi_rout IS 'Codigo de la Ruta';
COMMENT ON COLUMN public.routes.nomb_rout IS 'Nombre de la Ruta';
COMMENT ON COLUMN public.routes.borr_rout IS 'Borrado Logico de la Ruta';
COMMENT ON COLUMN public.routes.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN public.routes.codi_user IS 'Codigo del Usuario';

-- Crear los indices
CREATE INDEX idx_public_routes_codi_rout
ON public.routes (codi_rout ASC NULLS LAST);
CREATE INDEX idx_public_routes_codi_acco
   ON public.routes (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_routes_codi_user
ON public.routes (codi_user ASC NULLS LAST);


-- Table: public.zonas
-- DROP TABLE public.zones;

CREATE TABLE public.zones
(
  codi_zone bigserial, -- Codigo de la Zona
  nomb_zone character varying(200), -- Nombre de la Zona
  cout_zone character varying(200), -- Codigo de la Ruta
  borr_zone boolean DEFAULT false, -- Borrado Logico de la Zona
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_public_zones_codi_zone PRIMARY KEY (codi_zone)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.zones
  OWNER TO postgres;
GRANT ALL ON TABLE public.zones TO postgres;
GRANT ALL ON TABLE public.zones TO public;
COMMENT ON TABLE public.zones
  IS 'Registro de Zona';
COMMENT ON COLUMN public.zones.codi_zone IS 'Codigo de la Zona';
COMMENT ON COLUMN public.zones.nomb_zone IS 'Nombre de la Zona';
COMMENT ON COLUMN public.zones.cout_zone IS 'Coordenadas UTM de la Zona';
COMMENT ON COLUMN public.zones.borr_zone IS 'Borrado Logico de la Zona';
COMMENT ON COLUMN public.zones.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN public.zones.codi_user IS 'Codigo del Usuario';

-- Crear los indices
CREATE INDEX idx_public_zones_codi_zone
ON public.zones (codi_zone ASC NULLS LAST);
CREATE INDEX idx_public_zones_codi_acco
   ON public.zones (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_zones_codi_user
ON public.zones (codi_user ASC NULLS LAST);


-- Table de Segments
CREATE TABLE public.segments
(
  codi_segm bigserial, -- Codigo del Segmento
  deor_segm character varying(200), -- Descripcion del Segmento Origen
  dede_segm character varying(200), -- Descripcion del Segmento Destino
  puin_segm character varying(200), -- Punto de Inicio del Segmento
  pufi_segm character varying(200), -- Punto Final del Segmento
  borr_segm boolean DEFAULT false, -- Borrado Logico del Segmento 
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_public_segments_codi_segm PRIMARY KEY (codi_segm)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.segments
  OWNER TO postgres;
GRANT ALL ON TABLE public.segments TO postgres;
GRANT ALL ON TABLE public.segments TO public;
COMMENT ON TABLE public.segments
  IS 'Registro de Segmentos';
COMMENT ON COLUMN public.segments.codi_segm IS 'Codigo del Segmento';
COMMENT ON COLUMN public.segments.deor_segm IS 'Descripcion del Segmento Origen';
COMMENT ON COLUMN public.segments.dede_segm IS 'Descripcion del Segmento Destino';
COMMENT ON COLUMN public.segments.puin_segm IS 'Punto de Inicio del Segmento Origen';
COMMENT ON COLUMN public.segments.pufi_segm IS 'Punto Final del Segmento Destino';
COMMENT ON COLUMN public.segments.borr_segm IS 'Borrado Logico del Segmento';
COMMENT ON COLUMN public.segments.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN public.segments.codi_user IS 'Codigo del Usuario';

-- Crear los indices
CREATE INDEX idx_public_segments_codi_segm
ON public.segments (codi_segm ASC NULLS LAST);
CREATE INDEX idx_public_segments_codi_acco
   ON public.segments (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_segments_codi_user
ON public.segments (codi_user ASC NULLS LAST);


-- Table de Details Zones
CREATE TABLE public.zones_details
(
  codi_zode bigserial, -- Codigo del Detalle de la Zona Detalle
  desc_zode character varying(200), -- Descripcion del Punto del Detalle de la Ruta
  borr_zode boolean, -- Borrado Logico de la Ruta del Detalle
  codi_zone integer, -- Codigo de la Zona
  codi_segm integer, -- Codigo del Segmento
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_public_routes_details_codi_zode PRIMARY KEY (codi_zode),
  CONSTRAINT fk_public_routes_details_codi_zone FOREIGN KEY (codi_zone)
      REFERENCES public.zones (codi_zone) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk_public_routes_details_codi_segm FOREIGN KEY (codi_segm)
      REFERENCES public.segments (codi_segm) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=TRUE
);
ALTER TABLE public.zones_details
  OWNER TO postgres;
COMMENT ON TABLE public.zones_details
  IS 'Detalle de las Zonas';
COMMENT ON COLUMN public.zones_details.codi_zode IS 'Codigo del Detalle de la Zona';
COMMENT ON COLUMN public.zones_details.desc_zode IS 'Descripcion del Detalle de la Zona';
COMMENT ON COLUMN public.zones_details.borr_zode IS 'Borrado Logico de la Ruta del Detalle';
COMMENT ON COLUMN public.zones_details.codi_zone IS 'Codigo de la Zona';
COMMENT ON COLUMN public.zones_details.codi_segm IS 'Codigo del Segmento';
COMMENT ON COLUMN public.zones_details.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN public.zones_details.codi_user IS 'Codigo del Usuario';


-- Table de Detail Routes
CREATE TABLE public.routes_details
(
  codi_rode bigserial, -- Codigo del Detalle de la Ruta
  desc_rode character varying(200), -- Descripcion del Punto del Detalle de la Ruta
  borr_rode boolean, -- Borrado Logico de la Ruta del Detalle
  codi_rout integer, -- Codigo de la Ruta
  puin_rode character varying(200), -- Punto de Inicio del Detalle de la Ruta
  pufi_rode character varying(200), -- Punto Final de la Ruta
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_public_routes_details_codi_rode PRIMARY KEY (codi_rode),
  CONSTRAINT fk_public_routes_details_codi_rout FOREIGN KEY (codi_rout)
      REFERENCES public.routes (codi_rout) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=TRUE
);
ALTER TABLE public.routes_details
  OWNER TO postgres;
COMMENT ON TABLE public.routes_details
  IS 'Detalle de las Rutas';
COMMENT ON COLUMN public.routes_details.codi_rode IS 'Codigo del Detalle de la Ruta';
COMMENT ON COLUMN public.routes_details.desc_rode IS 'Descripcion del Punto del Detalle de la Ruta';
COMMENT ON COLUMN public.routes_details.borr_rode IS 'Borrado Logico de la Ruta del Detalle';
COMMENT ON COLUMN public.routes_details.codi_rout IS 'Codigo de la Ruta';
COMMENT ON COLUMN public.routes_details.puin_rode IS 'Punto Inicio del Detalle de la Ruta';
COMMENT ON COLUMN public.routes_details.pufi_rode IS 'Punto Final del Detalle de la Ruta';
COMMENT ON COLUMN public.routes_details.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN public.routes_details.codi_user IS 'Codigo del Usuario';


-- Table Unidad de Mediciones
create table public.units_measurements
(
   codi_unme bigserial not null,
   desc_unme character varying(200),
   borr_unme boolean default false,
   codi_acco integer,
   codi_user integer,
 CONSTRAINT pk_public_units_measurements_codi_unme PRIMARY KEY (codi_unme),
 CONSTRAINT ck_public_units_measurements_desc_unme CHECK (desc_unme::text <> ''::text)
) ;
COMMENT ON TABLE public.units_measurements IS 'Unidad de Medicion';
comment on column public.units_measurements.codi_unme is 'Codigo de la Unidad de Medicion';
comment on column public.units_measurements.desc_unme is 'Descripcion de la Unidad de Medicion';
comment on column public.units_measurements.borr_unme is 'Borrado Logico de la Unidad de Medicion';
comment on column public.units_measurements.codi_acco is 'Codigo de la Cuenta';
comment on column public.units_measurements.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_public_units_measurements_codi_unme
ON public.units_measurements (codi_unme ASC NULLS LAST);
CREATE INDEX idx_public_units_measurements_codi_acco
   ON public.units_measurements (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_units_measurements_codi_user
ON public.units_measurements (codi_user ASC NULLS LAST);


-- Tabla de Clasificacion de Contenedor
-- drop table public.classifications_containers
create table public.classifications_containers
(
   codi_clco bigserial not null,
   desc_clco character varying(200),
   borr_clco boolean default false,
   codi_acco integer,
   codi_user integer,
 CONSTRAINT pk_public_classifications_containers_codi_clco PRIMARY KEY (codi_clco),
 CONSTRAINT ck_public_classifications_containers_desc_clco CHECK (desc_clco::text <> ''::text)
) ;
COMMENT ON TABLE public.classifications_containers IS 'Tabla Clasificacion de Contenedores';
comment on column public.classifications_containers.codi_clco is 'Codigo de la Clasificacion del Contenedor';
comment on column public.classifications_containers.desc_clco is 'Descripcion de la Clasificacion del Contenedor';
comment on column public.classifications_containers.borr_clco is 'Borrado Logico de la Clasificacion del Contenedor';
comment on column public.classifications_containers.codi_acco is 'Codigo de la Cuenta';
comment on column public.classifications_containers.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_public_classifications_containers_codi_clco
ON public.classifications_containers (codi_clco ASC NULLS LAST);
CREATE INDEX idx_public_clclassifications_containers_codi_acco
   ON public.classifications_containers (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_classifications_containers_codi_user
ON public.classifications_containers (codi_user ASC NULLS LAST);

-- Tabla de Categoria de Carga
-- drop table public.categoria_carga;
create table public.category_load
(
   codi_ctlo bigserial not null,
   desc_ctlo character varying(200),
   codi_unme integer,
   borr_ctcg boolean default false,
   codi_acco integer,
   codi_user integer,
 CONSTRAINT pk_public_category_load_codi_ctcg PRIMARY KEY (codi_ctlo),
 CONSTRAINT ck_public_category_load_desc_ctcg CHECK (desc_ctlo::text <> ''::text),
 CONSTRAINT fk_public_category_load_codi_unme foreign key (codi_unme)
      references public.units_measurements (codi_unme) match simple
      on update restrict on delete restrict
 
) ;
COMMENT ON TABLE public.category_load IS 'Tabla Categoria de Carga (Desechos Solidos, Combustible, otros)';
comment on column public.category_load.codi_ctlo is 'Codigo de la Categoria de la Carga';
comment on column public.category_load.desc_ctlo is 'Descripcion de la Categoria de la Carga';
comment on column public.category_load.borr_ctcg is 'Borrado Logico de la Categoria de la Carga';
comment on column public.category_load.codi_acco is 'Codigo de la Cuenta';
comment on column public.category_load.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_public_category_load_codi_ctcg
ON public.category_load (codi_ctlo ASC NULLS LAST);
CREATE INDEX idx_public_category_load_codi_acco
   ON public.category_load (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_category_load_codi_user
ON public.category_load (codi_user ASC NULLS LAST);

-- -- Tabla de Contenedor
-- create table public.category_container
-- (
--    codi_ctco bigserial not null,
--    desc_ctco character varying(200),
--    borr_ctco boolean default false,
--    codi_acco integer,
--    codi_user integer,
--  CONSTRAINT pk_public_category_container_codi_ctco PRIMARY KEY (codi_ctco),
--  CONSTRAINT ck_public_category_container_desc_ctco CHECK (desc_ctco::text <> ''::text)
-- ) ;
-- COMMENT ON TABLE public.category_container IS 'Tabla Categoria de Contenedor (Fijo, Removible)';
-- comment on column public.category_container.codi_ctco is 'Codigo de la Categoria del Contenedor';
-- comment on column public.category_container.desc_ctco is 'Descripcion de la Categoria del Contenedor';
-- comment on column public.category_container.borr_ctco is 'Borrado Logico de la Categoria del Contenedor';
-- comment on column public.category_container.codi_acco is 'Codigo de la Cuenta';
-- comment on column public.category_container.codi_user is 'Codigo del Usuario';
-- -- Crear los indices
-- CREATE INDEX idx_public_category_container_codi_ctco
-- ON public.category_container (codi_ctco ASC NULLS LAST);
-- CREATE INDEX idx_public_category_container_codi_acco
--    ON public.category_container (codi_acco ASC NULLS LAST);
-- CREATE INDEX idx_public_category_container_codi_user
-- ON public.category_container (codi_user ASC NULLS LAST);


-- Tabla del Contenedor
-- drop table public.contenedor cascade;
create table public.container
(
   codi_cont bigserial not null,
   nomb_cont character varying(200) not null,
   desc_cont text,
   codi_clco integer,
   tagx_cont character varying(50),
   tama_cont character varying(100),
   capa_cont character varying(100),
   pebr_cont double precision,
   alto_cont double precision,
   anch_cont double precision,
   prof_cont double precision,
   stat_cont integer,
   borr_cont boolean default false,
   codi_acco integer,
   codi_user integer,
 CONSTRAINT pk_public_container_codi_cont PRIMARY KEY (codi_cont),
 CONSTRAINT ck_public_container_nomb_cont CHECK (nomb_cont::text <> ''::text),
 CONSTRAINT fk_public_container_codi_clco FOREIGN KEY (codi_clco)
	      REFERENCES public.classifications_containers (codi_clco) MATCH SIMPLE
	      ON UPDATE RESTRICT ON DELETE RESTRICT
) ;
COMMENT ON TABLE public.container IS 'Tabla Categoria de Contenedor (Fijo, Removible)';
comment on column public.container.codi_cont is 'Codigo de la Categoria del Contenedor';
comment on column public.container.nomb_cont is 'Nombre del Contenedor';
comment on column public.container.desc_cont is 'Descripcion del Contenedor';
comment on column public.container.codi_clco is 'Codigo de la Clasificacion del Contenedor';
comment on column public.container.tagx_cont is 'Tag del Contenedor';
comment on column public.container.tama_cont is 'Tamano del Contenedor';
comment on column public.container.capa_cont is 'Capacidad del Contenedor';
comment on column public.container.pebr_cont is 'Peso Bruto del Contenedor';
comment on column public.container.alto_cont is 'Alto del Contenedor';
comment on column public.container.anch_cont is 'Ancho del Contenedor';
comment on column public.container.prof_cont is 'Profundidad del Contenedor';
comment on column public.container.stat_cont is 'Estatus del Contenedor';
comment on column public.container.borr_cont is 'Borrado Logico de la Categoria del Contenedor';
comment on column public.container.codi_acco is 'Codigo de la Cuenta';
comment on column public.container.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_public_container_codi_cont
ON public.container (codi_cont ASC NULLS LAST);
CREATE INDEX idx_public_container_codi_acco
   ON public.container (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_container_codi_user
ON public.container (codi_user ASC NULLS LAST);


-- Tabla de Parametros
-- drop table public.parametros
CREATE TABLE public.parameters
(
  id bigserial not null,
  code character varying(255),
  title character varying(255) NOT NULL,
  key character varying(255) NOT NULL,
  value character varying(255) NOT NULL,
  description character varying(255),
  domain character varying(255),
  disable boolean NOT NULL DEFAULT false,
  codi_acco integer,
  codi_user integer,
  CONSTRAINT parameters_pkey PRIMARY KEY (id),
  CONSTRAINT parameters_code_unique UNIQUE (code),
  CONSTRAINT parameters_key_unique UNIQUE (key)
);
-- Crear los indices
CREATE INDEX idx_public_parameters_id
ON public.parameters (id ASC NULLS LAST);
CREATE INDEX idx_public_parameters_codi_acco
   ON public.parameters (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_parameters_codi_user
ON public.parameters (codi_user ASC NULLS LAST);

-- Crear la tabla contenedor asignado
-- drop table public.containers_assigned
create table public.containers_assigned
(
   codi_coas bigserial not null,
   codi_cont integer not null,
   ubic_coas character varying(100),
   codi_cust character varying(20),
   codi_zone integer not null,
   fein_coas date,
   fefi_coas date,
   cout_coas character varying(100),
   stat_coas boolean,
   borr_coas boolean default false,
   codi_acco integer,
   codi_user integer,
   CONSTRAINT pk_public_containers_assigned_codi_coas PRIMARY KEY (codi_coas),
   CONSTRAINT fk_public_containers_assigned_codi_cont FOREIGN KEY (codi_cont)
	      REFERENCES public.container (codi_cont) MATCH SIMPLE
	      ON UPDATE RESTRICT ON DELETE RESTRICT,
   constraint fk_public_containers_assigned_codi_zone foreign key (codi_zone)
              references public.zones (codi_zone) match simple
              on update restrict on delete restrict
);
COMMENT ON TABLE public.containers_assigned IS 'Tabla Cliente con el Contenedor';
comment on column public.containers_assigned.codi_coas is 'Codigo del Contenedor Asignado';
comment on column public.containers_assigned.codi_cont is 'Codigo del Contenedor';
comment on column public.containers_assigned.ubic_coas is 'Ubicacion del Contenedor Asignado';
comment on column public.containers_assigned.codi_cust is 'Codigo del Cliente';
comment on column public.containers_assigned.codi_zone is 'Codigo de la Zona';
comment on column public.containers_assigned.fein_coas is 'Fecha de Inicio del Contenedor Asignado';
comment on column public.containers_assigned.fefi_coas is 'Fecha Final del Contenedor Asignado';
comment on column public.containers_assigned.cout_coas is 'Coordenas UTM(Latitud, Longitud) del Contenedor Asignado';
comment on column public.containers_assigned.stat_coas is 'Estatus del Contenedor Asignado';
comment on column public.containers_assigned.borr_coas is 'Borrado Logico del Cliente con el Contenedor';
comment on column public.containers_assigned.codi_acco is 'Codigo de la Cuenta';
comment on column public.containers_assigned.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_public_containers_assigned_codi_clie
ON public.containers_assigned (codi_cust ASC NULLS LAST);
CREATE INDEX idx_public_containers_assigned_codi_acco
   ON public.containers_assigned (codi_acco ASC NULLS LAST);
CREATE INDEX idx_public_containers_assigned_codi_user
ON public.containers_assigned (codi_user ASC NULLS LAST);



-- Crear el esquema de procesos
CREATE SCHEMA process;

-- Table de Operacion
create table process.operations
(
   codi_oper bigserial not null,
   fech_oper timestamp without time zone,
   peso_oper double precision,
   obse_oper text,
   esta_oper integer,
   borr_oper boolean default false,
   codi_acco integer,
   codi_user integer,
 CONSTRAINT pk_process_operations_codi_oper PRIMARY KEY (codi_oper)
) ;
COMMENT ON TABLE process.operations IS 'Tabla operations';
comment on column process.operations.codi_oper is 'Codigo de la Operacion';
comment on column process.operations.fech_oper is 'Fecha Hora de la Operacion';
comment on column process.operations.peso_oper is 'Peso de la Operacion';
comment on column process.operations.obse_oper is 'Observaciones de la Operacion';
comment on column process.operations.esta_oper is 'Estatus de la Operacion';
comment on column process.operations.borr_oper is 'Borrado Logico de la Operacion';
comment on column process.operations.codi_acco is 'Codigo de la Cuenta';
comment on column process.operations.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_process_operations_codi_oper
ON process.operations (codi_oper ASC NULLS LAST);
CREATE INDEX idx_process_operations_codi_acco
   ON process.operations (codi_acco ASC NULLS LAST);
CREATE INDEX idx_process_operations_codi_user
ON process.operations (codi_user ASC NULLS LAST);

-- Detalle de operations
-- Drop table process.details_operations
create table process.details_operations
(
   codi_deop bigserial not null,
   codi_oper integer not null,
   codi_cont integer,
   feho_deop timestamp without time zone,
   peso_deop double precision,
   cate_deop character varying(10),
   codi_vehi character varying(20) not null,
   codi_ctlo integer not null,
   borr_deop boolean default false,
   codi_acco integer,
   codi_user integer,
 CONSTRAINT pk_process_details_operations_codi_deop PRIMARY KEY (codi_deop),
 CONSTRAINT fk_process_details_operations_codi_oper FOREIGN KEY (codi_oper)
      REFERENCES process.operations (codi_oper) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
 CONSTRAINT fk_process_details_operations_codi_cont FOREIGN KEY (codi_cont)
      REFERENCES public.container (codi_cont) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
 constraint fk_process_details_operations_codi_ctlo foreign key (codi_ctlo)
      references public.category_load (codi_ctlo) match simple
      on update restrict on delete restrict
) ;
COMMENT ON TABLE process.details_operations IS 'Tabla Detalle de Operaciones';
comment on column process.details_operations.codi_deop is 'Codigo del Detalle de la Operacion';
comment on column process.details_operations.codi_oper is 'Codigo de la Operacion';
comment on column process.details_operations.codi_cont is 'Codigo del Contenedor';
comment on column process.details_operations.feho_deop is 'Fecha Hora del Detalle de la Operacion';
comment on column process.details_operations.peso_deop is 'Peso del Detalle de la Operacion';
comment on column process.details_operations.cate_deop is 'Categoria del Detalle de la Operacion (Entrada/Salida)';
comment on column process.details_operations.codi_vehi is 'Codigo del Vehiculo';
comment on column process.details_operations.codi_ctlo is 'Codigo de la Categoria de Carga';
comment on column process.details_operations.borr_deop is 'Borrado Logico del detalle de la Operacion';
comment on column process.details_operations.codi_acco is 'Codigo de la Cuenta';
comment on column process.details_operations.codi_user is 'Codigo del Usuario';
-- Crear los indices
CREATE INDEX idx_process_details_operations_codi_deop
ON process.details_operations (codi_deop ASC NULLS LAST);
CREATE INDEX idx_process_details_operations_codi_acco
   ON process.details_operations (codi_acco ASC NULLS LAST);
CREATE INDEX idx_process_details_operationss_codi_user
ON process.details_operations (codi_user ASC NULLS LAST);
CREATE INDEX idx_process_details_operations_codi_vehi
ON process.details_operations (codi_vehi ASC NULLS LAST);

-- Crear el esquema 
CREATE SCHEMA conditions;

-- crear la tabla categoria de evaluacion
CREATE TABLE conditions.category_evaluation
(
  codi_caev bigserial not null,
  desc_caev character varying(200),
  borr_caev boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_category_evaluation_codi_caev PRIMARY KEY (codi_caev),
  CONSTRAINT ck_conditions_category_evaluation_desc_caev CHECK (desc_caev::text <> ''::text)
);
COMMENT ON TABLE conditions.category_evaluation IS 'Maestro de Categoria de Evaluacion de Condiciones';
COMMENT ON COLUMN conditions.category_evaluation.codi_caev IS 'Codigo de la Categoria de la Evaluacion';
COMMENT ON COLUMN conditions.category_evaluation.desc_caev IS 'Descripcion de la Categoria de la Evaluacion';
COMMENT ON COLUMN conditions.category_evaluation.borr_caev IS 'Borrado Logico de la Categoria de la Evaluacion';
COMMENT ON COLUMN conditions.category_evaluation.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.category_evaluation.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_category_evaluation_codi_caev
ON conditions.category_evaluation (codi_caev ASC NULLS LAST);
CREATE INDEX idx_conditions_category_evaluation_codi_acco
   ON conditions.category_evaluation (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_category_evaluation_codi_user
ON conditions.category_evaluation (codi_user ASC NULLS LAST);

-- Tabla de Estado de Condicion
CREATE TABLE conditions.state_conditions
(
  codi_stco bigserial not null,
  nomb_stco character varying(200),
  desc_stco text,
  vapo_stco double precision,
  colo_stco character varying(15),
  borr_stco boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_state_conditions_codi_edco PRIMARY KEY (codi_stco),
  CONSTRAINT ck_conditions_state_conditions_desc_edco CHECK (desc_stco::text <> ''::text)
);
COMMENT ON TABLE conditions.state_conditions IS 'Maestro de Estado de Condicion';
COMMENT ON COLUMN conditions.state_conditions.codi_stco IS 'Codigo del Estado de la Condicion';
COMMENT ON COLUMN conditions.state_conditions.nomb_stco IS 'Nombre del Estado de la Condicion';
COMMENT ON COLUMN conditions.state_conditions.desc_stco IS 'Descripcion del Estado de la Condicion';
COMMENT ON COLUMN conditions.state_conditions.vapo_stco IS 'Valor Porcentual del Estado de la Condicion';
COMMENT ON COLUMN conditions.state_conditions.colo_stco IS 'Color del Estado de la Condicion';
COMMENT ON COLUMN conditions.state_conditions.borr_stco IS 'Borrado Logico de la Categoria de la Evaluacion';
COMMENT ON COLUMN conditions.state_conditions.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.state_conditions.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_state_conditions_codi_stco
ON conditions.state_conditions (codi_stco ASC NULLS LAST);
CREATE INDEX idx_conditions_state_conditions_codi_acco
   ON conditions.state_conditions (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_state_conditions_codi_user
ON conditions.state_conditions (codi_user ASC NULLS LAST);

-- Categoria de Insumos
CREATE TABLE conditions.category_supplies
(
  codi_casu bigserial not null,
  nomb_casu character varying(200),
  borr_casu boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_category_supplies_codi_casu PRIMARY KEY (codi_casu),
  CONSTRAINT ck_conditions_category_supplies_nomb_casu CHECK (nomb_casu::text <> ''::text)
);
COMMENT ON TABLE conditions.category_supplies IS 'Maestro de Estado de Categorias de Insumos';
COMMENT ON COLUMN conditions.category_supplies.codi_casu IS 'Codigo de la Categoria de Insumos';
COMMENT ON COLUMN conditions.category_supplies.nomb_casu IS 'Nombre de la Categoria de Insumos';
COMMENT ON COLUMN conditions.category_supplies.borr_casu IS 'Borrado Logico de la Categoria del Insumo';
COMMENT ON COLUMN conditions.category_supplies.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.category_supplies.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_category_supplies_codi_cain
ON conditions.category_supplies (codi_casu ASC NULLS LAST);
CREATE INDEX idx_conditions_category_supplies_codi_acco
   ON conditions.category_supplies (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_category_supplies_codi_user
ON conditions.category_supplies (codi_user ASC NULLS LAST);

-- Insumos
-- drop table conditions.insumos;
CREATE TABLE conditions.supplies
(
  codi_supp bigserial not null,
  nomb_supp character varying(200),
  codi_casu integer,
  borr_supp boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_insumos_codi_supp PRIMARY KEY (codi_supp),
  CONSTRAINT ck_conditions_insumos_nomb_supp CHECK (nomb_supp::text <> ''::text),
  constraint fk_conditions_insumos_codi_cain foreign key (codi_casu)
   REFERENCES conditions.category_supplies (codi_casu) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
);
COMMENT ON TABLE conditions.supplies IS 'Maestro de Estado de Insumos';
COMMENT ON COLUMN conditions.supplies.codi_supp IS 'Codigo del Insumo';
COMMENT ON COLUMN conditions.supplies.nomb_supp IS 'Nombre del Insumo';
COMMENT ON COLUMN conditions.supplies.codi_casu IS 'Codigo de la Categoria del Insumo';
COMMENT ON COLUMN conditions.supplies.borr_supp IS 'Borrado Logico del Insumo';
COMMENT ON COLUMN conditions.supplies.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.supplies.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_supplies_codi_supp
ON conditions.supplies (codi_supp ASC NULLS LAST);
CREATE INDEX idx_conditions_supplies_codi_acco
   ON conditions.supplies (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_supplies_codi_user
ON conditions.supplies (codi_user ASC NULLS LAST);

-- Crear la Tabla de Objeto Estado
CREATE TABLE conditions.object_study
(
  codi_obst bigserial not null,
  nomb_obst character varying(200),
  desc_obst text,
  borr_obst boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_object_study_codi_obes PRIMARY KEY (codi_obst),
  CONSTRAINT ck_conditions_object_study_nomb_obes CHECK (nomb_obst::text <> ''::text)
);
COMMENT ON TABLE conditions.object_study IS 'Maestro de Objeto de Estudio';
COMMENT ON COLUMN conditions.object_study.codi_obst IS 'Codigo de Objeto de Estudio';
COMMENT ON COLUMN conditions.object_study.nomb_obst IS 'Nombre de Objeto de Estudio';
COMMENT ON COLUMN conditions.object_study.desc_obst IS 'Descripcion de Objeto de Estudio';
COMMENT ON COLUMN conditions.object_study.borr_obst IS 'Borrado Logico de Objeto de Estudio';
COMMENT ON COLUMN conditions.object_study.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.object_study.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_object_study_codi_obes
ON conditions.object_study (codi_obst ASC NULLS LAST);
CREATE INDEX idx_conditions_object_study_codi_acco
   ON conditions.object_study (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_object_study_codi_user
ON conditions.object_study (codi_user ASC NULLS LAST);


-- Table de Evaluacion
CREATE TABLE conditions.findings
(
  codi_find bigserial not null,
  nomb_find character varying(200),
  desc_find text,
  codi_stco integer,
  borr_find boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_findings_codi_find PRIMARY KEY (codi_find),
  CONSTRAINT ck_conditions_findings_nomb_find CHECK (nomb_find::text <> ''::text),
  CONSTRAINT fk_conditions_findings_codi_edco FOREIGN KEY (codi_stco)
      REFERENCES conditions.state_conditions (codi_stco) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
);
COMMENT ON TABLE conditions.findings IS 'Maestro de Hallazgos';
COMMENT ON COLUMN conditions.findings.codi_find IS 'Codigo del Hallazgo';
COMMENT ON COLUMN conditions.findings.nomb_find IS 'Nombre del Hallazgo';
COMMENT ON COLUMN conditions.findings.desc_find IS 'Descripcion del Hallazgo';
COMMENT ON COLUMN conditions.findings.codi_stco IS 'Codigo del Estado de Condicion';
COMMENT ON COLUMN conditions.findings.borr_find IS 'Borrado Logico del Hallazgo';
COMMENT ON COLUMN conditions.findings.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.findings.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_findings_codi_obes
ON conditions.findings (codi_find ASC NULLS LAST);
CREATE INDEX idx_conditions_findings_codi_acco
   ON conditions.findings (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_findings_codi_user
ON conditions.findings (codi_user ASC NULLS LAST);

-- Tabla de Componentes
CREATE TABLE conditions.components
(
  codi_comp bigserial not null,
  nomb_comp character varying(200) not null,
  desc_comp text,
  codi_obst integer not null,
  borr_comp boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_components_codi_comp PRIMARY KEY (codi_comp),
  CONSTRAINT ck_conditions_components_nomb_comp CHECK (nomb_comp::text <> ''::text),
  CONSTRAINT fk_conditions_components_codi_obes FOREIGN KEY (codi_obst)
      REFERENCES conditions.object_study (codi_obst) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
);
COMMENT ON TABLE conditions.components IS 'Maestro de Componentes';
COMMENT ON COLUMN conditions.components.codi_comp IS 'Codigo del Componente';
COMMENT ON COLUMN conditions.components.nomb_comp IS 'Nombre del Componente';
COMMENT ON COLUMN conditions.components.desc_comp IS 'Descripcion del Componente';
COMMENT ON COLUMN conditions.components.codi_obst IS 'Codigo del Objeto de Estudio';
COMMENT ON COLUMN conditions.components.borr_comp IS 'Borrado Logico del Componente';
COMMENT ON COLUMN conditions.components.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.components.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_components_codi_comp
ON conditions.components (codi_comp ASC NULLS LAST);
CREATE INDEX idx_conditions_components_codi_acco
   ON conditions.components (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_components_codi_user
ON conditions.components (codi_user ASC NULLS LAST);

-- Tabla de Evaluacion
CREATE TABLE conditions.evaluations
(
  codi_eval bigserial not null,
  nomb_eval character varying(200) not null,
  obse_eval text,
  feho_eval timestamp without time zone,
  codi_caev integer not null,
  codi_obst integer not null,
  codi_peva integer not null,
  borr_eval boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_conditions_evaluations_codi_comp PRIMARY KEY (codi_eval),
  CONSTRAINT ck_conditions_evaluations_nomb_comp CHECK (nomb_eval::text <> ''::text),
  CONSTRAINT fk_conditions_evaluations_codi_caev FOREIGN KEY (codi_caev)
      REFERENCES conditions.category_evaluation (codi_caev) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk_conditions_evaluations_codi_obes foreign key (codi_obst)
      references conditions.object_study (codi_obst) match simple
      on update restrict on delete restrict
);
COMMENT ON TABLE conditions.evaluations IS 'Maestro de Evaluaciones';
COMMENT ON COLUMN conditions.evaluations.codi_eval IS 'Codigo de la Evaluacion';
COMMENT ON COLUMN conditions.evaluations.nomb_eval IS 'Nombre de la Evaluacion';
COMMENT ON COLUMN conditions.evaluations.obse_eval IS 'Observaciones de la Evaluacion';
COMMENT ON COLUMN conditions.evaluations.feho_eval IS 'Fecha Hora de la Evaluacion';
COMMENT ON COLUMN conditions.evaluations.codi_caev IS 'Codigo de la Categoria Evaluacion';
COMMENT ON COLUMN conditions.evaluations.codi_obst IS 'Codigo del Objeto de Estudio';
COMMENT ON COLUMN conditions.evaluations.codi_peva IS 'Codigo de la Persona que realiza la Evaluacion';
COMMENT ON COLUMN conditions.evaluations.borr_eval IS 'Borrado Logico de la Evaluacion';
COMMENT ON COLUMN conditions.evaluations.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.evaluations.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_evaluations_codi_eval
ON conditions.evaluations (codi_eval ASC NULLS LAST);
CREATE INDEX idx_conditions_evaluations_codi_acco
   ON conditions.evaluations (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_evaluations_codi_user
ON conditions.evaluations (codi_user ASC NULLS LAST);

-- Detalle de Evaluacion
CREATE TABLE conditions.detail_evaluations
(
  codi_deev bigserial not null,
  codi_eval integer not null,
  codi_find integer,
  borr_deev boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  codi_supp integer, -- Codigo del Insumo
  CONSTRAINT pk_conditions_detalle_evaluaciones_codi_deva PRIMARY KEY (codi_deev),
  CONSTRAINT fk_conditions_detalle_evaluaciones_codi_eval FOREIGN KEY (codi_eval)
      REFERENCES conditions.evaluations (codi_eval) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk_conditions_detalle_evaluaciones_codi_hall foreign key (codi_find)
      references conditions.findings (codi_find) match simple
      on update restrict on delete restrict,
  CONSTRAINT fk_conditions_detalle_evaluaciones_codi_supp foreign key (codi_supp)
      references conditions.supplies (codi_supp) match simple
      on update restrict on delete restrict
);
COMMENT ON TABLE conditions.detail_evaluations IS 'Detalle de Evaluaciones';
COMMENT ON COLUMN conditions.detail_evaluations.codi_deev IS 'Codigo del Detalle de la Evaluacion';
COMMENT ON COLUMN conditions.detail_evaluations.codi_eval IS 'Codigo de la Evaluacion';
COMMENT ON COLUMN conditions.detail_evaluations.codi_find IS 'Codigo del Hallazgo';
COMMENT ON COLUMN conditions.detail_evaluations.borr_deev IS 'Borrado Logico del Detalle de la Evaluacion';
COMMENT ON COLUMN conditions.detail_evaluations.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN conditions.detail_evaluations.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_conditions_detalle_evaluaciones_codi_deva
ON conditions.detail_evaluations (codi_deev ASC NULLS LAST);
CREATE INDEX idx_conditions_detalle_evaluaciones_codi_acco
   ON conditions.detail_evaluations (codi_acco ASC NULLS LAST);
CREATE INDEX idx_conditions_detalle_evaluaciones_codi_user
ON conditions.detail_evaluations (codi_user ASC NULLS LAST);


-- Crear el esquema de Mantenimiento 
CREATE SCHEMA maintenance;

-- Tabla de Evaluacion
CREATE TABLE maintenance.repairs
(
  codi_repa bigserial not null,
  codi_eval integer not null,
  desc_repa character varying(200) not null,
  obse_repa text,
  feho_repa timestamp without time zone,
  codi_obst integer not null,
  codi_pere character varying(15),
  borr_repa boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_maintenance_repairs_codi_repa PRIMARY KEY (codi_repa),
  CONSTRAINT fk_maintenance_repairs_codi_eval FOREIGN KEY (codi_eval)
      REFERENCES conditions.evaluations (codi_eval) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk_maintenance_repair_codi_obes foreign key (codi_obst)
      references conditions.object_study (codi_obst) match simple
      on update restrict on delete restrict
);
COMMENT ON TABLE maintenance.repairs IS 'Maestro de Evaluaciones';
COMMENT ON COLUMN maintenance.repairs.codi_repa IS 'Codigo de la Reparacion';
COMMENT ON COLUMN maintenance.repairs.codi_eval IS 'Codigo de la Evaluacion';
COMMENT ON COLUMN maintenance.repairs.desc_repa IS 'Descripcion de la Reparacion';
COMMENT ON COLUMN maintenance.repairs.obse_repa IS 'Observaciones de la Reparacion';
COMMENT ON COLUMN maintenance.repairs.feho_repa IS 'Fecha Hora de la Reparacion';
COMMENT ON COLUMN maintenance.repairs.codi_obst IS 'Codigo del Objeto de Estudio';
COMMENT ON COLUMN maintenance.repairs.codi_pere IS 'Codigo de la Persona que realiza la Reparacion';
COMMENT ON COLUMN maintenance.repairs.borr_repa IS 'Borrado Logico de la Reparacion';
COMMENT ON COLUMN maintenance.repairs.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN maintenance.repairs.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_maintenance_repairs_codi_repa
ON maintenance.repairs (codi_repa ASC NULLS LAST);
CREATE INDEX idx_maintenance_repairs_codi_acco
   ON maintenance.repairs (codi_acco ASC NULLS LAST);
CREATE INDEX idx_maintenance_repairs_codi_user
ON maintenance.repairs (codi_user ASC NULLS LAST);

-- Detalle de Evaluacion
CREATE TABLE maintenance.repairs_details
(
  codi_derd bigserial not null,
  codi_repa integer not null,
  codi_find integer,
  codi_supp integer, -- Codigo del Insumo
  codi_comp integer, -- Codigo del Componente
  borr_derd boolean DEFAULT false,
  codi_acco integer, -- Codigo de la Cuenta
  codi_user integer, -- Codigo del Usuario
  CONSTRAINT pk_maintenance_repairs_details_codi_derd PRIMARY KEY (codi_derd),
  CONSTRAINT fk_maintenance_repairs_details_codi_repa FOREIGN KEY (codi_repa)
      REFERENCES maintenance.repairs (codi_repa) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk_maintenance_repairs_details_codi_find foreign key (codi_find)
      references conditions.findings (codi_find) match simple
      on update restrict on delete restrict,
  CONSTRAINT fk_maintenance_repairs_details_codi_supp foreign key (codi_supp)
      references conditions.supplies (codi_supp) match simple
      on update restrict on delete restrict,
  CONSTRAINT fk_maintenance_repairs_details_codi_comp foreign key (codi_comp)
      references conditions.components (codi_comp) match simple
      on update restrict on delete restrict
);
COMMENT ON TABLE maintenance.repairs_details IS 'Detalle de Evaluaciones';
COMMENT ON COLUMN maintenance.repairs_details.codi_derd IS 'Codigo del Detalle de la Reparacion';
COMMENT ON COLUMN maintenance.repairs_details.codi_repa IS 'Codigo de la Reparacion';
COMMENT ON COLUMN maintenance.repairs_details.codi_find IS 'Codigo del Hallazgo';
COMMENT ON COLUMN maintenance.repairs_details.codi_supp IS 'Codigo del Insumo';
COMMENT ON COLUMN maintenance.repairs_details.codi_comp IS 'Codigo del Componente';
COMMENT ON COLUMN maintenance.repairs_details.borr_derd IS 'Borrado Logico del Detalle de la Evaluacion';
COMMENT ON COLUMN maintenance.repairs_details.codi_acco IS 'Codigo de la Cuenta';
COMMENT ON COLUMN maintenance.repairs_details.codi_user IS 'Codigo del Usuario';
-- Crear los Indices
CREATE INDEX idx_maintenance_repairs_details_codi_derd
ON maintenance.repairs_details (codi_derd ASC NULLS LAST);
CREATE INDEX idx_maintenance_repairs_details_codi_acco
   ON maintenance.repairs_details (codi_acco ASC NULLS LAST);
CREATE INDEX idx_maintenance_repairs_details_codi_user
ON maintenance.repairs_details (codi_user ASC NULLS LAST);


-- select version();