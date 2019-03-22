select * from spaces;
-- Buscar los target_id de la cuenta 2
select * from spaces where account = 2 order by target_id;

-- Buscar
select id,date_to,target_id,date_from,deleted
from spaces where account = 2
and deleted='false' order by target_id;

-- Buscar un target_id especifico
select * from spaces 
where target_id ='272'
and date_from ='2018-12-04 06:12:00';

select * from "spaces" 
where "account" = 2 
and "target_id" = '272'
 and to_char(date_from,'YYYY-MM-DD HH24:MI')='2018-12-04 06:12';

select id,target_id,deleted,date_to,date_from from spaces where id=1318;
update spaces set deleted='false' where id = 1318;


 