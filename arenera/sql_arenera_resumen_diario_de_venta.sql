select
this_.company_id,
company_al3_.title as y8_,
sum(this_.volume) as y4_,
abs(sum(this_.price)) as y6_,
count(this_.operation_id) as y5_
--,place1_.title as y16_
from
operation this_
inner join company company_al3_
on this_.company_id=company_al3_.company_id
--left outer join place place1_ on this_.place_id=place1_.place_id
where
this_.payment=false
and this_.donation=false
and (this_.place_id between 1 and 999 or this_.place_id is null)
and this_.company_id between 1 and 999
and (
        this_.deleted=false
        and this_.visible=true
)
--and this_.company_id in(347,346,200,355)
group by
this_.operation_id,
company_al3_.title
--,place1_.place_id
order by
--place1_.place_id desc
company_al3_.title desc