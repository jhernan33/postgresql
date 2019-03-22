select count(target_id) as total
from spaces
where account=2
and target_id = '276'
and to_char(date_from,'YYYY-MM-DD')>='2018-12-10'
and deleted='false'
group by target_id

select target_id as total,id,date_from
from spaces
where account=2
and target_id = '276'
and to_char(date_from,'YYYY-MM-DD')>='2018-12-12'
and deleted='false'
order by date_from
--group by target_id