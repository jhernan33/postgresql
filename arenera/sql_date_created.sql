 select date_trunc('day', now());
select date(substring('2011/05/26 09:00:00' from 1 for 10));

 select date_created::DATE from operation;