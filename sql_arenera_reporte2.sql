select this_.price as y0_,this_.detail as 
opDetail,this_.volume as y1_,
this_.invoice as y2_,
this_.payment as y3_,
this_.date_created as y4_,
recharges4_.quantity as y5_,
recharges4_.code as y6_,
recharges4_.reference_date as y7_,
recharges4_.paid as y8_,
recharges4_.recharge_type_code as y9_,
recharges4_.recharge_type_id as y10_,
recharges4_.recharge_type_title as y11_,
recharges4_.recharge_id as y12_,
c1_.container_id as y13_,
c1_.title as y14_,
c1_.capacity as y15_,
driver3_.driver_id as y16_,
driver3_.title as y17_,
driver3_.code as y18_,
place5_.place_id as y19_,
place5_.title as y20_,
place5_.code as y21_,
v2_.vehicle_id as y22_,
v2_.title as y23_,
v2_.code as y24_,
v2_.head as y25_,
company_al6_.company_id as y26_,
company_al6_.code as y35_,
company_al6_.title as y27_,
company_al6_.phone as y28_,
company_al6_.detail as y29_,
companytyp7_.company_type_id as y30_,
companytyp7_.title as y31_,
companytyp7_.credit as y32_,
sandtype_a8_.sand_type_id as y33_,
sandtype_a8_.title as y34_ 
from operation this_ inner join company company_al6_ on this_.company_id=company_al6_.company_id 
inner join company_type companytyp7_ on company_al6_.company_type_id=companytyp7_.company_type_id 
left outer join container c1_ on this_.container_id=c1_.container_id 
left outer join driver driver3_ on this_.driver_id=driver3_.driver_id 
left outer join place place5_ on this_.place_id=place5_.place_id 
left outer join recharge recharges4_ on this_.operation_id=recharges4_.operation_id 
inner join sand_type sandtype_a8_ on this_.sand_type_id=sandtype_a8_.sand_type_id 
left outer join vehicle v2_ on this_.vehicle_id=v2_.vehicle_id 
where this_.invoice ='122'
and recharges4_.paid=true 
and (this_.deleted=false and this_.visible=true) 
group by 
this_.price,
this_.volume,
this_.invoice,
this_.payment,
this_.date_created,
recharges4_.quantity,
recharges4_.code,
recharges4_.reference_date,
recharges4_.paid,
recharges4_.recharge_type_code,
recharges4_.recharge_type_id,
recharges4_.recharge_type_title,
recharges4_.recharge_id,
c1_.container_id,
c1_.title,
c1_.capacity,
driver3_.driver_id,
driver3_.title,
driver3_.code,
place5_.place_id,
place5_.title,
place5_.code,
v2_.vehicle_id,
v2_.title,
v2_.code,
v2_.head,
company_al6_.company_id,
company_al6_.title,
company_al6_.phone,
company_al6_.detail,
companytyp7_.company_type_id,
companytyp7_.title,
companytyp7_.credit,
sandtype_a8_.sand_type_id,
sandtype_a8_.title,
this_.detail,
company_al6_.code;






select operation_id,invoice,visible,deleted 
from operation where operation_id in(59,71) order by invoice;


update operation set invoice = '122' where operation_id = 59;
update operation set invoice = '122' where operation_id = 71;
update operation set deleted = false where operation_id in(59,71);




""
select this_.price as y0_,this_.detail as opDetail,this_.volume as y1_,this_.invoice as y2_,this_.payment as y3_,this_.date_created as y4_,recharges4_.quantity as y5_,recharges4_.code as y6_,recharges4_.reference_date as y7_,recharges4_.paid as y8_,recharges4_.recharge_type_code as y9_,recharges4_.recharge_type_id as y10_,recharges4_.recharge_type_title as y11_,recharges4_.recharge_id as y12_,c1_.container_id as y13_,c1_.title as y14_,c1_.capacity as y15_,driver3_.driver_id as y16_,driver3_.title as y17_,driver3_.code as y18_,place5_.place_id as y19_,place5_.title as y20_,place5_.code as y21_,v2_.vehicle_id as y22_,v2_.title as y23_,v2_.code as y24_,v2_.head as y25_,company_al6_.company_id as y26_,company_al6_.code as y35_,company_al6_.title as y27_,company_al6_.phone as y28_,company_al6_.detail as y29_,companytyp7_.company_type_id as y30_,companytyp7_.title as y31_,companytyp7_.credit as y32_,sandtype_a8_.sand_type_id as y33_,sandtype_a8_.title as y34_ from operation this_ inner join company company_al6_ on this_.company_id=company_al6_.company_id inner join company_type companytyp7_ on company_al6_.company_type_id=companytyp7_.company_type_id left outer join container c1_ on this_.container_id=c1_.container_id left outer join driver driver3_ on this_.driver_id=driver3_.driver_id left outer join place place5_ on this_.place_id=place5_.place_id left outer join recharge recharges4_ on this_.operation_id=recharges4_.operation_id inner join sand_type sandtype_a8_ on this_.sand_type_id=sandtype_a8_.sand_type_id left outer join vehicle v2_ on this_.vehicle_id=v2_.vehicle_id where this_.operation_id=${params.id} and recharges4_.paid=true and (this_.deleted=false and this_.visible=true) group by this_.price,this_.volume,this_.invoice,this_.payment,this_.date_created,recharges4_.quantity,recharges4_.code,recharges4_.reference_date,recharges4_.paid,recharges4_.recharge_type_code,recharges4_.recharge_type_id,recharges4_.recharge_type_title,recharges4_.recharge_id,c1_.container_id,c1_.title,c1_.capacity,driver3_.driver_id,driver3_.title,driver3_.code,place5_.place_id,place5_.title,place5_.code,v2_.vehicle_id,v2_.title,v2_.code,v2_.head,company_al6_.company_id,company_al6_.title,company_al6_.phone,company_al6_.detail,companytyp7_.company_type_id,companytyp7_.title,companytyp7_.credit,sandtype_a8_.sand_type_id,sandtype_a8_.title,this_.detail,company_al6_.code

select * from operation;