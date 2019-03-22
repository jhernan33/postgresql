select * 
from evaluations 
where codi_obes = 14
and stat_eval = 'false'
and deleted = 'false'
and codi_acco = '1';

update evaluations 
set stat_eval = 'true'
where codi_obes = 14
and stat_eval = 'false'
and deleted = 'false'
and codi_acco = '1';
