-- Table: public.oscar

-- DROP TABLE public.oscar;

CREATE TABLE public.oscar16_11_218
(
  id bigserial not null,
  nic character varying(15),
  fecha_pago timestamp without time zone,
  fecha_actualizacion timestamp without time zone,
  no_doc character varying(50),
  cargo double precision,
  valor double precision,
  CONSTRAINT pk_public_oscar_id_oscar16_11_218 PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.oscar16_11_218
  OWNER TO postgres;
COMMENT ON TABLE public.oscar16_11_218
  IS 'Oscar';

-- primer registro =13925
-- segunda precarga =25457
-- tercera precarga =28800
-- cuarta precarga =31799
-- quinta precarga =35347
select count(*) from oscar13_11_2018;
select count(*) from oscar14_11_2018;

select * from oscar;

COPY oscar(nic,fecha_pago,fecha_actualizacion,no_doc,cargo,valor) 
FROM '/home/zippyttech/Escritorio/oscar/source/updates/pagos_0000100119_aguaseo_01102018_07102018_0000000001.csv' DELIMITER ',' CSV;
select * into copia from oscar;

-- Ruta
select fecha_pago,to_char(fecha_pago,'YYYY-MM-DD'),valor from oscar;
select to_char(fecha_pago,'YYYY-MM-DD') as fecha_pago,valor from oscar;

-- Agrupar por fecha

select to_char(fecha_pago,'YYYY-MM-DD') as fecha_pago
,round(sum(valor)::numeric,4) as total
from oscar
group by to_char(fecha_pago,'YYYY-MM-DD')
order by fecha_pago;


-- Reporte de  Fecha 14-11-2018
COPY oscar(nic,fecha_pago,fecha_actualizacion,no_doc,cargo,valor) 
FROM '/home/zippyttech/Documentos/oscar/14-11-2018/pagos_0000100119_aguaseo_05112018_11112018_0000000001.csv' DELIMITER ',' CSV;
select * into copia from oscar;

select count(*) from oscar;
select count(*) from oscar16_11_2018;

-- Agrupar por fecha

select to_char(fecha_pago,'YYYY-MM-DD') as fecha_pago
,round(sum(valor)::numeric,4) as total
from oscar16_11_2018
group by to_char(fecha_pago,'YYYY-MM-DD')
order by fecha_pago;

-- Agrupar por No_Doc
select count(*) from oscar16_11_2018;

-- Condicion no_doc <> 0
select no_doc::int
-- ,round(sum(valor)::numeric,4) as total
,max(valor) as maximo_total
-- ,to_char(fecha_pago,'YYYY-MM-DD')
from oscar16_11_2018
--  where no_doc ='72633399'
where no_doc <>'0'
group by no_doc
-- ,to_char(fecha_pago,'YYYY-MM-DD')
order by no_doc;

-- Condicion no_doc =0
select no_doc::int
,max(valor) as maximo_total
-- ,valor
from oscar16_11_2018
where no_doc ='0'
group by no_doc
order by no_doc;
