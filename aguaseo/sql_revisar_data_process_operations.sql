select * from process.operations;
select * from process.operations_codi_oper_seq;
select count(*) from process.operations;

select * from process.operation_details; 

INSERT INTO process.operations 
VALUES (generate_series(7101,7200)
,now()::timestamp,generate_series(1,100)
,generate_series(1,100)*round(random()*1000)
,md5(random()::text)
,false
,1
,1);

select generate_series(1,100)*round(random()*1000);