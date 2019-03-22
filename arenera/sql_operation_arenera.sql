﻿select
        --sum(this_.volume) as y4_,
        --count(this_.vehicle_id) as y5_,
        --abs(sum(this_.price)) as y6_,
        company_al3_.title as y8_,
        --company_al3_.company_id as y9_
       ,place1_.title as y16_,
       count(this_.operation_id) as viaje,
       this_.volume as yardas,
       this_.price as monto
    from
        operation this_ 
    inner join
        company company_al3_ 
            on this_.company_id=company_al3_.company_id 
    inner join
        company_type companytyp4_ 
            on company_al3_.company_type_id=companytyp4_.company_type_id 
    left outer join
        place place1_ 
            on this_.place_id=place1_.place_id 
    left outer join
        recharge r2_ 
            on this_.operation_id=r2_.operation_id 
    inner join
        sand_type sandtype_a5_ 
            on this_.sand_type_id=sandtype_a5_.sand_type_id 
    where
        r2_.paid=true 
		and this_.payment=false
		and this_.donation=false
        and (
            this_.deleted=false 
            and this_.visible=true
        ) 
         and this_.place_id between 1 and 15
         and this_.company_id between 349 and 349
         and this_.date_created 
	     BETWEEN to_date( '25-04-2018' ,'DD-MM-YYYY') 
 	    AND to_date( '28-04-2018'  ,'DD-MM-YYYY')
    group by
        this_.operation_id,
        company_al3_.title,
        place1_.place_id,
        company_al3_.company_id,
        this_.volume,
        this_.price
    order by
        place1_.place_id desc

--select * from company order by company_id;
--select * from place;