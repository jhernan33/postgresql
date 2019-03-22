-- Total de operaciones ver el total de cantidad de operaciones creadas
--y las libras de entrada por mes y por año.
select count(oper_codi) as cant_oper, 
sum(oper_peen) as cant_libr_proc
from process.operations
--where oper_fein between to_date('2018-05-21','YYYY-MM-DD')
--and to_date('2018-05-25','YYYY-MM-DD')
--group by oper_fefi;

-- Crear la vista
drop view process.totals_operations;

CREATE OR REPLACE VIEW process.totals_operations AS 
select count(oper_codi) as cant_oper, 
sum(oper_peen) as cant_libr_proc
from process.operations;

-- Filtrado por ano y mes
select cast(coalesce(count(oper_codi),0) as integer) as cant_oper, 
coalesce(sum(oper_peen),0) as cant_libr_proc
from process.operations
--where cast(to_char(oper_fein, 'YYYY')as varchar) = '2017' ;
where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = '2018-05';

-- Crear el tipo de dato
drop type process.type_totals_operations;

CREATE TYPE process.type_totals_operations AS
   (
    cant_oper integer,
    cant_libr_proc double precision
    );
ALTER TYPE process.type_totals_operations
  OWNER TO postgres;
COMMENT ON TYPE process.type_totals_operations
  IS 'Tipo de dato de Total de Operaciones';


-- Funcion por ano y mes
--drop function process.totals_operations(varchar,varchar);

create or replace function process.totals_operations(ano varchar, mes varchar) returns setof process.type_totals_operations as $$
declare
 valo_anox varchar;
 valo_mesx varchar;
begin
	if char_length(ano)>0 and char_length(mes)>0 then
		-- Buscar por ano y mes
		RETURN QUERY
		select cast(coalesce(count(oper_codi),0)as integer) as cant_oper, 
		coalesce(sum(oper_peen),0) as cant_libr_proc
		from process.operations
		where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes;
	end if;
	if char_length(ano)<=0 and char_length(mes)>0 then
	-- Buscar solo por mes
		RETURN QUERY
		select cast(coalesce(count(oper_codi),0)as integer) as cant_oper, 
		coalesce(sum(oper_peen),0) as cant_libr_proc
		from process.operations
		where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes;
	end if;
	if char_length(ano) > 0 and char_length(mes)<=0 then
	-- Buscar por solo ano
		RETURN QUERY
		select cast(coalesce(count(oper_codi),0)as integer) as cant_oper, 
		coalesce(sum(oper_peen),0) as cant_libr_proc
		from process.operations
		where cast(to_char(oper_fein, 'YYYY')as varchar) = ano;
	end if;
end;
$$ language plpgsql;

-- Mostrar la funcion
select * from process.totals_operations('2018','');
select * from process.totals_operations('2018','06');

-- Series months
SELECT date '2014-01-01' + interval '1' month * s.a AS date 
FROM generate_series(0,3,1) AS s(a);

SELECT date '2014-01-01' + interval '1' month * s.a AS date 
FROM generate_series(0,12,1) AS s(a);

SELECT date '2014-02-01' + interval '1' month * s.a AS date, t.date, t.id
  FROM generate_series(0,3,1) AS s(a)
LEFT JOIN <other table> t ON t.date=date '2014-02-01' + interval '1' month * s.a;

-- Genera una serie con los meses del ano de la fech 2018-01-01
select extract(month from days)
from(
  select generate_series(0,364) + date'2018-01-01' as days
)dates
group by 1
order by 1;

-- Generar una serie con los meses del ano en curso (current_date)
select extract(year from current_date)||'-01-01' as datestar;

-- crear vista para dectecta el primer dia del ano
drop view public.getstarday;

create view public.getstarday as
select cast(extract(year from current_date)||'-01-01' as date) as days;

select * from public.getstarday;

select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'MONTH');

select cast(extract(month from days) as integer) as months
from (select generate_series(0,364) + (select * from public.getstarday) as days 
)dates 
group by 1 order by 1;

select extract(month from days)
from(
  select generate_series(0,365) + date'2008-01-01' as days
)dates
group by 1
order by 1;

select date'2008-01-01'+1 as days
select date'2008-01-01'+1 as days

select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'Mon');
select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'MONTH');
select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'Month');
select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'month');
select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'MON');
select to_char(to_timestamp(to_char(1, '999'), 'MM'), 'mon');

-- Vista devuelve lo meses del ano actual
create view public.getmonths as
 select extract(month from days) from (select generate_series(0,364))
 
-- Crear la vista que devuelve los meses
-- drop view public.getmonths

create view public.getmonths as
select cast(extract(month from days) as integer) as months
from (select generate_series(0,364) + (select * from public.getstarday) as days 
)dates 
group by 1 order by 1;

-- Llamar a la vista de months
select * from public.getmonths;

select * from process.operations;
-- Extraer el mes de oper_fein
select oper_codi,extract(month from oper_fein),oper_peen,oper_caen
from process.operations;

-- Buscar los meses de las operaciones
select oper_codi,oper_fein,oper_peen,oper_caen
from process.operations
where extract(month from oper_fein) in (select * from public.getmonths)
--or extract(month from oper_fein) not in  (select * from public.getmonths);

-- ***********************************
-- Buscar los meses tienen operaciones
-- ***********************************
select m.months,to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as MONTHS,
coalesce(cast(o.oper_fein as character varying),'No Registro') as fecha,
coalesce(o.oper_peen,0) as peso_entr,coalesce(o.oper_caen,0) as cant_entr
from public.getmonths as m left join process.operations as o
on m.months = cast(extract(month from oper_fein) as integer)
where extract(year from o.oper_fein) = to_char(date ,'YYYY-MM')
order by m.months;

SELECT to_char(1210, '9999.99');
SELECT to_char(date '2014-04-25', 'YYYY-MM');
SELECT to_char(date '2014-04-25', 'YYYY');
SELECT EXTRACT(YEAR FROM oper_fein) FROM process.operations;

select * from process.totals_operations;

select * from process.totals_operations;
-- Create type data
-- Type: process.type_totals_operations

-- DROP TYPE process.type_totals_operations;

CREATE TYPE process.type_totals_cantidad_operations AS
   (months integer,
    meses character varying,
    tota_oper double precision
    );
ALTER TYPE process.type_totals_cantidad_operations
  OWNER TO postgres;
COMMENT ON TYPE process.type_totals_cantidad_operations
  IS 'Tipo de dato de Total de Operaciones';

CREATE TYPE process.type_totals_basic_cantidad_operations AS
   (
    tota_oper double precision
    );
ALTER TYPE process.type_totals_basic_cantidad_operations
  OWNER TO postgres;
COMMENT ON TYPE process.type_totals_basic_cantidad_operations
  IS 'Tipo de dato de Total de Operaciones';

-- create funcion
-- drop function process.totals_cantidad_operations(varchar,varchar);
create or replace function process.totals_cantidad_operations(ano varchar, mes varchar) returns setof process.type_totals_basic_cantidad_operations as $$
declare
 valo_anox varchar;
 valo_mesx varchar;
begin
	if char_length(ano)>0 and char_length(mes)>0 then
		-- Buscar por ano y mes
		RETURN QUERY
		select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
		coalesce(sum(o.oper_caen),0) as "Total Operaciones Procesadas"
		from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
		where m.months is not null
		or cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes
		group by m.months
		order by months;
	end if;
	if char_length(ano)<=0 and char_length(mes)>0 then
	-- Buscar solo por mes
		RETURN QUERY
		select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
		coalesce(sum(o.oper_caen),0) as "Total Operaciones Procesadas"
		from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
		where m.months is not null
		or cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||mes
		group by m.months
		order by months;
	end if;
	if char_length(ano) > 0 and char_length(mes)<=0 then
	-- Buscar por solo ano
		RETURN QUERY
		select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
		coalesce(sum(o.oper_caen),0) as "Total Operaciones Procesadas"
		from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
		where m.months is not null
		or cast(to_char(oper_fein, 'YYYY')as varchar) = ano
		group by m.months
		order by months;
	end if;
end;
$$ language plpgsql;

-- Funcion de Total Libras

CREATE TYPE process.type_totals_libras_operations AS
   (months integer,
    meses character varying,
    tota_libr double precision
    );
ALTER TYPE process.type_totals_libras_operations
  OWNER TO postgres;
COMMENT ON TYPE process.type_totals_libras_operations
  IS 'Tipo de dato de Total de Operaciones';

CREATE TYPE process.type_totals_basic_libras_operations AS
   (
    tota_libr double precision
    );
ALTER TYPE process.type_totals_libras_operations
  OWNER TO postgres;
COMMENT ON TYPE process.type_totals_libras_operations
  IS 'Tipo de dato de Total de Operaciones';

-- Funcion de Libras
-- drop function process.totals_libras_operations(varchar,varchar);
create or replace function process.totals_libras_operations(ano varchar, mes varchar) returns setof process.type_totals_basic_libras_operations as $$
declare
 valo_anox varchar;
 valo_mesx varchar;
begin
	if char_length(ano)>0 and char_length(mes)>0 then
		-- Buscar por ano y mes
		RETURN QUERY
		select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,		
		coalesce(sum(o.oper_peen),0) as "Total de Libras"
		from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
		where m.months is not null
		or cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes
		group by m.months
		order by months;
	end if;
	if char_length(ano)<=0 and char_length(mes)>0 then
	-- Buscar solo por mes
		RETURN QUERY
		select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
		coalesce(sum(o.oper_peen),0) as "Total de Libras"
		from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
		where m.months is not null
		or cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||mes
		group by m.months
		order by months;
	end if;
	if char_length(ano) > 0 and char_length(mes)<=0 then
	-- Buscar por solo ano
		RETURN QUERY
		select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
		coalesce(sum(o.oper_peen),0) as "Total de Libras"
		from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
		where m.months is not null
		or cast(to_char(oper_fein, 'YYYY')as varchar) = ano
		group by m.months
		order by months;
	end if;
end;
$$ language plpgsql;

-- Llamar a las funciones
select * from process.totals_cantidad_operations('2018',''); 
select * from process.totals_libras_operations('2018',''); 




select m.months,to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as MONTHS,
coalesce(cast(o.oper_fein as character varying),'No Registro') as fecha,
coalesce(o.oper_peen,0) as peso_entr,coalesce(o.oper_caen,0) as cant_entr
from public.getmonths as m left join process.operations as o
on m.months = cast(extract(month from oper_fein) as integer)
where extract(month from '2018-01') = extract(month from oper_fein) 
and extract(month from '2018-05')
order by m.months;

-- Agrupar por mes
select m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses ,
coalesce(sum(o.oper_peen),0) as "Cantidad de Operaciones",coalesce(sum(o.oper_caen),0) as "Cantidad Libras Procesadas"
from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
where cast(to_char(oper_fein, 'YYYY')as integer) = 2018
--where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = '2018-06'
and m.months is not null
and (cast(to_char(oper_fein, 'YYYY')as varchar) = '2018') 
group by m.months
order by months;

--SELECT to_char(date '2014-04-25', 'YYYY-MM');
--SELECT to_char(date '2014-04-25', 'DD');
--SELECT * from process.operations where extract(year from oper_fein) = to_char(oper_fein, 'YYYY');
--SELECT to_char(oper_fein, 'YYYY-MM') from process.operations;
--SELECT to_char(date '2014-04-25', 'YYYY');
--SELECT to_char(date '2014-04-25', 'YYYY');
--SELECT to_char(date '2014-04-25', 'YYYY-MM');
--where extract(month from '2018-01') = extract(month from oper_fein) 
--SELECT cast(to_char(oper_fein, 'YYYY')as integer) from process.operations;
--SELECT cast(EXTRACT(YEAR FROM oper_fein)as integer) FROM process.operations;
--SELECT cast(EXTRACT(MONTH FROM oper_fein)as integer) FROM process.operations;
--SELECT * FROM process.operations where cast(to_char(oper_fein, 'YYYY')as integer) = cast(EXTRACT(YEAR FROM oper_fein)as integer);
--SELECT * FROM process.operations where cast(to_char(oper_fein, 'YYYY')as varchar) = '2018';
--SELECT * FROM process.operations where cast(to_char(oper_fein, 'YYYY')as integer) = 2017;
--SELECT * FROM process.operations where cast(to_char(oper_fein, 'YYYYMM')as integer) = 201805;
--SELECT * FROM process.operations where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = '2018-06';
--SELECT * FROM process.operations where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = '2018-05';

and extract(month from '2018-05')
order by m.months;


-- Operaciones
select * from customers;
select * from process.operations where sta_id = 12;
select oper_codi,oper_fein,oper_fefi,sta_id,oper_diff,cant_diff from process.operations where sta_id = 12 order by oper_codi;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where sta_id = 11 order by oper_codi;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where sta_id = 13 order by oper_codi;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where sta_id = 14 order by oper_codi;
select count(*) from process.operations;

select * from customers where lower(cust_nomb) like '%ho%';

select op.oper_codi,op.oper_fein,op.oper_fefi,c.cust_nomb,op.oper_caen,op.oper_peen
from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
left outer join drivers as d on op.dri_dni = d.dri_dni
left outer join process.operations_details as de on op.oper_codi = de.oper_codi
where op.oper_actu = true
and op. sta_id = 11
and lower(cust_nomb) like '%ju%'
group by op.oper_codi,op.oper_fein,op.oper_fefi,c.cust_nomb,op.oper_caen,op.oper_peen
order by op.oper_codi asc


-- top de 5 clientes mas libras
select upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
left outer join drivers as d on op.dri_dni = d.dri_dni
left outer join process.operations_details as de on op.oper_codi = de.oper_codi
where op.oper_actu = true
--and op. sta_id = 11
--and lower(cust_nomb) like '%ju%'
group by c.cust_nomb
order by libras desc
limit 5;

-- Crear la vista de Top de 5 Cliente con Libras
-- drop view process.total_customers_libras
create view process.total_customers_libras as
select c.cust_dnic,upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
left outer join drivers as d on op.dri_dni = d.dri_dni
left outer join process.operations_details as de on op.oper_codi = de.oper_codi
where op.oper_actu = true
group by c.cust_dnic,c.cust_nomb
order by libras desc
limit 5;

-- Llamar a la vista
select * from process.total_customers_libras;

-- Top de servicios con mas libras
select s.serv_codi,upper(s.serv_desc) as serv_desc,sum(op.oper_peen) as libras
from process.operations as op left outer join process.operations_details as de on op.oper_codi = de.oper_codi
left outer join services as s on de.serv_codi = s.serv_codi
where op.oper_actu = true
and s.serv_actu = true
group by s.serv_codi,s.serv_desc
order by libras desc
limit 5;

-- Crear la vista de top 5 servicios con mas libras
-- drop view process.total_services_libras
create view process.total_services_libras as
select s.serv_codi,upper(s.serv_desc) as serv_desc,sum(op.oper_peen) as libras
from process.operations as op left outer join process.operations_details as de on op.oper_codi = de.oper_codi
left outer join services as s on de.serv_codi = s.serv_codi
where op.oper_actu = true
and s.serv_actu = true
group by s.serv_codi,s.serv_desc
order by libras desc
limit 5;

select array(select * from process.total_services_libras);

select * from process.total_services_libras;
select * from process.total_customers_libras;

-- Funcion para buscar los tops 5 de clientes por ano y fecha
-- Crear el tipo de dato
drop type process.type_totals_services_libras;

CREATE TYPE process.type_totals_services_libras AS
   (
    serv_codi integer,
    serv_desc text,
    libras double precision
    );
ALTER TYPE process.type_totals_services_libras OWNER TO postgres;
COMMENT ON TYPE process.type_totals_operations IS 'Tipo de dato de Total de Servicio por Libras';


-- Funcion por ano y mes
--drop function process.totals_services_libras(varchar,varchar);

create or replace function process.totals_services_libras(ano varchar, mes varchar) returns setof process.type_totals_services_libras as $$
declare
 valo_anox varchar;
 valo_mesx varchar;
begin
	if char_length(ano)>0 and char_length(mes)>0 then
		-- Buscar por ano y mes
		RETURN QUERY
		select cast(s.serv_codi as integer),upper(s.serv_desc) as serv_desc,sum(op.oper_peen) as libras
		from process.operations as op left outer join process.operations_details as de on op.oper_codi = de.oper_codi
		left outer join services as s on de.serv_codi = s.serv_codi
		where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes
		and op.oper_actu = true
		and s.serv_actu = true
		group by s.serv_codi,s.serv_desc
		order by libras desc
		limit 5;
	end if;
	if char_length(ano)<=0 and char_length(mes)>0 then
	-- Buscar solo por mes
		RETURN QUERY
		select cast(s.serv_codi as integer),upper(s.serv_desc) as serv_desc,sum(op.oper_peen) as libras
		from process.operations as op left outer join process.operations_details as de on op.oper_codi = de.oper_codi
		left outer join services as s on de.serv_codi = s.serv_codi
		where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes
		and op.oper_actu = true
		and s.serv_actu = true
		group by s.serv_codi,s.serv_desc
		order by libras desc
		limit 5;
	end if;
	if char_length(ano) > 0 and char_length(mes)<=0 then
	-- Buscar por solo ano
		RETURN QUERY
		select cast(s.serv_codi as integer),upper(s.serv_desc) as serv_desc,sum(op.oper_peen) as libras
		from process.operations as op left outer join process.operations_details as de on op.oper_codi = de.oper_codi
		left outer join services as s on de.serv_codi = s.serv_codi
		where cast(to_char(oper_fein, 'YYYY')as varchar) = ano
		and op.oper_actu = true
		and s.serv_actu = true
		group by s.serv_codi,s.serv_desc
		order by libras desc
		limit 5;
	end if;
end;
$$ language plpgsql;

select * from process.totals_services_libras('2018','05');



select * from process.total_customers_libras;
select c.cust_dnic,upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
left outer join drivers as d on op.dri_dni = d.dri_dni
left outer join process.operations_details as de on op.oper_codi = de.oper_codi
where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = '2018'||'-'||'05' 
and op.oper_actu = true
group by c.cust_dnic,c.cust_nomb
order by libras desc
limit 5;

-- 
-- Funcion para buscar los tops 5 de clientes por ano y fecha
-- Crear el tipo de dato
drop type process.type_totals_customers_libras;

CREATE TYPE process.type_totals_customers_libras AS
   (
    cust_dnic character varying,
    cust_nomb text,
    libras double precision
    );
ALTER TYPE process.type_totals_customers_libras OWNER TO postgres;
COMMENT ON TYPE process.type_totals_customers_libras IS 'Tipo de dato de Total de Customers por Libras';


-- Funcion por ano y mes
--drop function process.totals_services_libras(varchar,varchar);

create or replace function process.totals_customers_libras(ano varchar, mes varchar) returns setof process.type_totals_customers_libras as $$
declare
 valo_anox varchar;
 valo_mesx varchar;
begin
	if char_length(ano)>0 and char_length(mes)>0 then
		-- Buscar por ano y mes
		RETURN QUERY
		select c.cust_dnic,upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
		from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
		left outer join drivers as d on op.dri_dni = d.dri_dni
		left outer join process.operations_details as de on op.oper_codi = de.oper_codi
		where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes
		and op.oper_actu = true
		and c.cust_actu = true
		group by c.cust_dnic,c.cust_nomb
		order by libras desc
		limit 5;

	end if;
	if char_length(ano)<=0 and char_length(mes)>0 then
	-- Buscar solo por mes
		RETURN QUERY
		select c.cust_dnic,upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
		from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
		left outer join drivers as d on op.dri_dni = d.dri_dni
		left outer join process.operations_details as de on op.oper_codi = de.oper_codi
		where cast(to_char(oper_fein, 'YYYY-MM')as varchar) = ano||'-'||mes
		and op.oper_actu = true
		and c.cust_actu = true
		group by c.cust_dnic,c.cust_nomb
		order by libras desc
		limit 5;
	end if;
	if char_length(ano) > 0 and char_length(mes)<=0 then
	-- Buscar por solo ano
		RETURN QUERY
		select c.cust_dnic,upper(c.cust_nomb) as cust_nomb,sum(op.oper_peen) as libras
		from process.operations as op left outer join customers as c on op.cust_dnic = c.cust_dnic
		left outer join drivers as d on op.dri_dni = d.dri_dni
		left outer join process.operations_details as de on op.oper_codi = de.oper_codi
		where cast(to_char(oper_fein, 'YYYY')as varchar) = ano
		and op.oper_actu = true
		and c.cust_actu = true
		group by c.cust_dnic,c.cust_nomb
		order by libras desc
		limit 5;
	end if;
end;
$$ language plpgsql;

select * from process.totals_customers_libras('2018','06');