
-- Table: public.categorys_evaluations

-- DROP TABLE public.categorys_evaluations;

CREATE TABLE public.categorys_evaluations
(
  codi_caev serial NOT NULL,
  desc_caev character varying(200) NOT NULL,
  borr_caev boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT categorys_evaluations_pkey PRIMARY KEY (codi_caev)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.categorys_evaluations
  OWNER TO postgres;

-- Index: public.public._categorys_evaluations_codi_acco_index

-- DROP INDEX public.public._categorys_evaluations_codi_acco_index;

CREATE INDEX public_categorys_evaluations_codi_acco_index
  ON public.categorys_evaluations
  USING btree
  (codi_acco);

-- Index: public.public._categorys_evaluations_codi_user_index

-- DROP INDEX public.public._categorys_evaluations_codi_user_index;

CREATE INDEX public_categorys_evaluations_codi_user_index
  ON public.categorys_evaluations
  USING btree
  (codi_user);

-- Table: public.categorys_supplies

-- DROP TABLE public.categorys_supplies;

CREATE TABLE public.categorys_supplies
(
  codi_casu serial NOT NULL,
  nomb_casu character varying(200) NOT NULL,
  borr_casu boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT categorys_supplies_pkey PRIMARY KEY (codi_casu)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.categorys_supplies
  OWNER TO postgres;

-- Index: public.public._categorys_supplies_codi_acco_index

-- DROP INDEX public.public._categorys_supplies_codi_acco_index;

CREATE INDEX public_categorys_supplies_codi_acco_index
  ON public.categorys_supplies
  USING btree
  (codi_acco);

-- Index: public.public._categorys_supplies_codi_user_index

-- DROP INDEX public.public._categorys_supplies_codi_user_index;

CREATE INDEX public_categorys_supplies_codi_user_index
  ON public.categorys_supplies
  USING btree
  (codi_user);


-- Table: public.objects_studys

-- DROP TABLE public.objects_studys;

CREATE TABLE public.objects_studys
(
  codi_obst serial NOT NULL,
  nomb_obst character varying(200) NOT NULL,
  desc_obst text NOT NULL,
  borr_obst boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT public_objects_studys_pkey PRIMARY KEY (codi_obst)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.objects_studys
  OWNER TO postgres;

-- Index: public.public._objects_studys_codi_acco_index

-- DROP INDEX public.public._objects_studys_codi_acco_index;

CREATE INDEX public_objects_studys_codi_acco_index
  ON public.objects_studys
  USING btree
  (codi_acco);

-- Index: public.public._objects_studys_codi_user_index

-- DROP INDEX public.public._objects_studys_codi_user_index;

CREATE INDEX public_objects_studys_codi_user_index
  ON public.objects_studys
  USING btree
  (codi_user);

-- Table: public.components

-- DROP TABLE public.components;

CREATE TABLE public.components
(
  codi_comp serial NOT NULL,
  nomb_comp character varying(200) NOT NULL,
  desc_comp text NOT NULL,
  codi_obst integer NOT NULL,
  borr_comp boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT components_pkey PRIMARY KEY (codi_comp),
  CONSTRAINT public_components_codi_obst_foreign FOREIGN KEY (codi_obst)
      REFERENCES public.objects_studys (codi_obst) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.components
  OWNER TO postgres;

-- Index: public.public._components_codi_acco_index

-- DROP INDEX public.public._components_codi_acco_index;

CREATE INDEX public_components_codi_acco_index
  ON public.components
  USING btree
  (codi_acco);

-- Index: public.public._components_codi_obst_index

-- DROP INDEX public.public._components_codi_obst_index;

CREATE INDEX public_components_codi_obst_index
  ON public.components
  USING btree
  (codi_obst);

-- Index: public.public._components_codi_user_index

-- DROP INDEX public.public._components_codi_user_index;

CREATE INDEX public_components_codi_user_index
  ON public.components
  USING btree
  (codi_user);


-- Table: public.states_public.

-- DROP TABLE public.states_public.;

CREATE TABLE public.states_conditions
(
  codi_stco serial NOT NULL,
  nomb_stco character varying(200) NOT NULL,
  desc_stco text NOT NULL,
  vapo_stco double precision NOT NULL,
  colo_stco character varying(15) NOT NULL,
  borr_stco boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT states_conditions_pkey PRIMARY KEY (codi_stco)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.states_conditions
  OWNER TO postgres;

-- Index: public.public._states_public._codi_acco_index

-- DROP INDEX public.public._states_public._codi_acco_index;

CREATE INDEX public_states_conditions_codi_acco_index
  ON public.states_conditions
  USING btree
  (codi_acco);

-- Index: public.public._states_public._codi_user_index

-- DROP INDEX public.public._states_public._codi_user_index;

CREATE INDEX public_states_conditions_codi_user_index
  ON public.states_conditions
  USING btree
  (codi_user);

-- Table: public.supplies

-- DROP TABLE public.supplies;

CREATE TABLE public.supplies
(
  codi_supp serial NOT NULL,
  nomb_supp character varying(200) NOT NULL,
  codi_casu integer NOT NULL,
  borr_supp boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT supplies_pkey PRIMARY KEY (codi_supp),
  CONSTRAINT public_supplies_codi_casu_foreign FOREIGN KEY (codi_casu)
      REFERENCES public.categorys_supplies (codi_casu) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.supplies
  OWNER TO postgres;

-- Index: public.public._supplies_codi_acco_index

-- DROP INDEX public.public._supplies_codi_acco_index;

CREATE INDEX public_supplies_codi_acco_index
  ON public.supplies
  USING btree
  (codi_acco);

-- Index: public.public._supplies_codi_casu_index

-- DROP INDEX public.public._supplies_codi_casu_index;

CREATE INDEX public_supplies_codi_casu_index
  ON public.supplies
  USING btree
  (codi_casu);

-- Index: public.public._supplies_codi_user_index

-- DROP INDEX public.public._supplies_codi_user_index;

CREATE INDEX public_supplies_codi_user_index
  ON public.supplies
  USING btree
  (codi_user);


-- Table: public.findings

-- DROP TABLE public.findings;

CREATE TABLE public.findings
(
  codi_find serial NOT NULL,
  nomb_find character varying(200) NOT NULL,
  desc_find text NOT NULL,
  codi_stco integer NOT NULL,
  borr_find boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT findings_pkey PRIMARY KEY (codi_find),
  CONSTRAINT public_findings_codi_stco_foreign FOREIGN KEY (codi_stco)
      REFERENCES public.states_conditions(codi_stco) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.findings
  OWNER TO postgres;

-- Index: public.public._findings_codi_acco_index

-- DROP INDEX public.public._findings_codi_acco_index;

CREATE INDEX public_findings_codi_acco_index
  ON public.findings
  USING btree
  (codi_acco);

-- Index: public.public._findings_codi_stco_index

-- DROP INDEX public.public._findings_codi_stco_index;

CREATE INDEX public_findings_codi_stco_index
  ON public.findings
  USING btree
  (codi_stco);

-- Index: public.public._findings_codi_user_index

-- DROP INDEX public.public._findings_codi_user_index;

CREATE INDEX public_findings_codi_user_index
  ON public.findings
  USING btree
  (codi_user);


-- Table: public.evaluations

-- DROP TABLE public.evaluations;

CREATE TABLE public.evaluations
(
  codi_eval serial NOT NULL,
  nomb_eval character varying(200) NOT NULL,
  obse_eval text NOT NULL,
  feho_eval timestamp(0) with time zone NOT NULL,
  codi_caev integer NOT NULL,
  codi_obst integer NOT NULL,
  codi_peev integer NOT NULL,
  borr_eval boolean NOT NULL DEFAULT false,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT evaluations_pkey PRIMARY KEY (codi_eval),
  CONSTRAINT public_evaluations_codi_caev_foreign FOREIGN KEY (codi_caev)
      REFERENCES public.categorys_evaluations (codi_caev) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT public_evaluations_codi_obst_foreign FOREIGN KEY (codi_obst)
      REFERENCES public.objects_studys (codi_obst) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.evaluations
  OWNER TO postgres;

-- Index: public.public._evaluations_codi_acco_index

-- DROP INDEX public.public._evaluations_codi_acco_index;

CREATE INDEX public_evaluations_codi_acco_index
  ON public.evaluations
  USING btree
  (codi_acco);

-- Index: public.public._evaluations_codi_caev_index

-- DROP INDEX public.public._evaluations_codi_caev_index;

CREATE INDEX public_evaluations_codi_caev_index
  ON public.evaluations
  USING btree
  (codi_caev);

-- Index: public.public._evaluations_codi_obst_index

-- DROP INDEX public.public._evaluations_codi_obst_index;

CREATE INDEX public_evaluations_codi_obst_index
  ON public.evaluations
  USING btree
  (codi_obst);

-- Index: public.public._evaluations_codi_peev_index

-- DROP INDEX public.public._evaluations_codi_peev_index;

CREATE INDEX public_evaluations_codi_peev_index
  ON public.evaluations
  USING btree
  (codi_peev);

-- Index: public.public._evaluations_codi_user_index

-- DROP INDEX public.public._evaluations_codi_user_index;

CREATE INDEX public_evaluations_codi_user_index
  ON public.evaluations
  USING btree
  (codi_user);

-- Table: public..evaluations_details

-- DROP TABLE public..evaluations_details;

CREATE TABLE public.evaluations_details
(
  codi_deev serial NOT NULL,
  codi_eval integer NOT NULL,
  codi_find integer NOT NULL,
  codi_supp integer NOT NULL,
  borr_deev boolean NOT NULL,
  codi_acco integer NOT NULL,
  codi_user integer NOT NULL,
  CONSTRAINT evaluations_details_pkey PRIMARY KEY (codi_deev),
  CONSTRAINT public_evaluations_details_codi_eval_foreign FOREIGN KEY (codi_eval)
      REFERENCES public.evaluations (codi_eval) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT public_evaluations_details_codi_find_foreign FOREIGN KEY (codi_find)
      REFERENCES public.findings (codi_find) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT public_evaluations_details_codi_supp_foreign FOREIGN KEY (codi_supp)
      REFERENCES public.supplies (codi_supp) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.evaluations_details
  OWNER TO postgres;

-- Index: public..public._evaluations_details_codi_acco_index

-- DROP INDEX public..public._evaluations_details_codi_acco_index;

CREATE INDEX public_evaluations_details_codi_acco_index
  ON public.evaluations_details
  USING btree
  (codi_acco);

-- Index: public..public._evaluations_details_codi_eval_index

-- DROP INDEX public..public._evaluations_details_codi_eval_index;

CREATE INDEX public_evaluations_details_codi_eval_index
  ON public.evaluations_details
  USING btree
  (codi_eval);

-- Index: public..public._evaluations_details_codi_find_index

-- DROP INDEX public..public._evaluations_details_codi_find_index;

CREATE INDEX public_evaluations_details_codi_find_index
  ON public.evaluations_details
  USING btree
  (codi_find);

-- Index: public..public._evaluations_details_codi_supp_index

-- DROP INDEX public..public._evaluations_details_codi_supp_index;

CREATE INDEX public_evaluations_details_codi_supp_index
  ON public.evaluations_details
  USING btree
  (codi_supp);

-- Index: public..public._evaluations_details_codi_user_index

-- DROP INDEX public..public._evaluations_details_codi_user_index;

CREATE INDEX public_evaluations_details_codi_user_index
  ON public.evaluations_details
  USING btree
  (codi_user);