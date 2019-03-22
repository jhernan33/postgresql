-- Get Operation Local
select cont.codi_cont,cont.nomb_cont as code
,to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd') as fecha_registro
,to_char(opde.feho_deop at time zone 'UTC-5','HH24:MI:SS')as hora_registro
--,opde.peso_deop as toneladas
,(oper.psde_oper)/1000000 as toneladas
,opde.plac_vehi as placa
from containers as cont
left outer join process.operation_details as opde on cont.codi_cont = opde.codi_cont
left outer join process.operations as oper on opde.codi_oper = oper.codi_oper
where cont.codi_cont = 200
and opde.cate_deop ='entrada'
and opde.deleted ='false' 
order by to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd') desc 
limit 1