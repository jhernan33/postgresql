-- Borrar una entrada o salida de una operacion
-- select * from process.operations 
-- where oper_codi = 367;

select opde.*,se.serv_desc
from process.operations_details as opde 
left outer join services as se on opde.serv_codi = se.serv_codi
where opde.opde_codi = 365;

-- Buscar la operacion
select oper_codi,sta_id 
from process.operations where oper_codi = 197;

-- Buscar las entradas de la operacion
select * from process.operations_details where oper_codi = 197;
--Buscar y agrupar las entradas por operacion
select opde.serv_codi,se.serv_desc,sum(opde.opde_peso)as tota_peso,count(opde.opde_cant) as tota_cant
from process.operations_details as opde 
left outer join services as se on opde.serv_codi = se.serv_codi
where opde.oper_codi = 197 group by opde.serv_codi,se.serv_desc;
-- Buscar y agrupas las salidar por operacion
select opsa.serv_codi,se.serv_desc,sum(opsa.opde_peso)as tota_peso,count(opsa.opde_cant) as tota_cant
from process.operations_details_output as opsa
left outer join services as se on opsa.serv_codi = se.serv_codi
where opsa.oper_codi = 197 group by opsa.serv_codi,se.serv_desc;

-- Totales 
select oper_codi,sta_id
-- from process.operations where oper_codi = 197;
-- from process.operations where oper_codi = 168;
from process.operations where oper_codi = 179;
