--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-08-22 08:23:04 -04

-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', false);
-- SET check_function_bodies = false;
-- SET client_min_messages = warning;
-- SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 215 (class 1259 OID 57083)
-- Name: findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.findings (
    codi_find integer NOT NULL,
    nomb_find character varying(200) NOT NULL,
    codi_stco integer NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL
);


ALTER TABLE public.findings OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 57081)
-- Name: findings_codi_find_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.findings_codi_find_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.findings_codi_find_seq OWNER TO postgres;

--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 214
-- Name: findings_codi_find_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.findings_codi_find_seq OWNED BY public.findings.codi_find;


--
-- TOC entry 2885 (class 2604 OID 57086)
-- Name: findings codi_find; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.findings ALTER COLUMN codi_find SET DEFAULT nextval('public.findings_codi_find_seq'::regclass);


--
-- TOC entry 3015 (class 0 OID 57083)
-- Dependencies: 215
-- Data for Name: findings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (1, 'Vacio', 1, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (2, 'Un Cuarto', 2, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (3, 'Medio', 3, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (4, 'Tres Cuartos', 4, false, 1, 1);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user) VALUES (5, 'Full', 5, false, 1, 1);


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 214
-- Name: findings_codi_find_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.findings_codi_find_seq', 1, false);


--
-- TOC entry 2888 (class 2606 OID 57089)
-- Name: findings findings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.findings
    ADD CONSTRAINT findings_pkey PRIMARY KEY (codi_find);


--
-- TOC entry 2889 (class 1259 OID 57096)
-- Name: public_findings_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_findings_codi_acco_index ON public.findings USING btree (codi_acco);


--
-- TOC entry 2890 (class 1259 OID 57095)
-- Name: public_findings_codi_stco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_findings_codi_stco_index ON public.findings USING btree (codi_stco);


--
-- TOC entry 2891 (class 1259 OID 57097)
-- Name: public_findings_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_findings_codi_user_index ON public.findings USING btree (codi_user);


--
-- TOC entry 2892 (class 2606 OID 57090)
-- Name: findings public_findings_codi_stco_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.findings
    ADD CONSTRAINT public_findings_codi_stco_foreign FOREIGN KEY (codi_stco) REFERENCES public.states_conditions(codi_stco) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2018-08-22 08:23:04 -04

--
-- PostgreSQL database dump complete
--

