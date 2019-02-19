-- Table: public.cliente

-- DROP TABLE public.cliente;

CREATE TABLE public.cliente
(
  cedula character varying(15) NOT NULL,
  correo character varying(30),
  CONSTRAINT pk_cliente_cedula PRIMARY KEY (cedula),
  CONSTRAINT uq_clientes_correo UNIQUE (correo)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.cliente
  OWNER TO postgres;
GRANT ALL ON TABLE public.cliente TO postgres;
GRANT ALL ON TABLE public.cliente TO public;

select * from cliente;
insert into cliente values('123','juan@gmail.com');
insert into cliente values('456','juan@gmail.com');



CREATE TABLE public.cliente
(
  cedula character varying(15) NOT NULL,
  correo character varying(30),
  CONSTRAINT pk_cliente_cedula PRIMARY KEY (cedula,correo)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.cliente
  OWNER TO postgres;
GRANT ALL ON TABLE public.cliente TO postgres;
GRANT ALL ON TABLE public.cliente TO public;

select * from cliente;
insert into cliente values('123','juan@gmail.com');
insert into cliente values('456','juan@gmail.com');
insert into cliente values('123','pedro@gmail.com');
insert into cliente values('123','juan@gmail.com');
