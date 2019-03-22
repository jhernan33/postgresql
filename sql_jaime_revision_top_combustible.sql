-- delete from tmp_topcinco;
select * from ftop_kilometraje(1);
select * from tmp_topcinco;

select COALESCE(def.dex_km,0) as dex_km into xfir_kim
from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
where asig.veh_pla = '2121'
and ex.exp_act = true
and ex.acc_id = 1
and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
order by ex.exp_id asc limit 1;

-- Buscar
select * from xfir_kim
drop table xfir_kim;



select COALESCE(def.dex_km,0) as dex_km into xfir_kim
from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
where ex.exp_act = true
and ex.acc_id = 1
and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
order by ex.exp_id asc limit 1;



select ve.veh_pla,bv.bra_des,mv.mod_des
from vehicles as ve left outer join brands_vehicles as bv on ve.bra_id = bv.bra_id
left outer join models_vehicles as mv on ve.mod_id = mv.mod_id
where ve.veh_act = true and ve.acc_id = 1 order by ve.veh_pla;

drop table if exists tmp_topcinco;
CREATE TEMP TABLE if not exists tmp_topcinco AS (
select ve.veh_pla,bv.bra_des,mv.mod_des
from vehicles as ve left outer join brands_vehicles as bv on ve.bra_id = bv.bra_id
left outer join models_vehicles as mv on ve.mod_id = mv.mod_id
where ve.veh_act = true and ve.acc_id = 1 order by ve.veh_pla
);
alter table tmp_topcinco add column con_kms numeric(10,4);

select count(*) as total into cant_regi from vehicles as ve where ve.veh_act = true and ve.acc_id = 1;
select * from cant_regi;
drop table cant_regi;

select * from tmp_topcinco;
drop table tmp_topcinco;