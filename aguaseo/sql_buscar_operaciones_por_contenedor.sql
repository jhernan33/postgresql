select * from container limit 100;
select * from container where id in(9,15);
select cast(code as integer) from container where cast(code as INTEGER) in(9,15);
select * from container where code like '%240 %';