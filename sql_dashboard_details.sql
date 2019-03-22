select oper_codi,oper_fein,oper_peen
from process.operations 
where oper_fein between to_date('2018-05-21','YYYY-MM-DD') and to_date('2018-05-25','YYYY-MM-DD')
order by oper_fein;

select oper_codi,oper_fein,oper_peen
from process.operations 
where date_part('year',oper_fein)
order by oper_fein

select year('2001-02-16 20:38:40') as year,
    month('2001-02-16 20:38:40') as month,
    day('2001-02-16 20:38:40') as day,
    hour('2001-02-16 20:38:40') as hour,
    minute('2001-02-16 20:38:40') as minute;


SELECT date_part('year',TIMESTAMP '2017-01-01');