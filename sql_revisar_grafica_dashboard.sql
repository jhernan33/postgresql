-- Entradas totales
select oper_codi,oper_peen from process.operations 
where sta_id in(11,12) order by oper_codi;
-- Sumar las entradas
select to_date(to_char(oper_fein, 'YYYY-MM-DD'),'YYYY-MM-DD') as oper_fein,sum(oper_peen) from process.operations 
where sta_id in(11,12) group by oper_fein,oper_peen order by oper_fein;

select sum(oper_peen) from process.operations 
where sta_id in(11,12)-- group by sta_id;
-- Salidas
select sum(oper_pesa) from process.operations 
where sta_id in(13,14)-- group by sta_id;
-- Salidas Detalladas
select oper_codi,oper_pesa from process.operations 
where sta_id in(13,14) order by oper_codi;

--Buscar las entradas
select sum(op.oper_peen),sum(opde.opde_peso)
from process.operations as op 
left outer join process.operations_details as opde on op.oper_codi = opde.oper_codi
where op.sta_id in(11,12)

-- Buscar los persos de entradas de las salidas procesadas
select sum(opde.opde_peso)
from process.operations as op 
left outer join process.operations_details as opde on op.oper_codi = opde.oper_codi
where op.sta_id in(13,14)
-- group by op.sta_id

-- Buscar los pesos de las salidas procesadas 
select sum(opde.opde_peso) as total
from process.operations as op 
left outer join process.operations_details_output as opde on op.oper_codi = opde.oper_codi
where op.sta_id in(13,14)
--group by op.sta_id