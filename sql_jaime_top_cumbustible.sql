-- Function: public.ftop_kilometraje(integer)

DROP FUNCTION public.ftop_kilometraje(integer);

CREATE OR REPLACE FUNCTION public.ftop_kilometraje(account integer)
--   RETURNS SETOF type_top_kilometraje AS
--      returns integer as
     returns character varying as
$BODY$


declare
 xacco integer;
 xregi integer;
 xtot1 record;
 xfir_kim record;
 xlas_kim record;
 xtot_com_dis record;
 xtota record;
 con_kms numeric;
 xresu refcursor;
 cant_regi record;
 xacum text :='';
begin
	xregi :=0;
	-- Borrado de la tabla
	drop table if exists tmp_topcinco;
	CREATE TEMP TABLE tmp_topcinco AS (
		select ve.veh_pla,bv.bra_des,mv.mod_des
	from vehicles as ve left outer join brands_vehicles as bv on ve.bra_id = bv.bra_id
	left outer join models_vehicles as mv on ve.mod_id = mv.mod_id
	where ve.veh_act = true and ve.acc_id = Account order by ve.veh_pla
	);
-- 	alter table tmp_topcinco drop column if exists con_kms;
-- 	alter table tmp_topcinco add column con_kms double precision;
	alter table tmp_topcinco add column con_kms numeric(20,4);
	for xtota in select veh_pla from vehicles as ve where ve.veh_act = true and ve.acc_id = Account loop
	   -- Resultado de el Primer Kilometraje
		select COALESCE(def.dex_km,0) as dex_km into xfir_kim
		from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
		left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
		where asig.veh_pla = xtota.veh_pla
		and ex.exp_act = true
		and ex.acc_id = Account
		and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
		order by ex.exp_id asc limit 1;
		-- Resultado del Ultimo Kilometraje
		select COALESCE(def.dex_km,0) as dex_km into xlas_kim
		from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
		left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
		where asig.veh_pla = xtota.veh_pla
		and ex.exp_act = true
		and ex.acc_id = Account
		and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
		order by ex.exp_id desc limit 1;
		-- Resultado de la Suma del combustible dispensado
		select COALESCE(sum(def.dex_qua),0) as dex_qua into xtot_com_dis
		from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
		left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
		where asig.veh_pla = xtota.veh_pla
		and ex.exp_act = true
		and ex.acc_id = Account
		and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
		group by def.dex_qua;

		if xfir_kim.dex_km > 0 and xlas_kim.dex_km > 0 then
-- 		if xlas_kim.dex_km > 0 then
		xacum := xacum ||'-'|| ((xlas_kim.dex_km - xfir_kim.dex_km)/xtot_com_dis.dex_qua);
-- 		update tmp_topcinco set con_kms = (round(xlas_kim.dex_km,4) - round(xfir_kim.dex_km,4))/xtot_com_dis.dex_qua where veh_pla = xtota.veh_pla;
		update tmp_topcinco set con_kms = ((xlas_kim.dex_km - xfir_kim.dex_km)/xtot_com_dis.dex_qua) where veh_pla = xtota.veh_pla;
-- 		update tmp_topcinco set con_kms = round(xfir_kim.dex_km,4) where veh_pla = xtota.veh_pla;
		end if;
-- 		xacum := xacum ||'-'|| xtota.veh_pla;
-- 		xacum := xacum ||'-'|| xfir_kim.dex_km;
	end loop;
--  	return cant_regi.total;
-- 	return xregi;
	return xacum;
-- 	return query
-- 	select * from tmp_topcinco;
	 --return xresu;
end;
$BODY$
  LANGUAGE plpgsql VOLATILE;
--   COST 100
--   ROWS 1000;
ALTER FUNCTION public.ftop_kilometraje(integer)
  OWNER TO postgres;

-- "-D6RLGP-D6TXL-D6RL6P-ALQUILADO-D5N XL CAT-CK2412 MAT-AC7744-OPERACION-CK2412 MANT-TRACTOR AGUASEO-2858-2860-2860-2858-624443-2858-AGUASEO-MINI CARGADOR-2121-AH4544-COLON-MANTENI.TALLER-685852-668588-AJ1974-2301-685915-AY6215-AY6216-686168-AJ0831-AY6217-AG4 (...)"
-- select * from assignments where veh_pla ='AY6217' limit 1
-- 
-- select COALESCE(def.dex_km,0) as dex_km
-- from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
-- left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
-- where asig.veh_pla = 'AY6217'
-- and ex.exp_act = true
-- and ex.acc_id = 1
-- and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
-- order by ex.exp_id asc limit 1;