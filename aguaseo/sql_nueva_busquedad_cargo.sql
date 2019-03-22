select * from containers;

select * from process.operations;
select * from process.operation_details;

select cont.codi_cont,cont.nomb_cont as code
,count(opde.codi_cont) as frecuencia
,sum(opde.peso_deop) as toneladas
from containers as cont
left outer join process.operation_details as opde on cont.codi_cont = opde.codi_cont
where cont.codi_cont = 190
group by cont.codi_cont;