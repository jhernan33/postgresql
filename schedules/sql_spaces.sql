select * from spaces
where date_to 

update spaces set blocked = 'false' where id = 1;

update spaces set blocked = 'false' where id = 438;
update spaces set blocked = 'false' where id = 437;
update spaces set blocked = 'false' where id = 439;

select id,blocked from spaces where id = 438;
select id,blocked from spaces where id = 437;
select id,blocked from spaces where id = 439;

select id,blocked from spaces where id = 1;

select id,blocked,date_to 
from spaces where 
blocked = 'true'
to_char(date_to,'YYYY-MM-DD') = '2018-10-04';