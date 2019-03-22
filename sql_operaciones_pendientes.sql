select "process"."operations"."oper_codi", 
"process"."operations"."oper_fein", 
case when "process"."operations"."oper_fefi" is not null then TRUE  else (select created_at from process.operations_details_output where oper_codi = operations.oper_codi) end,
"c"."cust_nomb", 
"process"."operations"."oper_caen", 
"process"."operations"."oper_peen" 
from "process"."operations" 
inner join "customers" as "c" 
on "process"."operations"."cust_dnic" = "c"."cust_dnic" 
inner join "drivers" as "d" on 
"process"."operations"."dri_dni" = "d"."dri_dni"
 left join "process"."operations_details" as "de" on
  "de"."oper_codi" = "process"."operations"."oper_codi" 
  where "process"."operations"."oper_actu" = true
   and "process"."operations"."sta_id" =11
    group by "process"."operations"."oper_codi", 
    "process"."operations"."oper_fein", "process"."operations"."oper_fefi", 
    "c"."cust_nomb", "process"."operations"."oper_caen", 
    "process"."operations"."oper_peen" 
    order by "process"."operations"."oper_codi" asc;

--select * from process.operations_details_output where oper_codi = 162;  