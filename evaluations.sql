--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-10-03 15:46:55 -04
-- 
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
-- TOC entry 205 (class 1259 OID 137817)
-- Name: evaluations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations (
    codi_eval bigint NOT NULL,
    feho_eval timestamp without time zone NOT NULL,
    pers_eval character varying(15),
    codi_caev integer DEFAULT 9 NOT NULL,
    codi_find integer NOT NULL,
    codi_obes integer NOT NULL,
    obse_eval text,
    stat_eval boolean DEFAULT false NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.evaluations OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE evaluations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evaluations IS 'Registro de Evaluaciones';


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.codi_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_eval IS 'Codigo de la Evaluacion';


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.feho_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.feho_eval IS 'Fecha Hora de la Evaluacion';


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.pers_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.pers_eval IS 'Codigo de la Persona Elabora la Evaluacion';


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.codi_caev; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_caev IS 'Codigo de la Categoria de Evaluacion';


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.codi_find; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_find IS 'Codigo del Hallazgo';


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.codi_obes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_obes IS 'Codigo del Objeto de Evaluacion';


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.obse_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.obse_eval IS 'Observaciones de la Evaluacion';


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.stat_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.stat_eval IS 'Estado de la Evaluacion (Abierta o Cerrada =>Ya se remedio)';


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.deleted IS 'Borrado Logico de la Evaluacion';


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.created_at IS 'Fecha de Creacion de la Evaluacion';


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN evaluations.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.updated_at IS 'Fecha de Actualizacion de la Evaluacion';


--
-- TOC entry 206 (class 1259 OID 137826)
-- Name: evaluations_codi_eval_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_codi_eval_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_codi_eval_seq OWNER TO postgres;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 206
-- Name: evaluations_codi_eval_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_codi_eval_seq OWNED BY public.evaluations.codi_eval;


--
-- TOC entry 2883 (class 2604 OID 137904)
-- Name: evaluations codi_eval; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations ALTER COLUMN codi_eval SET DEFAULT nextval('public.evaluations_codi_eval_seq'::regclass);


--
-- TOC entry 3013 (class 0 OID 137817)
-- Dependencies: 205
-- Data for Name: evaluations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (145, '2018-09-28 04:00:00', NULL, 9, 5, 137, NULL, false, false, 2, 1, '2018-09-28 12:33:20', '2018-09-28 12:33:20');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (146, '2018-09-30 00:00:00', 'Jesus Castillo', 9, 3, 95, 'prueba de app, con localizacion', false, false, 2, 1, '2018-09-28 12:34:53', '2018-09-28 12:34:53');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (147, '2018-09-28 04:00:00', 'Arthur Torres', 9, 5, 144, NULL, false, false, 2, 1, '2018-09-28 12:34:59', '2018-09-28 12:34:59');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (148, '2018-09-29 00:00:00', 'Jesus Castillo', 9, 1, 136, 'prueba de app, con localizacion', false, false, 2, 1, '2018-09-28 13:52:28', '2018-09-28 13:52:28');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (149, '2018-10-01 00:00:00', 'Jesus Castillo', 9, 4, 121, 'prueba de app, con localizacion', false, false, 2, 1, '2018-09-28 14:16:17', '2018-09-28 14:16:17');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (150, '2018-10-03 05:00:00', 'Arthur Torres', 9, 3, 52, NULL, false, false, 2, 1, '2018-10-01 16:22:24', '2018-10-01 16:22:24');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (151, '2018-10-04 00:00:00', 'Jesus Castillo', 9, 3, 132, 'prueba de app, con localizacion', false, false, 2, 1, '2018-10-02 13:54:16', '2018-10-02 13:54:16');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (152, '2018-10-02 00:00:00', 'Jesus Castillo', 9, 5, 103, 'prueba de app, con localizacion', false, false, 2, 1, '2018-10-02 14:02:34', '2018-10-02 14:02:34');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (153, '2018-10-06 00:00:00', 'Jesus Castillo', 9, 1, 103, 'prueba de app, con localizacion', false, false, 2, 1, '2018-10-02 14:10:03', '2018-10-02 14:10:03');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (154, '2018-10-06 00:00:00', 'Jesus Castillo', 9, 1, 132, 'prueba de app, con localizacion', false, false, 2, 1, '2018-10-02 14:16:07', '2018-10-02 14:16:07');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (155, '2018-10-06 04:00:00', 'Arthur Torres', 9, 1, 159, NULL, false, false, 2, 1, '2018-10-02 20:45:48', '2018-10-02 20:45:48');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (156, '2018-10-05 04:00:00', 'Arthur Torres', 9, 2, 115, NULL, false, false, 2, 1, '2018-10-02 20:47:57', '2018-10-02 20:47:57');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (157, '2018-10-03 04:00:00', 'Arthur Torres', 9, 4, 118, NULL, false, false, 2, 1, '2018-10-02 20:49:21', '2018-10-02 20:49:21');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (158, '2018-10-05 00:00:00', 'Jesus Castillo', 9, 3, 62, 'prueba de app, con localizacion', false, false, 2, 1, '2018-10-03 17:31:20', '2018-10-03 17:31:20');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (159, '2018-10-05 05:00:00', 'Arthur Torres', 9, 3, 54, NULL, false, false, 2, 1, '2018-10-03 18:19:20', '2018-10-03 18:19:20');
INSERT INTO public.evaluations (codi_eval, feho_eval, pers_eval, codi_caev, codi_find, codi_obes, obse_eval, stat_eval, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (160, '2018-10-04 05:00:00', 'Arthur Torres', 9, 4, 69, NULL, false, false, 2, 1, '2018-10-03 19:05:41', '2018-10-03 19:05:41');


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 206
-- Name: evaluations_codi_eval_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_codi_eval_seq', 160, true);


--
-- TOC entry 2885 (class 2606 OID 137936)
-- Name: evaluations pk_public_evaluations_codi_eval; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT pk_public_evaluations_codi_eval PRIMARY KEY (codi_eval);


--
-- TOC entry 2886 (class 1259 OID 137960)
-- Name: public_evaluations_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_acco_index ON public.evaluations USING btree (codi_acco);


--
-- TOC entry 2887 (class 1259 OID 137961)
-- Name: public_evaluations_codi_caev_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_caev_index ON public.evaluations USING btree (codi_caev);


--
-- TOC entry 2888 (class 1259 OID 137962)
-- Name: public_evaluations_codi_obes_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_obes_index ON public.evaluations USING btree (codi_obes);


--
-- TOC entry 2889 (class 1259 OID 137963)
-- Name: public_evaluations_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_user_index ON public.evaluations USING btree (codi_user);


--
-- TOC entry 2890 (class 2606 OID 137978)
-- Name: evaluations fk_public_evaluations_codi_find; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_public_evaluations_codi_find FOREIGN KEY (codi_find) REFERENCES public.findings(codi_find) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2891 (class 2606 OID 137983)
-- Name: evaluations fk_public_evaluations_codi_stco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_public_evaluations_codi_stco FOREIGN KEY (codi_caev) REFERENCES public.category_evaluations(codi_caev) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2018-10-03 15:46:55 -04

--
-- PostgreSQL database dump complete
--

