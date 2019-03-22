select * 
from operation as this_
--left outer join company as co on this_.id
where 
--r2_.paid=true
        this_.deleted=false 
	and this_.visible=true
	and this_.place_id= 19 
	and this_.company_id = 355
	order by this_.company_id