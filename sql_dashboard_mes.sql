select cast(to_char(oper_fein, 'YYYY-MM-DD')as varchar) oper_fein,
sum(o.oper_caen) as "Total Operaciones Procesadas"
from process.operations as o 
where cast(to_char(oper_fein, 'YYYY-MM-DD') as varchar) 
between '2018-05-01' 
and '2018-05-31'
--and cast(extract(year from o.oper_fein)as integer) not in select * from getdayonmonth('2018-05-01');
--group by cast(o.oper_fein as date)
--group by convert(char(8),o.oper_fein,10)
group by to_char(o.oper_fein,'YYYY-MM-DD')
order by oper_fein;

select DATE '2008-01-01' + (interval '1' month * generate_series(0,11));
SELECT date '2014-02-01' + interval '1' month * s.a AS date
  FROM generate_series(0,3,1) AS s(a);

SELECT date_trunc('day', dd):: date
FROM generate_series
        ( '2007-02-01'::timestamp 
        , '2008-03-01'::timestamp
        , '1 day'::interval) dd
        ;
SELECT day::date 
FROM   generate_series(timestamp '2004-03-01', '2004-08-16', '1 day') day;

SELECT  DATE_TRUNC('month', '2016-03-12'::timestamp) + '1 MONTH'::INTERVAL
      - DATE_TRUNC('month', '2016-03-12'::timestamp) ;

/*WITH date_ AS (SELECT '2018-05-01' AS d)
SELECT d + INTERVAL '1 month' - d FROM date_;*/
SELECT cast('2018-05-01'as date) + INTERVAL '1 month' - '2018-05-01';


SELECT cast(count_days(2017, 2)as integer);  -- 29
DROP FUNCTION public.cnt_dayofmonth(integer, integer);
create or replace function count_days(_year int, _month int)
returns int2 as
$BODY$
-- ZU 2017.09.15, returns the count of days in mounth, inputs are year and month
declare 
    datetime_start date := ('01.01.'||_year::char(4))::date;
    datetime_month date := ('01.'||_month||'.'||_year)::date;
        cnt int2;
begin 
  select extract(day from (select (datetime_month + INTERVAL '1 month -1 day'))) into cnt;

  return cnt;
end;
$BODY$
language plpgsql;


      
select distinct date_trunc ('month', now()::date + s.a)::date
from generate_series(0, 365) as s(a);

select cast(extract(day from days)as integer)
from(
  select generate_series(0,30) + date'2020-02-01' as days
)dates
order by 1;

-- Crear el tipo de dato
drop type type_totals_days;

CREATE TYPE public.type_totals_days AS
   (
    dia integer
    );

-- Crear la funcion
select * from  count_days(2018,5);

drop function getdayonmonth(date);

create or replace function getdayonmonth(xfechai date) returns setof type_totals_days as $$
declare 
xcant_dias integer;
xano integer;
xmes integer;
datetime_start date;
datetime_month date;cnt int2;
begin
    
    xano := cast(EXTRACT(YEAR FROM xfechai) as integer);
    xmes := cast(EXTRACT(month FROM xfechai) as integer);
    datetime_start := ('01.01.'||xano::char(4))::date;
    datetime_month := ('01.'||xmes||'.'||xano)::date;
    
    select extract(day from (select (datetime_month + INTERVAL '1 month -1 day'))) into cnt;
    -- Generar los dias
    RETURN QUERY
    select  cast(extract(day from days)as integer)
    from(
	  select generate_series(0,(cnt)-1) + xfechai as days
	)dates
     order by 1;
end;
$$ language plpgsql;

-- select dias.dia from getdayonmonth('2018-02-01') as dias 

-- Funcion que devuelve los dias del mes
select cast(to_char(oper_fein, 'YYYY-MM-DD')as varchar) oper_fein,
sum(o.oper_caen) as "Total Operaciones Procesadas"
from getdayonmonth('2018-05-01') as dias 
left outer join process.operations as o 
on dias.dia = cast(EXTRACT(day FROM o.oper_fein)as integer)
group by to_char(o.oper_fein,'YYYY-MM-DD')
order by oper_fein;

select cast(to_char(o.oper_fein, 'DD')as varchar) oper_fein,
sum(o.oper_caen) as "Total Operaciones Procesadas"
from process.operations as o 
where cast(to_char(o.oper_fein, 'YYYY-MM-DD') as varchar) 
between '2018-05-01' 
and '2018-05-31'
group by to_char(o.oper_fein,'DD')
order by oper_fein;

select * from process.totals_cantidad_operations('2018','');