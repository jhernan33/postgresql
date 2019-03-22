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
	--return query
	select ve.veh_pla,bv.bra_des,mv.mod_des into xtot1
	from vehicles as ve left outer join brands_vehicles as bv on ve.bra_id = bv.bra_id
	left outer join models_vehicles as mv on ve.mod_id = mv.mod_id
	where ve.veh_act = true and ve.acc_id = Account order by ve.veh_pla;
	drop table if exists tmp_topcinco;
	CREATE TEMP TABLE if not exists tmp_topcinco AS (
		select ve.veh_pla,bv.bra_des,mv.mod_des,con_kms
	from vehicles as ve left outer join brands_vehicles as bv on ve.bra_id = bv.bra_id
	left outer join models_vehicles as mv on ve.mod_id = mv.mod_id
	where ve.veh_act = true and ve.acc_id = Account order by ve.veh_pla
	);
	alter table tmp_topcinco drop column if exists con_kms;
	alter table tmp_topcinco add column con_kms numeric(10,4);
	/*open ref1 for select ve.veh_pla,bv.bra_des,mv.mod_des,con_kms
	from vehicles as ve left outer join brands_vehicles as bv on ve.bra_id = bv.bra_id
	left outer join models_vehicles as mv on ve.mod_id = mv.mod_id
	where ve.veh_act = true and ve.acc_id = Account
	order by ve.veh_pla for update;*/
	-- Recorrer el ciclo de vehiculo
	--FOR _ctid IN EXECUTE 'SELECT ctid FROM ' || quote_ident(_tbl) FOR UPDATE
-- 	for xtota in select count(*) from vehicles as ve where ve.veh_act = true and ve.acc_id = Account loop
	select count(*) as total into cant_regi from vehicles as ve where ve.veh_act = true and ve.acc_id = Account;
-- 	for xtota in 1..cant_regi.total loop
	for xtota in select veh_pla into cant_regi from vehicles as ve where ve.veh_act = true and ve.acc_id = Account loop
	   -- Resultado de el Primer Kilometraje
		select COALESCE(def.dex_km,0) as dex_km into xfir_kim
		from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
		left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
		where asig.veh_pla = cant_regi.veh_pla
		and ex.exp_act = true
		and ex.acc_id = Account
		and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
		order by ex.exp_id asc limit 1;
-- 		-- Resultado del Ultimo Kilometraje
-- 		select COALESCE(def.dex_km,0) as dex_km into xlas_kim
-- 		from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
-- 		left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
-- 		where asig.veh_pla = xtot1.veh_pla
-- 		and ex.exp_act = true
-- 		and ex.acc_id = Account
-- 		and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
-- 		order by ex.exp_id desc limit 1;
-- 		-- Resultado de la Suma del combustible dispensado
-- 		select COALESCE(sum(def.dex_qua),0) as dex_qua into xtot_com_dis
-- 		from expenses_fuels as ex left outer join assignments as asig on ex.ass_id = asig.ass_id
-- 		left outer join detail_expenses_fuels as def on ex.exp_id = def.exp_id
-- 		where asig.veh_pla = xtot1.veh_pla
-- 		and ex.exp_act = true
-- 		and ex.acc_id = Account
-- 		and extract(MONTH FROM ex.created_at) = extract(MONTH FROM current_timestamp)
-- 		group by def.dex_qua;
-- 		-- Buscar los dos campos de modelo y marca
-- 		--update tmp_topcinco set con_kms = (xlas_kim - xfir_kim)/xtot_com_dis where veh_pla = xtot_veh.veh_pla;
-- 		--update tmp_topcinco set con_kms = (xlas_kim.dex_km - xfir_kim.dex_km)/xtot_com_dis.dex_qua where veh_pla = xtot1.veh_pla;
-- 		RAISE NOTICE '%', xlas_kim.dex_km;
-- --  		update tmp_topcinco set con_kms = (xlas_kim.dex_km - xfir_kim.dex_km)/xtot_com_dis.dex_qua where veh_pla = '2121';
--  		update tmp_topcinco set con_kms = xtot_com_dis.dex_qua where veh_pla = '2121';
-- 		--EXECUTE format('UPDATE %I SET con_kms = (xlas_kim - xfir_kim)/xtot_com_dis where ve.veh_pla = xtot_veh.veh_pla', ref1);
-- 		return xlas_kim.dex_km;
-- 		xregi := xregi + 1;
-- 		xregi := xregi + xfir_kim.dex_km;
		xacum := xacum ||'-'|| cant_regi.veh_pla;
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




select * from ftop_kilometraje(1);
select * from tmp_topcinco;

123Wifi!
