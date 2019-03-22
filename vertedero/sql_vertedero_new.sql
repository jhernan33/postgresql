-- Function: public.english_to_spanish(text)

-- DROP FUNCTION public.english_to_spanish(text);

CREATE OR REPLACE FUNCTION public.english_to_spanish(sentence text)
  RETURNS text AS
$BODY$
declare
    r record;
begin
    if char_length(sentence)>0 then
	    for r in
		select english, spanish
		from dictionary
		join (
		    select regexp_split_to_table(sentence, '\W+') word
		    ) words
		on word = english
	    loop
		sentence:= replace(sentence, r.english, r.spanish);
	    end loop;
	end if;
    return sentence;
end $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.english_to_spanish(text)
  OWNER TO postgres;


CREATE TABLE public.dictionary (
    id bigint NOT NULL,
    english character varying(255),
    spanish character varying(255)
);


ALTER TABLE public.dictionary OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 1232815)
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
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 287
-- Name: dictionary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dictionary_id_seq OWNED BY public.dictionary.id;


--
-- TOC entry 3086 (class 2604 OID 1232817)
-- Name: dictionary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dictionary ALTER COLUMN id SET DEFAULT nextval('public.dictionary_id_seq'::regclass);


--
-- TOC entry 3210 (class 0 OID 1232809)
-- Dependencies: 286
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
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 287
-- Name: dictionary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dictionary_id_seq', 36, true);


--
-- TOC entry 3088 (class 2606 OID 1232819)
-- Name: dictionary dictionary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dictionary
    ADD CONSTRAINT dictionary_pkey PRIMARY KEY (id);
