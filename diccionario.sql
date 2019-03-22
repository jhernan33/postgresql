--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-10-11 11:27:57 -04

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
-- 
-- SET default_with_oids = false;
-- 
-- --
-- TOC entry 287 (class 1259 OID 91381)
-- Name: dictionary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dictionary (
    id bigint NOT NULL,
    english character varying(255),
    spanish character varying(255)
);


ALTER TABLE public.dictionary OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 91379)
-- Name: dictionary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dictionary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dictionary_id_seq OWNER TO postgres;

--
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 286
-- Name: dictionary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dictionary_id_seq OWNED BY public.dictionary.id;


--
-- TOC entry 3089 (class 2604 OID 91384)
-- Name: dictionary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dictionary ALTER COLUMN id SET DEFAULT nextval('public.dictionary_id_seq'::regclass);


--
-- TOC entry 3214 (class 0 OID 91381)
-- Dependencies: 287
-- Data for Name: dictionary; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dictionary (id, english, spanish) VALUES (25, 'January', 'Enero');
INSERT INTO public.dictionary (id, english, spanish) VALUES (26, 'February', 'Febrero');
INSERT INTO public.dictionary (id, english, spanish) VALUES (27, 'March', 'Marzo');
INSERT INTO public.dictionary (id, english, spanish) VALUES (28, 'April', 'Abril');
INSERT INTO public.dictionary (id, english, spanish) VALUES (29, 'May', 'Mayo');
INSERT INTO public.dictionary (id, english, spanish) VALUES (30, 'June', 'Junio');
INSERT INTO public.dictionary (id, english, spanish) VALUES (31, 'July', 'Julio');
INSERT INTO public.dictionary (id, english, spanish) VALUES (32, 'August', 'Agosto');
INSERT INTO public.dictionary (id, english, spanish) VALUES (33, 'September', 'Septiembre');
INSERT INTO public.dictionary (id, english, spanish) VALUES (34, 'October', 'Octubre');
INSERT INTO public.dictionary (id, english, spanish) VALUES (35, 'November', 'Noviembre');
INSERT INTO public.dictionary (id, english, spanish) VALUES (36, 'December', 'Diciembre');


--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 286
-- Name: dictionary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dictionary_id_seq', 36, true);


--
-- TOC entry 3091 (class 2606 OID 91389)
-- Name: dictionary dictionary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dictionary
    ADD CONSTRAINT dictionary_pkey PRIMARY KEY (id);


-- Completed on 2018-10-11 11:27:58 -04

--
-- PostgreSQL database dump complete
--

