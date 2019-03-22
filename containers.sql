-- --
-- -- PostgreSQL database dump
-- --
-- 
-- -- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- -- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- 
-- -- Started on 2018-09-25 09:06:59 -04
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
-- --
-- -- TOC entry 348 (class 1259 OID 126954)
-- -- Name: containers; Type: TABLE; Schema: public; Owner: postgres
-- --
-- 
-- CREATE TABLE public.containers (
--     codi_cont bigint NOT NULL,
--     nomb_cont character varying(200) NOT NULL,
--     desc_cont text,
--     codi_clco integer DEFAULT 1 NOT NULL,
--     lati_cont double precision,
--     long_cont double precision,
--     tagx_cont character varying(50),
--     tama_cont character varying(100),
--     capa_cont character varying(100),
--     pebr_cont double precision,
--     alto_cont double precision,
--     anch_cont double precision,
--     prof_cont double precision,
--     foto_cont character varying(255),
--     stat_cont integer,
--     deleted boolean DEFAULT false NOT NULL,
--     codi_acco integer NOT NULL,
--     codi_user integer NOT NULL,
--     created_at timestamp without time zone,
--     updated_at timestamp without time zone
-- );
-- 
-- 
-- ALTER TABLE public.containers OWNER TO postgres;
-- 
-- --
-- -- TOC entry 4909 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: TABLE containers; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON TABLE public.containers IS 'Registro de Containers';
-- 
-- 
-- --
-- -- TOC entry 4910 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.codi_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.codi_cont IS 'Codigo del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4911 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.nomb_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.nomb_cont IS 'Nombre del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4912 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.desc_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.desc_cont IS 'Descripcion del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4913 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.codi_clco; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.codi_clco IS 'Codigo de Clasificacion del Contenedor (1=Removible o 2=Fijo)';
-- 
-- 
-- --
-- -- TOC entry 4914 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.lati_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.lati_cont IS 'Latitud del Contenedor del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4915 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.long_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.long_cont IS 'Longitud del Contenedor del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4916 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.tagx_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.tagx_cont IS 'Tag del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4917 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.tama_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.tama_cont IS 'Tamano del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4918 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.capa_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.capa_cont IS 'Capacidad del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4919 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.pebr_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.pebr_cont IS 'Peso Bruto del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4920 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.alto_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.alto_cont IS 'Altura del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4921 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.anch_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.anch_cont IS 'Ancho del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4922 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.prof_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.prof_cont IS 'Profundidad del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4923 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.foto_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.foto_cont IS 'Foto del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4924 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.stat_cont; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.stat_cont IS 'Status del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4925 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.deleted; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.deleted IS 'Borrado Logico del Contenedor';
-- 
-- 
-- --
-- -- TOC entry 4926 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.codi_acco IS 'Codigo de la Cuenta';
-- 
-- 
-- --
-- -- TOC entry 4927 (class 0 OID 0)
-- -- Dependencies: 348
-- -- Name: COLUMN containers.codi_user; Type: COMMENT; Schema: public; Owner: postgres
-- --
-- 
-- COMMENT ON COLUMN public.containers.codi_user IS 'Codigo del Usuario';
-- 
-- 
-- --
-- -- TOC entry 347 (class 1259 OID 126952)
-- -- Name: containers_codi_cont_seq; Type: SEQUENCE; Schema: public; Owner: postgres
-- --
-- 
-- CREATE SEQUENCE public.containers_codi_cont_seq
--     START WITH 1
--     INCREMENT BY 1
--     NO MINVALUE
--     NO MAXVALUE
--     CACHE 1;
-- 
-- 
-- ALTER TABLE public.containers_codi_cont_seq OWNER TO postgres;
-- 
-- --
-- -- TOC entry 4928 (class 0 OID 0)
-- -- Dependencies: 347
-- -- Name: containers_codi_cont_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
-- --
-- 
-- ALTER SEQUENCE public.containers_codi_cont_seq OWNED BY public.containers.codi_cont;
-- 
-- 
-- --
-- -- TOC entry 4764 (class 2604 OID 126957)
-- -- Name: containers codi_cont; Type: DEFAULT; Schema: public; Owner: postgres
-- --
-- 
-- ALTER TABLE ONLY public.containers ALTER COLUMN codi_cont SET DEFAULT nextval('public.containers_codi_cont_seq'::regclass);


--
-- TOC entry 4903 (class 0 OID 126954)
-- Dependencies: 348
-- Data for Name: containers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (167, '1', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-12 15:35:42.875', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (121, '2', NULL, 1, 9.33828299999999878, -79.8834829999999982, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-03 15:51:26.188', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (180, '2', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-26 14:24:27.227', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (88, '3', NULL, 1, 9.3617600000000003, -79.9037950000000023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 14:19:30.998', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (130, '3', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 16:25:22.869', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (123, '4', NULL, 1, 9.35520499999999977, -79.9025049999999908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-03 16:57:30.657', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (85, '5', NULL, 1, 9.36070499999999939, -79.8966350000000034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 13:15:03.052', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (131, '6', NULL, 1, 9.37381700000000251, -79.8227329999999995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 16:43:02.298', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (188, '7', NULL, 1, 9.31031699999999951, -79.9157670000000024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-05-11 15:20:08.205', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (153, '8', NULL, 1, 9.37736199999999975, -79.8867400000000032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-08 06:24:28.345', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (113, '9', NULL, 1, 9.30924999999999869, -79.9104999999999848, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 20:22:46.554', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (159, '10', NULL, 1, 9.27289500000000011, -79.7129300000000001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-10 18:29:10.761', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (95, '11', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 16:12:35.298', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (142, '15', NULL, 1, 9.35413299999999914, -79.8530169999999941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-06 03:40:25.362', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (140, '16', NULL, 1, 9.30815000000000126, -79.9157329999999888, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-05 17:53:08.991', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (141, '18', NULL, 1, 9.36038299999999879, -79.8313670000000002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-05 18:20:58.467', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (144, '20', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-06 08:20:50.513', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (145, '21', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-06 15:14:19.969', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (175, '22', NULL, 1, 9.30914999999999893, -79.9142329999999959, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-19 18:59:00.034', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (174, '23', NULL, 1, 9.30918300000000087, -79.9125329999999963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-19 17:30:35.202', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (156, '24', NULL, 1, 9.36469999999999914, -79.9489669999999961, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-08 19:48:47.934', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (185, '25', NULL, 1, 9.30723300000000009, -79.9217670000000027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-05-05 20:22:16.578', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (104, '26', NULL, 1, 9.30716699999999975, -79.9240669999999938, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 14:19:03.923', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (169, '27', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-15 15:50:27.549', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (147, '28', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-06 19:16:49.484', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (107, '29', NULL, 1, 9.34003299999999825, -79.8932000000000073, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 14:57:57.59', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (137, '30', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-05 15:21:35.087', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (164, '31', NULL, 1, 9.31148299999999907, -79.9140670000000028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-11 18:46:08.572', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (82, '32', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-04 18:25:05.38', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (93, '33', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 16:02:44.808', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (184, '34', NULL, 1, 9.37780000000000058, -79.8870330000000024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-05-05 16:19:19.23', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (119, '35', NULL, 1, 9.35173299999999941, -79.8593670000000202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-01 18:44:22.47', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (97, '36', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 16:43:18.832', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (116, '37', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-01 17:04:54.051', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (150, '38', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-07 17:12:06.874', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (152, '39', NULL, 1, 9.35498300000000071, -79.8539499999999975, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-07 21:12:58.019', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (114, '40', NULL, 1, 9.30871699999999791, -79.903082999999981, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-01 14:40:49.106', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (136, '41', NULL, 1, 9.36911699999999925, -79.8496999999999986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-05 13:59:15.157', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (92, '42', NULL, 1, 9.36003300000000138, -79.9046830000000057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 15:41:52.642', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (129, '43', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 15:55:40.758', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (168, '44', NULL, 1, 9.36649999999999849, -79.9022999999999968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-15 15:39:28.615', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (96, '45', NULL, 1, 9.36491699999999838, -79.9029500000000041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 16:15:06.714', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (111, '46', NULL, 1, 9.31149999999999878, -79.9153670000000034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 19:13:34.524', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (108, '47', NULL, 1, 9.30489999999999995, -79.9226500000000044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 15:52:09.972', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (91, '48', NULL, 1, 9.38385000000000247, -79.8542000000000201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 14:40:07.455', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (109, '49', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 18:11:00.594', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (179, '50', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-24 18:07:30.551', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (181, '51', NULL, 1, 9.37444999999999951, -79.787700000000001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-27 14:34:32.822', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (90, '52', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 14:31:05.503', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (148, '53', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-07 02:56:48.839', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (105, '54', NULL, 1, 9.26479999999999926, -79.7019499999999823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 14:47:46.94', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (132, '55', NULL, 1, 9.35928300000000135, -79.9036330000000135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 16:46:58.811', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (89, '57', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 14:19:43.021', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (163, '58', NULL, 1, 9.3052829999999993, -79.931083000000001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-11 16:13:22.881', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (155, '59', NULL, 1, 9.3551169999999999, -79.8510670000000005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-08 15:20:05.699', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (154, '60', NULL, 1, 9.30703300000000056, -79.9230330000000038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-08 14:11:01.161', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (143, '61', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-06 05:06:21.473', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (103, '66', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 13:41:18.953', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (170, '82', NULL, 1, 9.26458300000000001, -79.7018999999999949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-17 13:14:30.283', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (120, '84', NULL, 1, 9.35563300000000098, -79.900383000000005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-03 14:36:58.096', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (122, '85', NULL, 1, 9.33990000000000009, -79.894299999999987, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-03 16:29:03.968', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (98, '86', NULL, 1, 9.38491699999999796, -79.8859830000000102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 17:17:04.741', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (115, '87', NULL, 1, 9.34861700000000084, -79.8529829999999947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-01 15:39:12.517', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (173, '103', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-18 16:40:20.181', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (182, '105', NULL, 1, 9.37808300000000017, -79.8658499999999947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-05-04 21:00:44.949', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (81, '109', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-04 18:16:06.215', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (158, '119', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-09 02:53:52.825', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (94, '121', NULL, 1, 9.30904999999999916, -79.9086829999999964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 16:08:41.562', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (110, '122', NULL, 1, 9.30946699999999794, -79.9079499999999996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 19:08:07.162', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (80, '124', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-04 17:58:28.745', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (102, '151', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-31 13:34:57.684', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (128, '152', NULL, 1, 9.35746699999999976, -79.8932829999999967, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 15:25:36.327', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (172, '153', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-17 21:16:08.371', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (183, '155', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-05-05 14:34:55.409', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (101, '157', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 18:14:08.275', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (146, '158', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-06 17:48:14.245', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (133, '180', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 18:58:04.341', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (99, '181', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 17:38:54.144', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (157, '183', NULL, 1, 9.30644999999999811, -79.9257829999999956, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-08 20:18:37.113', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (127, '184', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-03 19:50:17.56', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (87, '186', NULL, 1, 9.36698300000000117, -79.848766999999981, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 13:43:27.283', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (177, '188', NULL, 1, 9.35306699999999935, -79.8991499999999917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-22 15:53:03.608', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (118, '189', NULL, 1, 9.36531699999999745, -79.9048499999999962, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-01 18:17:20.536', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (165, '190', NULL, 1, 9.3345830000000003, -79.9051829999999939, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-11 19:48:10.051', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (134, '191', NULL, 1, 9.37235000000000085, -79.7869000000000028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-04 20:30:15.546', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (151, '192', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-07 19:43:48.538', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (100, '194', NULL, 1, 9.35441699999999798, -79.8524500000000046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-03-30 18:01:51.351', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (117, '197', NULL, 1, 9.30874999999999986, -79.9112499999999955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-01 17:29:40.117', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (149, '198', NULL, 1, 9.32858299999999829, -79.7958169999999996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-07 07:34:02.332', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (166, '199', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-04-12 05:16:07.009', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (52, '200', NULL, 1, 9.35219000000000023, -79.8839300000000065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 23:06:18.022', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (36, '201', NULL, 1, 9.35105000000000075, -79.8970499999999788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:27:03.536', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (14, '202', NULL, 1, 9.35030000000000072, -79.8975499999999954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:21:12.62', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (33, '203', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:26:12.061', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (11, '204', NULL, 1, 9.3492999999999995, -79.8962499999999949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:20:31.626', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (63, '205', NULL, 1, 9.35146699999999953, -79.8928999999999974, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-07 03:13:37.294', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (56, '206', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 00:53:12.373', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (39, '207', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:27:42.803', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (54, '208', NULL, 1, 9.34793299999999761, -79.8954800000000063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 00:07:04.473', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (57, '209', NULL, 1, 9.34645000000000081, -79.8920669999999973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 01:37:22.261', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (48, '210', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 21:42:01.959', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (43, '211', NULL, 1, 9.3521099999999997, -79.880430000000004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:29:45.29', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (29, '212', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:23:54.724', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (13, '213', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:21:02.036', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (26, '214', NULL, 1, 9.35116700000000023, -79.8822100000000006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:23:21.265', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (40, '215', NULL, 1, 9.35321700000000078, -79.8862100000000055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:27:52.951', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (77, '216', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 11:45:06.321', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (76, '217', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 11:44:39.467', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (23, '218', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:22:43.239', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (47, '219', NULL, 1, 9.35064000000000206, -79.8869200000000035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 21:08:13.775', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (16, '220', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:21:34.448', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (45, '221', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:30:34.714', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (46, '222', NULL, 1, 9.35346699999999842, -79.8800600000000003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:40:53.96', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (32, '223', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:25:40.519', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (73, '224', NULL, 1, 9.38711199999999835, -79.8845900000000029, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 04:08:21.655', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (58, '225', NULL, 1, 9.34591700000000003, -79.8798669999999902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 02:14:52.834', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (41, '226', NULL, 1, 9.34388299999999994, -79.8803000000000054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:28:54.985', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (21, '227', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:22:22.115', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (51, '228', NULL, 1, 9.34205000000000041, -79.8819830000000053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 22:49:11.889', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (42, '229', NULL, 1, 9.34420000000000073, -79.882033000000007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:29:15.841', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (34, '230', NULL, 1, 9.34441699999999997, -79.8828170000000028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:26:29.195', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (31, '231', NULL, 1, 9.34498299999999915, -79.8862330000000043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:25:26.163', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (64, '232', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-07 04:18:43.001', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (78, '233', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 11:45:38.571', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (9, '234', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:19:29.017', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (8, '235', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:18:51.429', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (62, '236', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-07 02:36:11.895', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (17, '237', NULL, 1, 9.34633299999999956, -79.8861299999999943, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:21:43.978', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (49, '238', NULL, 1, 9.35536699999999755, -79.8784499999999866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 22:20:55.979', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (71, '239', NULL, 1, 9.34553299999999965, -79.8740300000000047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 03:03:12.398', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (6, '240', NULL, 1, 9.34678300000000206, -79.881416999999999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:17:30.295', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (20, '241', NULL, 1, 9.34976699999999994, -79.8844600000000042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:22:11.188', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (53, '242', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 00:00:18.293', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (60, '243', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 02:55:10.756', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (24, '244', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:23:02.292', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (65, '245', NULL, 1, 9.34838000000000058, -79.8627999999999929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-07 07:44:45.087', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (10, '246', NULL, 1, 9.35065000000000168, -79.879249999999999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:20:22.499', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (12, '247', NULL, 1, 9.30570000000000164, -79.9284999999999997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:20:48.196', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (7, '248', NULL, 1, 9.35151700000000119, -79.8844500000000011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:17:59.059', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (22, '249', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:22:31.769', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (74, '250', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 04:21:50.179', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (75, '251', NULL, 1, 9.34578300000000084, -79.876199999999983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 04:57:19.359', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (69, '252', NULL, 1, 9.34505000000000052, -79.873500000000007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 01:41:12.266', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (68, '253', NULL, 1, 9.34497999999999962, -79.8710100000000125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 00:51:51.678', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (59, '254', NULL, 1, 9.34362999999999744, -79.8763000000000147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 02:24:34.104', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (70, '255', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 02:25:19.026', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (66, '256', NULL, 1, 9.35311699999999924, -79.8992329999999953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-07 07:45:05.582', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (61, '257', NULL, 1, 9.35993300000000161, -79.9046830000000057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-07 01:23:42.227', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (28, '258', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:23:37.498', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (18, '259', NULL, 1, 9.29067999999999827, -79.9099300000000028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:21:52.988', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (25, '260', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:23:11.343', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (44, '261', NULL, 1, 9.34089999999999776, -79.8852499999999992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:30:10.759', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (72, '262', NULL, 1, 9.3428299999999993, -79.8749599999999873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 03:51:26.168', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (55, '263', NULL, 1, 9.34138300000000044, -79.8837099999999936, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-05 00:08:07.564', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (19, '264', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:22:03.057', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (35, '265', NULL, 1, 9.35474999999999746, -79.8852600000000024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:26:42.356', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (27, '266', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:23:29.043', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (15, '267', NULL, 1, 9.34635000000000105, -79.8869169999999968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:21:26.033', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (67, '268', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-08 00:44:26.604', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (38, '269', NULL, 1, 9.34386699999999948, -79.8837299999999857, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2017-02-04 17:27:28.515', NULL);
INSERT INTO public.containers (codi_cont, nomb_cont, desc_cont, codi_clco, lati_cont, long_cont, tagx_cont, tama_cont, capa_cont, pebr_cont, alto_cont, anch_cont, prof_cont, foto_cont, stat_cont, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Zippy=500', 'Garden Suites', 1, 7.75490999999999975, -72.2094079999999963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 2, 1, '2018-09-25 12:42:34', '2018-09-25 12:43:41');

-- 
-- --
-- -- TOC entry 4929 (class 0 OID 0)
-- -- Dependencies: 347
-- -- Name: containers_codi_cont_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
-- --
-- 
-- SELECT pg_catalog.setval('public.containers_codi_cont_seq', 1, true);
-- 
-- 
-- --
-- -- TOC entry 4772 (class 2606 OID 126964)
-- -- Name: containers pk_public_containers_codi_cont; Type: CONSTRAINT; Schema: public; Owner: postgres
-- --
-- 
-- ALTER TABLE ONLY public.containers
--     ADD CONSTRAINT pk_public_containers_codi_cont PRIMARY KEY (codi_cont);
-- 
-- 
-- --
-- -- TOC entry 4767 (class 1259 OID 126970)
-- -- Name: containers_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
-- --
-- 
-- CREATE INDEX containers_codi_acco_index ON public.containers USING btree (codi_acco);
-- 
-- 
-- --
-- -- TOC entry 4768 (class 1259 OID 126971)
-- -- Name: containers_codi_clco_index; Type: INDEX; Schema: public; Owner: postgres
-- --
-- 
-- CREATE INDEX containers_codi_clco_index ON public.containers USING btree (codi_clco);
-- 
-- 
-- --
-- -- TOC entry 4769 (class 1259 OID 126972)
-- -- Name: containers_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
-- --
-- 
-- CREATE INDEX containers_codi_user_index ON public.containers USING btree (codi_user);
-- 
-- 
-- --
-- -- TOC entry 4770 (class 1259 OID 126973)
-- -- Name: containers_tagx_cont_index; Type: INDEX; Schema: public; Owner: postgres
-- --
-- 
-- CREATE INDEX containers_tagx_cont_index ON public.containers USING btree (tagx_cont);
-- 
-- 
-- --
-- -- TOC entry 4773 (class 2606 OID 126965)
-- -- Name: containers containers_codi_clco_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
-- --
-- 
-- ALTER TABLE ONLY public.containers
--     ADD CONSTRAINT containers_codi_clco_foreign FOREIGN KEY (codi_clco) REFERENCES public.classification_containers(codi_clco) ON UPDATE CASCADE ON DELETE RESTRICT;
-- 
-- 
-- -- Completed on 2018-09-25 09:07:00 -04
-- 
-- --
-- -- PostgreSQL database dump complete
-- --
-- 
