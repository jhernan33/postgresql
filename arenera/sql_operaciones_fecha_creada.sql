--select * from operation;
--select operation_id,company_id,place_id,date_created
/*select *
 from operation
 where operation.date_created 
	BETWEEN to_date('25-04-2018','DD-MM-YYYY') 
	AND to_date('27-04-2018','DD-MM-YYYY')
	and company_id = 349
	and place_id = 15
order by date_created;
*/

--operation reporte
select
        sum(this_.volume) as y4_,
        count(this_.vehicle_id) as y5_,
        abs(sum(this_.price)) as y6_,
        company_al3_.title as y8_,
        company_al3_.company_id as y9_
       ,place1_.title as y16_
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
         and this_.place_id =  15
         and this_.company_id = 349
	 and this_.date_created 
	BETWEEN to_date('25-04-2018','DD-MM-YYYY') 
	AND to_date('27-04-2018','DD-MM-YYYY')
    group by
        --this_.operation_id,
        company_al3_.title,
        place1_.place_id,
        company_al3_.company_id
    order by
        place1_.place_id desc

-- totales en operation general
/*select
(select count(operation) from operation where payment = false 
and donation = false) as total_credito,
(select count(operation) from operation where payment = true and donation = false) as total_contado,
(select count(operation) from operation where payment = false and donation = true) as total_donacion
from operation
group by total_credito,total_contado,total_donacion;

-- totales en operation where
select
(select count(operation) from operation where payment = false and donation = false and company_id='' and date_created BETWEEN to_date('25-04-2018','DD-MM-YYYY') AND to_date('27-04-2018','DD-MM-YYYY')) as total_credito,
(select count(operation) from operation where payment = true and donation = false) as total_contado,
(select count(operation) from operation where payment = false and donation = true) as total_donacion
from operation
group by total_credito,total_contado,total_donacion;*/