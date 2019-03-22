select 
	this_.operation_id as operation_id,
        this_.title as title,
        this_.detail as detail,
        this_.icon as icon,
        this_.enabled as enable,
        this_.deleted as deleted,
        this_.visible as visible,
        this_.editable as editable,
        -- deux
        account_al1_.account_id as account_id,
        account_al1_.name as name,
        account_al1_.ruc as ruc,
        account_al1_.email as email,
        -- trois
        this_.volume as volume,
        this_.price as price,
        this_.payment as payment,
        this_.invoice as invoice,
        this_.images as images,
        -- quatre
        recharges9_.quantity as quantity,
        recharges9_.code as code,
        recharges9_.reference_date as reference_date,
        recharges9_.paid as paid,
        recharges9_.recharge_type_code as recharge_type_code,
        recharges9_.recharge_type_id as recharge_type_id,
        recharges9_.recharge_type_title as recharge_type_title,
        recharges9_.recharge_id as recharge_id,
        company3_.company_id as company_id,
        company3_.code as code,
        company3_.title as title,
        container4_.container_id as container_id,
        container4_.title as container_title,
        driver5_.driver_id as driver_id,
        driver5_.code as code,
        driver5_.title as title,
        place6_.place_id as place_id,
        place6_.code as code,
        place6_.title as title,
        sandtype7_.sand_type_id as sand_type_id,
        sandtype7_.title as title,
        vehicle2_.vehicle_id as vehicle_id,
        vehicle2_.code as vehicle_code,
        vehicle2_.title as vehicle_title,
        this_.username_creator as username_creator,
        this_.username_updater as username_updater,
        this_.date_created as date_created,
        this_.date_updated as date_updated,
        this_.user_agent as user_agent,
        this_.ip as ip,
        company_type5.title as company_type
from
operation this_
inner join
        account account_al1_ on this_.account_id=account_al1_.account_id
inner join
        company company3_ on this_.company_id=company3_.company_id
left outer join
	company_type company_type5 on company3_.company_type_id = company_type5.company_type_id
left outer join
        container container4_ on this_.container_id=container4_.container_id 
left outer join
        driver driver5_ on this_.driver_id=driver5_.driver_id 
left outer join
        place place6_ on this_.place_id=place6_.place_id 
left outer join
        recharge recharges9_ on this_.operation_id=recharges9_.operation_id
left outer join
        record record8_ on this_.operation_id=record8_.operation_id
left outer join
        sand_type sandtype7_ on this_.sand_type_id=sandtype7_.sand_type_id 
inner join
        vehicle vehicle2_ on this_.vehicle_id=vehicle2_.vehicle_id 
where
        1=1 
        and 1=1 
        and (
            recharges9_.paid=false
        ) 
        and (
            this_.deleted=false 
            and this_.visible=true
        )
        order by
        operation_id asc limit 100 ;
