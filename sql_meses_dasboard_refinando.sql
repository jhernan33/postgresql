select m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
--select coalesce(sum(o.oper_caen),0) as "Total Operaciones Procesadas"
coalesce(sum(o.oper_caen),0) as "Total Operaciones Procesadas"
from public.getmonths as m cross join process.operations as o 
--on m.months = cast(extract(month from oper_fein) as integer)
where cast(to_char(oper_fein, 'YYYY' )as varchar) = '2018'
and m.months = cast(extract(month from oper_fein) as integer)
or (m.months not in 
(select cast(extract(month from oper_fein) as integer)from process.operations 
where cast(to_char(oper_fein, 'YYYY' )as varchar) = '2018'))
--or cast(to_char(oper_fein, 'YYYY')as varchar) = '2018'
--and m.months not in (select cast(to_char(oper_fein, 'YYYY' )as integer
--)from process.operations)
group by m.months
order by months;

select oper_codi,oper_fein from process.operations order by oper_codi;
update process.operations set oper_fein ='2017-05-21 09:37:55' where oper_codi = 162;
update process.operations set oper_fein ='2018-05-21 09:37:55' where oper_codi = 162;

select --m.months,cast(to_char(to_timestamp(to_char(m.months, '999'), 'MM'), 'MONTH') as varchar) as meses,
coalesce(sum(o.oper_peen),0) as "Total de Libras"
from public.getmonths as m left join process.operations as o on m.months = cast(extract(month from oper_fein) as integer)
where m.months is not null
or cast(to_char(oper_fein, 'YYYY')as varchar) = '2017'
group by m.months
order by months;