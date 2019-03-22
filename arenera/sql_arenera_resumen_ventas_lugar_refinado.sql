select
	p1_.place_id as y4_,
	c3_.title as y7_,
	p1_.title as y6_,
        count(this_.operation_id) as y1_,
        sum(this_.volume) as y2_,
        sum(this_.price) as y3_
        --,c3_.company_id as y8_
    from
        operation this_ 
    left outer join
        company c3_ 
            on this_.company_id=c3_.company_id 
    left outer join
        place p1_ 
            on this_.place_id=p1_.place_id 
    /*left outer join
        recharge r2_ 
            on this_.operation_id=r2_.operation_id */
    where
        --r2_.paid=true
         this_.deleted=false 
	and this_.visible=true
        and (
            this_.deleted=false
            and this_.visible=true
        )
        and this_.place_id = 19
    group by
        p1_.place_id,
       -- p1_.code,
        p1_.title,
        c3_.title,
        c3_.company_id,
        p1_.code 
    order by
        p1_.place_id desc,
        c3_.company_id asc,p1_.place_id