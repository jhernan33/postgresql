select * from process.operations order by oper_codi;
select * from process.operations where oper_codi = 217 order by oper_codi;

select oper_codi,sta_id,oper_fein,oper_fefi from process.operations where oper_codi = 217 order by oper_codi;
update process.operations set sta_id = 12 where oper_codi = 217

select current_date;
select current_time;
select current_timestamp;
--SELECT now()::timestamp
select to_char(current_timestamp, 'YYYY-MM-DD:HH12:MI:SS');
select to_char(current_timestamp, 'YYYY-MM-DD');
select to_timestamp('20131124112907', 'YYYYMMDDHH24MISS')
select to_timestamp(current_time, 'YYYYMMDDHH24MISS')
SELECT TO_TIMESTAMP('2014-02-31 25:99:00', 'YYYY-MM-DD HH24:MI:SS');
SELECT TO_TIMESTAMP(current_timestamp::character varying, 'YYYY-MM-DD HH24:MI:SS');

select * from customers;
select * from drivers where dri_act = true;

select * from process.operations where oper_codi = 162;
select * from process.operations_details where oper_codi = 162;
select * from drivers where dri_dni ='12345678';

select * from process.operations_details where oper_codi = 214;
select * from process.operations_details where oper_codi = 208;
select * from process.operations_details where oper_codi = 208;

-- Buscar las operaciones procesadas
select oper_codi,sta_id,oper_fein,oper_fefi from process.operations 
where sta_id in (13,14) order by oper_fefi;

select oper_codi,sta_id,oper_fein,oper_fefi from process.operations 
where sta_id in (13,14) and oper_fein = '2018-06-04' order by oper_fefi;

select * from users where use_dni ='777777';
delete from users where use_dni ='777777';

-- Operacion 168
select oper_codi,sta_id,oper_fefi
-- (CASE WHEN oper_fefi = null THEN NULL ELSE '2018-01-01' END)::timestamp
from process.operations 
-- where oper_fefi is null
where oper_codi = 168;
--  where oper_codi = 215;
-- where oper_codi = 194;

update process.operations set oper_fefi = '2018-07-20 09:34:58' 
where oper_codi = 168;
