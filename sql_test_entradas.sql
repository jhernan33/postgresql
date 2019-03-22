create schema test;
-- Table: test.entsal

-- DROP TABLE test.entsal;

CREATE TABLE test.entsal
(
  id bigserial NOT NULL, -- Id Consecutivo
  oper_code integer, -- Codigo de la Operacion Entrada
  serv_entr integer, -- Codigo del Servicio
  cant_entr integer DEFAULT 0, -- Cantidad de Entrada
  peso_entr double precision DEFAULT 0, -- Peso de Entrada
  marg_entr double precision DEFAULT 0, -- Margen de Entrada
  oper_cods integer, -- Codigo de la Operacion de Salida
  serv_sali integer, -- Servicio de Salida
  cant_sali integer DEFAULT 0, -- Cantidad de Salida
  peso_sali double precision DEFAULT 0, -- Peso de Salida
  marg_sali double precision DEFAULT 0, -- Margen de Salida
  CONSTRAINT pk_test_entsal_pk PRIMARY KEY (id)
)
WITH (
  OIDS=TRUE
);
ALTER TABLE test.entsal
  OWNER TO postgres;
GRANT ALL ON TABLE test.entsal TO postgres;
GRANT ALL ON TABLE test.entsal TO public;
COMMENT ON TABLE test.entsal IS 'Entradas  y Salidas';
COMMENT ON COLUMN test.entsal.id IS 'Id Consecutivo';
COMMENT ON COLUMN test.entsal.oper_code IS 'Codigo de la Operacion Entrada';
COMMENT ON COLUMN test.entsal.oper_cods IS 'Codigo de la Operacion Salida';
COMMENT ON COLUMN test.entsal.serv_entr IS 'Codigo del Servicio';
COMMENT ON COLUMN test.entsal.cant_entr IS 'Cantidad de Entrada';
COMMENT ON COLUMN test.entsal.peso_entr IS 'Peso de Entrada';
COMMENT ON COLUMN test.entsal.marg_entr IS 'Margen de Entrada';
COMMENT ON COLUMN test.entsal.serv_sali IS 'Servicio de Salida';
COMMENT ON COLUMN test.entsal.cant_sali IS 'Cantidad de Salida';
COMMENT ON COLUMN test.entsal.peso_sali IS 'Peso de Salida';
COMMENT ON COLUMN test.entsal.marg_sali IS 'Margen de Salida';

-- Create tables
select * into test.entradas from process.operations_details;
select * into test.salidas from process.operations_details_output; 
select * into test.services from public.services;

select * from test.entradas;

select * from test.entsal;
delete   from test.entsal;

-- Registros de Entradas
select e.oper_codi,e.serv_codi,e.opde_cant,e.opde_peso,s.serv_maer into test.entf
from test.entradas as e left outer join test.services as s 
on e.serv_codi = s.serv_codi
where e.oper_codi = 11;

select e.oper_codi,e.serv_codi,e.opde_cant,e.opde_peso,s.serv_maer into test.salf
from test.salidas as e left outer join test.services as s 
on e.serv_codi = s.serv_codi
where e.oper_codi = 11;

-- Guardar en la tabla de Entrada y Salida
-- truncate test.entsal;

insert into test.entsal(oper_code,serv_entr,cant_entr,peso_entr,marg_entr,oper_cods,serv_sali,cant_sali,peso_sali,marg_sali)
(
select e.oper_codi as oper_code,e.serv_codi,e.opde_cant,e.opde_peso,e.serv_maer
,s.oper_codi as oper_cods,s.serv_codi,s.opde_cant,s.opde_peso,s.serv_maer
from test.entf as e full join test.salf as s 
on e.serv_codi = s.serv_codi
)

-- Mostrar los registros	
select * from test.entsal;

select serv_entr,sum(cant_entr),serv_sali,sum(cant_sali)
from test.entsal 
group by serv_entr,cant_entr,serv_sali,cant_sali;

-- Calcular la diferencia de pesos
select serv_entr,serv_sali,(sum(peso_sali) - sum(peso_entr)) as diferencia
from test.entsal 
group by serv_entr,serv_sali;

insert into test.entsal(oper_code) values(1);

-- Mostrar los servicios IGUALES
select serv_entr,cant_entr,peso_entr,marg_entr,serv_sali,cant_sali,peso_sali,marg_sali
from test.entsal
where serv_entr = serv_sali
group by serv_entr,cant_entr,peso_entr,marg_entr,serv_sali,cant_sali,peso_sali,marg_sali;

-- Mostrar los servicios DIFERENTES
select serv_entr,cant_entr,peso_entr,marg_entr,serv_sali,cant_sali,peso_sali,marg_sali
from test.entsal
where serv_entr isnull or serv_sali isnull
group by serv_entr,cant_entr,peso_entr,marg_entr,serv_sali,cant_sali,peso_sali,marg_sali;


/*
-- Agrupando los datos
select 
-- campos de entradas
e.serv_codi,e.opde_cant,e.opde_peso,se.serv_maer,
-- campos de salidas
s.serv_codi,s.opde_cant,s.opde_peso,ss.serv_maer
from test.entradas as e full join test.salidas as s on e.serv_codi = s.serv_codi
left outer join test.services as se on e.serv_codi = se.serv_codi
left outer join test.services as ss on s.serv_codi = ss.serv_codi
where e.oper_codi = 11


-- Guardar en la tabla de Entrada y Salidas
insert into test.entsal(serv_entr,cant_entr,peso_entr,marg_entr,serv_sali,cant_sali,peso_sali,marg_sali)
(
select e.*,s.* 
from test.entradas as e full join test.salidas as s 
on e.serv_codi = s.serv_codi
)




insert into test.entsal(serv_entr,cant_entr,peso_entr,marg_entr)
(select e.serv_codi,e.opde_cant,e.opde_peso,s.serv_maer 
from test.entradas as e left outer join test.services as s 
on e.serv_codi = s.serv_codi
where e.oper_codi = 11);
 
select s.*,se.serv_maer 
from test.salidas as s left outer join test.services as se 
on s.serv_codi = se.serv_codi
where s.oper_codi = 11;


select * from test.services;
*/