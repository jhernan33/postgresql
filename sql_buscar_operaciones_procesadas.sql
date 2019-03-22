select * from process.operations 
where sta_id in (13,14)
-- and oper_fein >='2018-05-21'
-- and oper_fein <='2018-05-26'
 order by oper_fein;
-- where oper_fein ='2018-05-21'::timestamp + '1 days'::interval;