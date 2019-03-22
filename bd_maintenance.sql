--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-10-03 08:24:01 -04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 3154
-- Name: DATABASE bd_maintenance; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE bd_maintenance IS 'Base de datos de Mantenimiento';


--
-- TOC entry 1 (class 3079 OID 13055)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 205 (class 1259 OID 91184)
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 91194)
-- Name: category_evaluations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_evaluations (
    codi_caev bigint NOT NULL,
    desc_caev character varying(200) NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.category_evaluations OWNER TO postgres;

--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE category_evaluations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.category_evaluations IS 'Registro de Categoria de Evaluaciones';


--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.codi_caev; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.codi_caev IS 'Codigo de la Categoria de la Evaluacion';


--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.desc_caev; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.desc_caev IS 'Nombre de la Categoria de la Evaluacion';


--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.deleted IS 'Borrado Logico de la Categoria de la Evaluacion';


--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.created_at IS 'Fecha de Creacion de la Categoria de Evaluacion';


--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN category_evaluations.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_evaluations.updated_at IS 'Fecha de Actualizacion de la Categoria de Evaluacion';


--
-- TOC entry 206 (class 1259 OID 91192)
-- Name: category_evaluations_codi_caev_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_evaluations_codi_caev_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_evaluations_codi_caev_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 206
-- Name: category_evaluations_codi_caev_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_evaluations_codi_caev_seq OWNED BY public.category_evaluations.codi_caev;


--
-- TOC entry 217 (class 1259 OID 91259)
-- Name: category_repairs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_repairs (
    codi_care bigint NOT NULL,
    desc_care character varying(250) NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.category_repairs OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE category_repairs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.category_repairs IS 'Registro de Categoria de Reparaciones';


--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.codi_care; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.codi_care IS 'Codigo de la Categoria de Reparacion';


--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.desc_care; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.desc_care IS 'Nombre de la Categoria de Reparacion';


--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.deleted IS 'Borrado Logico de la Categoria de Reparacion';


--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.created_at IS 'Fecha Creacion de la Categoria de Reparacion';


--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN category_repairs.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_repairs.updated_at IS 'Fecha Actualizacion de la Categoria de Reparacion';


--
-- TOC entry 216 (class 1259 OID 91257)
-- Name: category_repairs_codi_care_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_repairs_codi_care_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_repairs_codi_care_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 216
-- Name: category_repairs_codi_care_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_repairs_codi_care_seq OWNED BY public.category_repairs.codi_care;


--
-- TOC entry 209 (class 1259 OID 91205)
-- Name: category_supplies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_supplies (
    codi_casu bigint NOT NULL,
    nomb_casu character varying(200) NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.category_supplies OWNER TO postgres;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE category_supplies; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.category_supplies IS 'Registro Categoria de Suministros';


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.codi_casu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.codi_casu IS 'Codigo de la Categoria de Suministro';


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.nomb_casu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.nomb_casu IS 'Nombre de la Categoria de Suministro';


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.deleted IS 'Borrado Logico de la Categoria de Suministro';


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.created_at IS 'Fecha de Creacion de la Categoria de Suministro';


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN category_supplies.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.category_supplies.updated_at IS 'Fecha de Actualizacion de la Categoria de Suministro';


--
-- TOC entry 208 (class 1259 OID 91203)
-- Name: category_supplies_codi_casu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_supplies_codi_casu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_supplies_codi_casu_seq OWNER TO postgres;

--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 208
-- Name: category_supplies_codi_casu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_supplies_codi_casu_seq OWNED BY public.category_supplies.codi_casu;


--
-- TOC entry 213 (class 1259 OID 91230)
-- Name: components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components (
    codi_comp bigint NOT NULL,
    desc_comp character varying(200) NOT NULL,
    codi_obst integer NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.components OWNER TO postgres;

--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE components; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.components IS 'Registro de Componentes';


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.codi_comp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.codi_comp IS 'Codigo del Componente';


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.desc_comp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.desc_comp IS 'Nombre del Componente';


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.codi_obst; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.codi_obst IS 'Codigo del Objeto de Estudio';


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.deleted IS 'Borrado Logico del Componente';


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.created_at IS 'Fecha de Creacion del Componente';


--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN components.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.components.updated_at IS 'Fecha de Actualizacion del Componente';


--
-- TOC entry 212 (class 1259 OID 91228)
-- Name: components_codi_comp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_codi_comp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_codi_comp_seq OWNER TO postgres;

--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 212
-- Name: components_codi_comp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_codi_comp_seq OWNED BY public.components.codi_comp;


--
-- TOC entry 221 (class 1259 OID 91287)
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
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE evaluations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evaluations IS 'Registro de Evaluaciones';


--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.codi_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_eval IS 'Codigo de la Evaluacion';


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.feho_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.feho_eval IS 'Fecha Hora de la Evaluacion';


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.pers_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.pers_eval IS 'Codigo de la Persona Elabora la Evaluacion';


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.codi_caev; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_caev IS 'Codigo de la Categoria de Evaluacion';


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.codi_find; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_find IS 'Codigo del Hallazgo';


--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.codi_obes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_obes IS 'Codigo del Objeto de Evaluacion';


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.obse_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.obse_eval IS 'Observaciones de la Evaluacion';


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.stat_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.stat_eval IS 'Estado de la Evaluacion (Abierta o Cerrada =>Ya se remedio)';


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.deleted IS 'Borrado Logico de la Evaluacion';


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.created_at IS 'Fecha de Creacion de la Evaluacion';


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN evaluations.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.evaluations.updated_at IS 'Fecha de Actualizacion de la Evaluacion';


--
-- TOC entry 220 (class 1259 OID 91285)
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
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 220
-- Name: evaluations_codi_eval_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_codi_eval_seq OWNED BY public.evaluations.codi_eval;


--
-- TOC entry 215 (class 1259 OID 91242)
-- Name: findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.findings (
    codi_find bigint NOT NULL,
    nomb_find character varying(200) NOT NULL,
    codi_stco integer NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.findings OWNER TO postgres;

--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE findings; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.findings IS 'Registro de Hallazgos';


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.codi_find; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.codi_find IS 'Codigo del Hallazgo';


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.nomb_find; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.nomb_find IS 'Nombre del Hallazgo';


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.codi_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.codi_stco IS 'Codigo del Estado de Condicion';


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.deleted IS 'Borrado Logico del Hallazgo';


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.created_at IS 'Fecha de Creacion del Hallazgo';


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN findings.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.findings.updated_at IS 'Fecha de Actualizacion del Hallazgo';


--
-- TOC entry 214 (class 1259 OID 91240)
-- Name: findings_codi_find_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.findings_codi_find_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.findings_codi_find_seq OWNER TO postgres;

--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 214
-- Name: findings_codi_find_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.findings_codi_find_seq OWNED BY public.findings.codi_find;


--
-- TOC entry 197 (class 1259 OID 54535)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 54533)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 196
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 199 (class 1259 OID 91148)
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id integer,
    client_id integer NOT NULL,
    name character varying(255),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_access_tokens OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 91140)
-- Name: oauth_auth_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id integer NOT NULL,
    client_id integer NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_auth_codes OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 91165)
-- Name: oauth_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_clients (
    id integer NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    secret character varying(100) NOT NULL,
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_clients OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 91163)
-- Name: oauth_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_clients_id_seq OWNER TO postgres;

--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 201
-- Name: oauth_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;


--
-- TOC entry 204 (class 1259 OID 91177)
-- Name: oauth_personal_access_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_personal_access_clients (
    id integer NOT NULL,
    client_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_personal_access_clients OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 91175)
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_personal_access_clients_id_seq OWNER TO postgres;

--
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 203
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;


--
-- TOC entry 200 (class 1259 OID 91157)
-- Name: oauth_refresh_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_refresh_tokens OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 91315)
-- Name: remediations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remediations (
    codi_reme bigint NOT NULL,
    feho_reme timestamp without time zone NOT NULL,
    codi_eval integer,
    pers_reme character varying(15),
    codi_care integer,
    codi_find integer,
    obse_reme text,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.remediations OWNER TO postgres;

--
-- TOC entry 3223 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE remediations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.remediations IS 'Registro de Remediaciones';


--
-- TOC entry 3224 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.codi_reme; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.codi_reme IS 'Codigo de la Remediacion';


--
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.feho_reme; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.feho_reme IS 'Fecha Hora de la Remediacion';


--
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.codi_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.codi_eval IS 'Codigo de la Evaluacion';


--
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.codi_care; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.codi_care IS 'Codigo de la Categoria de la Reparacion';


--
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.codi_find; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.codi_find IS 'Codigo del Hallazgo';


--
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.obse_reme; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.obse_reme IS 'Observaciones de la Remediacion';


--
-- TOC entry 3230 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.deleted IS 'Borrado Logico de la Remediacion';


--
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3232 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3233 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.created_at IS 'Fecha de Creacion de la Remediacion';


--
-- TOC entry 3234 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN remediations.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.remediations.updated_at IS 'Fecha de Actualizacion de la Remediacion';


--
-- TOC entry 222 (class 1259 OID 91313)
-- Name: remediations_codi_reme_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.remediations_codi_reme_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.remediations_codi_reme_seq OWNER TO postgres;

--
-- TOC entry 3235 (class 0 OID 0)
-- Dependencies: 222
-- Name: remediations_codi_reme_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.remediations_codi_reme_seq OWNED BY public.remediations.codi_reme;


--
-- TOC entry 225 (class 1259 OID 91345)
-- Name: repairs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repairs (
    codi_repa bigint NOT NULL,
    feho_repa timestamp without time zone NOT NULL,
    codi_eval integer,
    pers_repa character varying(15),
    codi_care integer,
    codi_find integer,
    codi_supp integer,
    obse_repa text,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.repairs OWNER TO postgres;

--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE repairs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.repairs IS 'Registro de Reparaciones';


--
-- TOC entry 3237 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_repa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_repa IS 'Codigo de la Reparacion';


--
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.feho_repa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.feho_repa IS 'Fecha Hora de la Reparacion';


--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_eval; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_eval IS 'Codigo de la Evaluacion';


--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.pers_repa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.pers_repa IS 'Codigo de la Persona que realiza la Evaluacion';


--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_care; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_care IS 'Codigo de la Categoria de la Reparacion';


--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_find; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_find IS 'Codigo del Hallazgo';


--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_supp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_supp IS 'Codigo del Suministro';


--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.obse_repa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.obse_repa IS 'Observaciones de la Reparacion';


--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.deleted IS 'Borrado Logico de la Reparacion';


--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.created_at IS 'Fecha de Creacion de la Reparacion';


--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN repairs.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.repairs.updated_at IS 'Fecha de Actualizacion de la Reparacion';


--
-- TOC entry 224 (class 1259 OID 91343)
-- Name: repairs_codi_repa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.repairs_codi_repa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repairs_codi_repa_seq OWNER TO postgres;

--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 224
-- Name: repairs_codi_repa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.repairs_codi_repa_seq OWNED BY public.repairs.codi_repa;


--
-- TOC entry 211 (class 1259 OID 91216)
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
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE state_conditions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.state_conditions IS 'Registro Estado de Condiciones';


--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.codi_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.codi_stco IS 'Codigo del Estado de Condicion';


--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.nomb_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.nomb_stco IS 'Nombre del Estado de Condicion';


--
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.desc_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.desc_stco IS 'Descripcion del Estado de Condicion';


--
-- TOC entry 3255 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.vapo_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.vapo_stco IS 'Valor Porcentual del Estado de Condicion';


--
-- TOC entry 3256 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.colo_stco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.colo_stco IS 'Color Porcentual del Estado de Condicion';


--
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.deleted IS 'Borrado Logico del Estado de Condicion';


--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.created_at IS 'Fecha de Creacion del Estado de Condicion';


--
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN state_conditions.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.state_conditions.updated_at IS 'Fecha de Actualizacion del Estado de Condicion';


--
-- TOC entry 210 (class 1259 OID 91214)
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
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 210
-- Name: state_conditions_codi_stco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.state_conditions_codi_stco_seq OWNED BY public.state_conditions.codi_stco;


--
-- TOC entry 219 (class 1259 OID 91270)
-- Name: supplies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplies (
    codi_supp bigint NOT NULL,
    nomb_supp character varying(200) NOT NULL,
    codi_casu integer NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    codi_acco integer NOT NULL,
    codi_user integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.supplies OWNER TO postgres;

--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE supplies; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.supplies IS 'Registro de Suministros';


--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.codi_supp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.codi_supp IS 'Codigo del Suministro';


--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.nomb_supp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.nomb_supp IS 'Nombre del Suministro';


--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.codi_casu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.codi_casu IS 'Codigo de la Categoria del Suministro';


--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.deleted IS 'Borrado Logico del Suministro';


--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.codi_acco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.codi_acco IS 'Codigo de la Cuenta';


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.codi_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.codi_user IS 'Codigo del Usuario';


--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.created_at IS 'Fecha de Creacion del Suministro';


--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN supplies.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.supplies.updated_at IS 'Fecha de Actualizacion del Suministro';


--
-- TOC entry 218 (class 1259 OID 91268)
-- Name: supplies_codi_supp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplies_codi_supp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplies_codi_supp_seq OWNER TO postgres;

--
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 218
-- Name: supplies_codi_supp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplies_codi_supp_seq OWNED BY public.supplies.codi_supp;


--
-- TOC entry 2900 (class 2604 OID 91197)
-- Name: category_evaluations codi_caev; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_evaluations ALTER COLUMN codi_caev SET DEFAULT nextval('public.category_evaluations_codi_caev_seq'::regclass);


--
-- TOC entry 2910 (class 2604 OID 91262)
-- Name: category_repairs codi_care; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_repairs ALTER COLUMN codi_care SET DEFAULT nextval('public.category_repairs_codi_care_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 91208)
-- Name: category_supplies codi_casu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_supplies ALTER COLUMN codi_casu SET DEFAULT nextval('public.category_supplies_codi_casu_seq'::regclass);


--
-- TOC entry 2906 (class 2604 OID 91233)
-- Name: components codi_comp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components ALTER COLUMN codi_comp SET DEFAULT nextval('public.components_codi_comp_seq'::regclass);


--
-- TOC entry 2914 (class 2604 OID 91290)
-- Name: evaluations codi_eval; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations ALTER COLUMN codi_eval SET DEFAULT nextval('public.evaluations_codi_eval_seq'::regclass);


--
-- TOC entry 2908 (class 2604 OID 91245)
-- Name: findings codi_find; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.findings ALTER COLUMN codi_find SET DEFAULT nextval('public.findings_codi_find_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 54538)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 91168)
-- Name: oauth_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 91180)
-- Name: oauth_personal_access_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);


--
-- TOC entry 2918 (class 2604 OID 91318)
-- Name: remediations codi_reme; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remediations ALTER COLUMN codi_reme SET DEFAULT nextval('public.remediations_codi_reme_seq'::regclass);


--
-- TOC entry 2920 (class 2604 OID 91348)
-- Name: repairs codi_repa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repairs ALTER COLUMN codi_repa SET DEFAULT nextval('public.repairs_codi_repa_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 91219)
-- Name: state_conditions codi_stco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_conditions ALTER COLUMN codi_stco SET DEFAULT nextval('public.state_conditions_codi_stco_seq'::regclass);


--
-- TOC entry 2912 (class 2604 OID 91273)
-- Name: supplies codi_supp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplies ALTER COLUMN codi_supp SET DEFAULT nextval('public.supplies_codi_supp_seq'::regclass);


--
-- TOC entry 3128 (class 0 OID 91184)
-- Dependencies: 205
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3130 (class 0 OID 91194)
-- Dependencies: 207
-- Data for Name: category_evaluations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Diaria', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (2, 'Semanal', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (3, 'Quincenal', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (4, 'Mensual', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (5, 'Bimensual', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (6, 'Trimestral', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (7, 'Semestral', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (8, 'Anual', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_evaluations (codi_caev, desc_caev, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (9, 'Otra', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');


--
-- TOC entry 3140 (class 0 OID 91259)
-- Dependencies: 217
-- Data for Name: category_repairs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Diaria', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (2, 'Semanal', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (3, 'Quincenal', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (4, 'Mensual', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (5, 'Bimensual', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (6, 'Trimestral', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (7, 'Semestral', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (8, 'Anual', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');
INSERT INTO public.category_repairs (codi_care, desc_care, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (9, 'Otra', false, 2, 1, '2018-09-05 09:06:53', '2018-09-05 09:06:53');


--
-- TOC entry 3132 (class 0 OID 91205)
-- Dependencies: 209
-- Data for Name: category_supplies; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3136 (class 0 OID 91230)
-- Dependencies: 213
-- Data for Name: components; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3144 (class 0 OID 91287)
-- Dependencies: 221
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


--
-- TOC entry 3138 (class 0 OID 91242)
-- Dependencies: 215
-- Data for Name: findings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Vacio', 1, false, 2, 1, NULL, NULL);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (2, 'Un Cuarto', 2, false, 2, 1, NULL, NULL);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (3, 'Medio', 3, false, 2, 1, NULL, NULL);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (4, 'Tres Cuartos', 4, false, 2, 1, NULL, NULL);
INSERT INTO public.findings (codi_find, nomb_find, codi_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (5, 'Full', 5, false, 2, 1, NULL, NULL);


--
-- TOC entry 3120 (class 0 OID 54535)
-- Dependencies: 197
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations (id, migration, batch) VALUES (99, '2018_08_06_120312_categorys_supplies', 2);
INSERT INTO public.migrations (id, migration, batch) VALUES (75, '2018_08_06_114430_categorys_evaluations', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (571, '2016_06_01_000001_create_oauth_auth_codes_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (572, '2016_06_01_000002_create_oauth_access_tokens_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (573, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (574, '2016_06_01_000004_create_oauth_clients_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (575, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (576, '2018_08_06_110320_create_cache_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (577, '2018_08_06_114430_category_evaluations', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (578, '2018_08_06_120312_category_supplies', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (579, '2018_08_06_121140_state_conditions', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (580, '2018_08_06_121532_components', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (581, '2018_08_06_121916_findings', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (582, '2018_08_06_121940_category_repair', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (583, '2018_08_06_132853_supplies', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (584, '2018_08_06_133553_evaluations', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (585, '2018_08_14_184028_remediations', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (586, '2018_08_15_160053_repairs', 3);


--
-- TOC entry 3122 (class 0 OID 91148)
-- Dependencies: 199
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3121 (class 0 OID 91140)
-- Dependencies: 198
-- Data for Name: oauth_auth_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3125 (class 0 OID 91165)
-- Dependencies: 202
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3127 (class 0 OID 91177)
-- Dependencies: 204
-- Data for Name: oauth_personal_access_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3123 (class 0 OID 91157)
-- Dependencies: 200
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3146 (class 0 OID 91315)
-- Dependencies: 223
-- Data for Name: remediations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3148 (class 0 OID 91345)
-- Dependencies: 225
-- Data for Name: repairs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3134 (class 0 OID 91216)
-- Dependencies: 211
-- Data for Name: state_conditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (1, 'Normal', '55af2cf2797292090756458c9f8ad66f', 0, '#D8D8D8', false, 2, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (2, 'Pendiente', 'fb72ede401154b6e77bbdb2cf7475f9e', 25, '#2E9AFE', false, 2, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (3, 'Regular', '84076aa35066b2b372cd0176df8b618d', 50, '#A9F5A9', false, 2, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (4, 'Advertencia', '16a5cb094a501c4987554a155d97ff13', 75, '#F3F781', false, 2, 1, NULL, NULL);
INSERT INTO public.state_conditions (codi_stco, nomb_stco, desc_stco, vapo_stco, colo_stco, deleted, codi_acco, codi_user, created_at, updated_at) VALUES (5, 'Critico', '443f2a15fd5fc2c0fc6ada4784d980f7', 100, '#F79F81', false, 2, 1, NULL, NULL);


--
-- TOC entry 3142 (class 0 OID 91270)
-- Dependencies: 219
-- Data for Name: supplies; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 206
-- Name: category_evaluations_codi_caev_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_evaluations_codi_caev_seq', 1, false);


--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 216
-- Name: category_repairs_codi_care_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_repairs_codi_care_seq', 1, false);


--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 208
-- Name: category_supplies_codi_casu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_supplies_codi_casu_seq', 1, false);


--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 212
-- Name: components_codi_comp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_codi_comp_seq', 1, false);


--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 220
-- Name: evaluations_codi_eval_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_codi_eval_seq', 157, true);


--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 214
-- Name: findings_codi_find_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.findings_codi_find_seq', 1, false);


--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 196
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 586, true);


--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 201
-- Name: oauth_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth_clients_id_seq', 1, false);


--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 203
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, false);


--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 222
-- Name: remediations_codi_reme_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.remediations_codi_reme_seq', 1, false);


--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 224
-- Name: repairs_codi_repa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.repairs_codi_repa_seq', 1, false);


--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 210
-- Name: state_conditions_codi_stco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.state_conditions_codi_stco_seq', 1, false);


--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 218
-- Name: supplies_codi_supp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplies_codi_supp_seq', 1, false);


--
-- TOC entry 2939 (class 2606 OID 91191)
-- Name: cache cache_key_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_key_unique UNIQUE (key);


--
-- TOC entry 2923 (class 2606 OID 54540)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2927 (class 2606 OID 91155)
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 2925 (class 2606 OID 91147)
-- Name: oauth_auth_codes oauth_auth_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);


--
-- TOC entry 2933 (class 2606 OID 91173)
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- TOC entry 2937 (class 2606 OID 91182)
-- Name: oauth_personal_access_clients oauth_personal_access_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 91161)
-- Name: oauth_refresh_tokens oauth_refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 91200)
-- Name: category_evaluations pk_public_category_evaluations_codi_caev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_evaluations
    ADD CONSTRAINT pk_public_category_evaluations_codi_caev PRIMARY KEY (codi_caev);


--
-- TOC entry 2963 (class 2606 OID 91265)
-- Name: category_repairs pk_public_category_repairs_codi_care; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_repairs
    ADD CONSTRAINT pk_public_category_repairs_codi_care PRIMARY KEY (codi_care);


--
-- TOC entry 2945 (class 2606 OID 91211)
-- Name: category_supplies pk_public_category_supplies_codi_casu; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_supplies
    ADD CONSTRAINT pk_public_category_supplies_codi_casu PRIMARY KEY (codi_casu);


--
-- TOC entry 2953 (class 2606 OID 91236)
-- Name: components pk_public_components_codi_comp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components
    ADD CONSTRAINT pk_public_components_codi_comp PRIMARY KEY (codi_comp);


--
-- TOC entry 2972 (class 2606 OID 91298)
-- Name: evaluations pk_public_evaluations_codi_eval; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT pk_public_evaluations_codi_eval PRIMARY KEY (codi_eval);


--
-- TOC entry 2958 (class 2606 OID 91248)
-- Name: findings pk_public_findings_codi_find; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.findings
    ADD CONSTRAINT pk_public_findings_codi_find PRIMARY KEY (codi_find);


--
-- TOC entry 2978 (class 2606 OID 91324)
-- Name: remediations pk_public_remediations_codi_reme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remediations
    ADD CONSTRAINT pk_public_remediations_codi_reme PRIMARY KEY (codi_reme);


--
-- TOC entry 2983 (class 2606 OID 91354)
-- Name: repairs pk_public_repairs_codi_repa; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT pk_public_repairs_codi_repa PRIMARY KEY (codi_repa);


--
-- TOC entry 2949 (class 2606 OID 91225)
-- Name: state_conditions pk_public_state_conditions_codi_stco; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_conditions
    ADD CONSTRAINT pk_public_state_conditions_codi_stco PRIMARY KEY (codi_stco);


--
-- TOC entry 2967 (class 2606 OID 91276)
-- Name: supplies pk_public_supplies_codi_supp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplies
    ADD CONSTRAINT pk_public_supplies_codi_supp PRIMARY KEY (codi_supp);


--
-- TOC entry 2928 (class 1259 OID 91156)
-- Name: oauth_access_tokens_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);


--
-- TOC entry 2934 (class 1259 OID 91174)
-- Name: oauth_clients_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);


--
-- TOC entry 2935 (class 1259 OID 91183)
-- Name: oauth_personal_access_clients_client_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_personal_access_clients_client_id_index ON public.oauth_personal_access_clients USING btree (client_id);


--
-- TOC entry 2929 (class 1259 OID 91162)
-- Name: oauth_refresh_tokens_access_token_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);


--
-- TOC entry 2942 (class 1259 OID 91201)
-- Name: public_category_evaluations_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_category_evaluations_codi_acco_index ON public.category_evaluations USING btree (codi_acco);


--
-- TOC entry 2943 (class 1259 OID 91202)
-- Name: public_category_evaluations_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_category_evaluations_codi_user_index ON public.category_evaluations USING btree (codi_user);


--
-- TOC entry 2964 (class 1259 OID 91266)
-- Name: public_category_repairs_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_category_repairs_codi_acco_index ON public.category_repairs USING btree (codi_acco);


--
-- TOC entry 2965 (class 1259 OID 91267)
-- Name: public_category_repairs_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_category_repairs_codi_user_index ON public.category_repairs USING btree (codi_user);


--
-- TOC entry 2946 (class 1259 OID 91212)
-- Name: public_category_supplies_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_category_supplies_codi_acco_index ON public.category_supplies USING btree (codi_acco);


--
-- TOC entry 2947 (class 1259 OID 91213)
-- Name: public_category_supplies_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_category_supplies_codi_user_index ON public.category_supplies USING btree (codi_user);


--
-- TOC entry 2954 (class 1259 OID 91237)
-- Name: public_components_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_components_codi_acco_index ON public.components USING btree (codi_acco);


--
-- TOC entry 2955 (class 1259 OID 91238)
-- Name: public_components_codi_obst_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_components_codi_obst_index ON public.components USING btree (codi_obst);


--
-- TOC entry 2956 (class 1259 OID 91239)
-- Name: public_components_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_components_codi_user_index ON public.components USING btree (codi_user);


--
-- TOC entry 2973 (class 1259 OID 91309)
-- Name: public_evaluations_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_acco_index ON public.evaluations USING btree (codi_acco);


--
-- TOC entry 2974 (class 1259 OID 91310)
-- Name: public_evaluations_codi_caev_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_caev_index ON public.evaluations USING btree (codi_caev);


--
-- TOC entry 2975 (class 1259 OID 91312)
-- Name: public_evaluations_codi_obes_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_obes_index ON public.evaluations USING btree (codi_obes);


--
-- TOC entry 2976 (class 1259 OID 91311)
-- Name: public_evaluations_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_evaluations_codi_user_index ON public.evaluations USING btree (codi_user);


--
-- TOC entry 2959 (class 1259 OID 91254)
-- Name: public_findings_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_findings_codi_acco_index ON public.findings USING btree (codi_acco);


--
-- TOC entry 2960 (class 1259 OID 91255)
-- Name: public_findings_codi_stco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_findings_codi_stco_index ON public.findings USING btree (codi_stco);


--
-- TOC entry 2961 (class 1259 OID 91256)
-- Name: public_findings_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_findings_codi_user_index ON public.findings USING btree (codi_user);


--
-- TOC entry 2979 (class 1259 OID 91341)
-- Name: public_remediations_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_remediations_codi_acco_index ON public.remediations USING btree (codi_acco);


--
-- TOC entry 2980 (class 1259 OID 91342)
-- Name: public_remediations_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_remediations_codi_user_index ON public.remediations USING btree (codi_user);


--
-- TOC entry 2981 (class 1259 OID 91340)
-- Name: public_remediations_pers_reme_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_remediations_pers_reme_index ON public.remediations USING btree (pers_reme);


--
-- TOC entry 2984 (class 1259 OID 91376)
-- Name: public_repairs_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_repairs_codi_acco_index ON public.repairs USING btree (codi_acco);


--
-- TOC entry 2985 (class 1259 OID 91377)
-- Name: public_repairs_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_repairs_codi_user_index ON public.repairs USING btree (codi_user);


--
-- TOC entry 2986 (class 1259 OID 91375)
-- Name: public_repairs_pers_repa_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_repairs_pers_repa_index ON public.repairs USING btree (pers_repa);


--
-- TOC entry 2950 (class 1259 OID 91226)
-- Name: public_state_conditions_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_state_conditions_codi_acco_index ON public.state_conditions USING btree (codi_acco);


--
-- TOC entry 2951 (class 1259 OID 91227)
-- Name: public_state_conditions_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_state_conditions_codi_user_index ON public.state_conditions USING btree (codi_user);


--
-- TOC entry 2968 (class 1259 OID 91282)
-- Name: public_supplies_codi_acco_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_supplies_codi_acco_index ON public.supplies USING btree (codi_acco);


--
-- TOC entry 2969 (class 1259 OID 91283)
-- Name: public_supplies_codi_casu_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_supplies_codi_casu_index ON public.supplies USING btree (codi_casu);


--
-- TOC entry 2970 (class 1259 OID 91284)
-- Name: public_supplies_codi_user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX public_supplies_codi_user_index ON public.supplies USING btree (codi_user);


--
-- TOC entry 2990 (class 2606 OID 91304)
-- Name: evaluations fk_public_evaluations_codi_find; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_public_evaluations_codi_find FOREIGN KEY (codi_find) REFERENCES public.findings(codi_find) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2989 (class 2606 OID 91299)
-- Name: evaluations fk_public_evaluations_codi_stco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_public_evaluations_codi_stco FOREIGN KEY (codi_caev) REFERENCES public.category_evaluations(codi_caev) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2987 (class 2606 OID 91249)
-- Name: findings fk_public_findings_codi_stco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.findings
    ADD CONSTRAINT fk_public_findings_codi_stco FOREIGN KEY (codi_stco) REFERENCES public.state_conditions(codi_stco) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2992 (class 2606 OID 91330)
-- Name: remediations fk_public_remediations_codi_care; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remediations
    ADD CONSTRAINT fk_public_remediations_codi_care FOREIGN KEY (codi_care) REFERENCES public.category_repairs(codi_care) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2991 (class 2606 OID 91325)
-- Name: remediations fk_public_remediations_codi_eval; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remediations
    ADD CONSTRAINT fk_public_remediations_codi_eval FOREIGN KEY (codi_eval) REFERENCES public.evaluations(codi_eval) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2993 (class 2606 OID 91335)
-- Name: remediations fk_public_remediations_codi_find; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remediations
    ADD CONSTRAINT fk_public_remediations_codi_find FOREIGN KEY (codi_find) REFERENCES public.findings(codi_find) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2995 (class 2606 OID 91360)
-- Name: repairs fk_public_repairs_codi_care; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT fk_public_repairs_codi_care FOREIGN KEY (codi_care) REFERENCES public.category_repairs(codi_care) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2994 (class 2606 OID 91355)
-- Name: repairs fk_public_repairs_codi_eval; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT fk_public_repairs_codi_eval FOREIGN KEY (codi_eval) REFERENCES public.evaluations(codi_eval) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2996 (class 2606 OID 91365)
-- Name: repairs fk_public_repairs_codi_find; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT fk_public_repairs_codi_find FOREIGN KEY (codi_find) REFERENCES public.findings(codi_find) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2997 (class 2606 OID 91370)
-- Name: repairs fk_public_repairs_codi_supp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT fk_public_repairs_codi_supp FOREIGN KEY (codi_supp) REFERENCES public.supplies(codi_supp) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2988 (class 2606 OID 91277)
-- Name: supplies fk_public_supplies_codi_casu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplies
    ADD CONSTRAINT fk_public_supplies_codi_casu FOREIGN KEY (codi_casu) REFERENCES public.category_supplies(codi_casu) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2018-10-03 08:24:01 -04

--
-- PostgreSQL database dump complete
--

