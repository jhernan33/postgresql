--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-09-21 08:15:50 -04

-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', false);
-- SET check_function_bodies = false;
-- SET client_min_messages = warning;
-- SET row_security = off;
-- 
-- SET default_tablespace = '';

-- SET default_with_oids = false;

--
-- TOC entry 256 (class 1259 OID 79877)
-- Name: classification_containers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classification_containers (
    codi_clco bigint NOT NULL,
    desc_clco character varying(200) NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.classification_containers OWNER TO postgres;

--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE classification_containers; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.classification_containers IS 'Registro de la Clasificacion de Contenedores';


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.codi_clco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.codi_clco IS 'Codigo de la Clasificacion de Contenedores';


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.desc_clco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.desc_clco IS 'Nombre de la Clasificacion de Contenedores';


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.deleted IS 'Borrado Logico de la Clasificacion de Contenedores';


--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.created_at IS 'Fecha de Creacion de la Clasificacion de Contenedores';


--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN classification_containers.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.classification_containers.updated_at IS 'Fecha de Actualizacion de la Clasificacion de Contenedores';


--
-- TOC entry 255 (class 1259 OID 79875)
-- Name: classification_containers_codi_clco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classification_containers_codi_clco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classification_containers_codi_clco_seq OWNER TO postgres;

--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 255
-- Name: classification_containers_codi_clco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classification_containers_codi_clco_seq OWNED BY public.classification_containers.codi_clco;


--
-- TOC entry 3015 (class 2604 OID 79880)
-- Name: classification_containers codi_clco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classification_containers ALTER COLUMN codi_clco SET DEFAULT nextval('public.classification_containers_codi_clco_seq'::regclass);


--
-- TOC entry 3143 (class 0 OID 79877)
-- Dependencies: 256
-- Data for Name: classification_containers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.classification_containers (codi_clco, desc_clco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Removible', false, 1, 1, NULL, NULL);
INSERT INTO public.classification_containers (codi_clco, desc_clco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (2, 'Fijo', false, 1, 1, NULL, NULL);


--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 255
-- Name: classification_containers_codi_clco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classification_containers_codi_clco_seq', 1, false);


--
-- TOC entry 3020 (class 2606 OID 79883)
-- Name: classification_containers pk_public_classification_containers_codi_clco; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classification_containers
    ADD CONSTRAINT pk_public_classification_containers_codi_clco PRIMARY KEY (codi_clco);


--
-- TOC entry 3017 (class 1259 OID 79884)
-- Name: classification_containers_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classification_containers_codi_acco_index ON public.classification_containers USING btree (codi_acco);


--
-- TOC entry 3018 (class 1259 OID 79885)
-- Name: classification_containers_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classification_containers_codi_user_index ON public.classification_containers USING btree (codi_user);


-- Completed on 2018-09-21 08:15:51 -04

--
-- PostgreSQL database dump complete
--

