--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-08-22 10:40:28 -04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 211 (class 1259 OID 77099)
-- Name: state_conditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state_conditions (
    codi_stco bigint NOT NULL,
    nomb_stco character varying(200) NOT NULL,
    desc_stco text,
    vapo_stco double precision,
    colo_stco character varying(15),
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.state_conditions OWNER TO postgres;

--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE state_conditions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.state_conditions IS 'Registro Estado de Condiciones';


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.codi_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.codi_stco IS 'Codigo del Estado de Condicion';


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.nomb_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.nomb_stco IS 'Nombre del Estado de Condicion';


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.desc_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.desc_stco IS 'Descripcion del Estado de Condicion';


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.vapo_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.vapo_stco IS 'Valor Porcentual del Estado de Condicion';


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.colo_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.colo_stco IS 'Color Porcentual del Estado de Condicion';


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.deleted IS 'Borrado Logico del Estado de Condicion';


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.created_at IS 'Fecha de Creacion del Estado de Condicion';


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.updated_at IS 'Fecha de Actualizacion del Estado de Condicion';


--
-- TOC entry 210 (class 1259 OID 77097)
-- Name: state_conditions_codi_stco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.state_conditions_codi_stco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_conditions_codi_stco_seq OWNER TO postgres;

--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 210
-- Name: state_conditions_codi_stco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.state_conditions_codi_stco_seq OWNED BY public.state_conditions.codi_stco;


--
-- TOC entry 2885 (class 2604 OID 77102)
-- Name: state_conditions codi_stco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_conditions ALTER COLUMN codi_stco SET DEFAULT nextval('public.state_conditions_codi_stco_seq'::regclass);


--
-- TOC entry 3013 (class 0 OID 77099)
-- Dependencies: 211
-- Data for Name: state_conditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Normal', '55af2cf2797292090756458c9f8ad66f', 0, 'Blanco', false, 1, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (2, 'Pendiente', 'fb72ede401154b6e77bbdb2cf7475f9e', 25, 'Azul', false, 1, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (5, 'Critico', '443f2a15fd5fc2c0fc6ada4784d980f7', 100, 'Rojo', false, 1, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (4, 'Advertencia', '16a5cb094a501c4987554a155d97ff13', 75, 'Amarrillo', false, 1, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (3, 'Regular', '84076aa35066b2b372cd0176df8b618d', 50, 'Verde', false, 1, 1, NULL, NULL);


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 210
-- Name: state_conditions_codi_stco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.state_conditions_codi_stco_seq', 1, false);


--
-- TOC entry 2888 (class 2606 OID 77108)
-- Name: state_conditions pk_public_state_conditions_codi_stco; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_conditions
    ADD CONSTRAINT pk_public_state_conditions_codi_stco PRIMARY KEY (codi_stco);


--
-- TOC entry 2889 (class 1259 OID 77109)
-- Name: public_state_conditions_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_state_conditions_codi_acco_index ON public.state_conditions USING btree (codi_acco);


--
-- TOC entry 2890 (class 1259 OID 77110)
-- Name: public_state_conditions_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_state_conditions_codi_user_index ON public.state_conditions USING btree (codi_user);


-- Completed on 2018-08-22 10:40:28 -04

--
-- PostgreSQL database dump complete
--

