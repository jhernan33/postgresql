select * from public.params;
update public.params set value='http://qatracking.zippyttech.com:8000/images/' where id = 1
delete from public.customers where cust_dnic not in('12478541','8742514','358124986') ;

select * from public.customers;
"http://qatracking.zippyttech.com:8000/images/5ae2182dabdac-zippyttech-2018-04-26.jpeg"

select * from process.operations order by oper_codi;
select * from process.operations_details;
select * from process.operations_details_output; 

select * from process.operations where oper_codi = 13;
select * from process.operations where oper_codi = 18;
-- campo de diferencia de peso global
select oper_codi,oper_peen,oper_pesa,(oper_peen - oper_pesa) as dire_peso,cu.cust_dnic,dr.dri_dni
from process.operations as op left outer join customers as cu
on op.cust_dnic = cu.cust_dnic
left outer join drivers as dr on op.dri_dni = dr.dri_dni
where oper_codi = 18
and op.oper_actu = true;

select * from process.operations where oper_codi = 19;
select * from process.operations_details  where oper_codi = 19;
select * from process.operations_details_output where oper_codi = 19;

-- sql para buscar la operacion de salida por oper_codi
select op.oper_codi,oper_fein,cust_dnic,dri_dni,opput.serv_codi,opde_cant,opde_peso
from process.operations as op left outer join process.operations_details_output as opput
on op.oper_codi = opput.oper_codi
where op.oper_codi = 19

select * from services;


delete from process.operations_details_output where oper_codi = 20;
delete from process.tracking_process where opde_codi in(49,50,51,52,53);
select * from process.operations_details where oper_codi = 20;
delete from process.operations_details where oper_codi = 20;
delete from process.operations where oper_codi=20;


-- function
-- Function: public.fborr_regi(character varying, character varying, character varying)

-- DROP FUNCTION public.fborr_regi(character varying, character varying, character varying);

CREATE OR REPLACE FUNCTION public.fborr_regi(
    valor character varying,
    campo character varying,
    tabla character varying)
  RETURNS void AS
$BODY$
declare
xcam character varying;
  begin
	xcam := cast(valor as character varying);
	execute 'delete from '||trim(tabla)||' where '||trim(campo)||' ='||quote_literal(xcam);
  end;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;
ALTER FUNCTION public.fborr_regi(character varying, character varying, character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION public.fborr_regi(character varying, character varying, character varying) IS 'Funcion para Borrar un Registro de una Tabla';
