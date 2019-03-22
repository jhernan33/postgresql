select * from process.operations where oper_codi =114;
select oper_codi,sta_id from process.operations where oper_codi =114;
update process.operations set sta_id = 12 where oper_codi = 114;
select * from services;
select * from services where serv_codi in (1,3);

select created_at from process.operations where oper_codi=114;
select created_at::timestamp with time zone, 
created_at-'2 hour'::interval
from process.operations 
where oper_codi=114;

SELECT date '2009-11-06 17:05:01' + interval '2 hour'; --&gt; Rpta: "2009-11-06 18:05:01"
SELECT timestamp '2009-11-06 17:05:01' - timestamp '2009-10-06 17:05:01'; --&gt; Rpta: "31 days"
SELECT date '2009-11-06 17:05:01' + interval '1 hour'; --&gt; Rpta: "2009-11-06 18:05:01"
select now()-'24 hour'::interval;
select 'now'::timestamp with time zone, now()-'5 hour'::interval;
