select * from users;

select * from process.operations where oper_codi = 181;
select oper_codi,sta_id,oper_fein,oper_fefi from process.operations where oper_codi = 181;
update process.operations set sta_id = 11 where oper_codi = 181;
select * from notifications where oper_codi = 181 and view = true;
select * from notifications where view = true;
update notifications set view = false;