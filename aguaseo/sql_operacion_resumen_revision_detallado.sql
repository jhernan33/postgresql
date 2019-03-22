select
cont.nomb_cont as Caja
,cont.codi_cont
,cont.peco_cont as PesoContratado
,opde.peso_deop
,(oper.psde_oper)/1000000 as peso_descargado
,opde.feho_deop
--,trim(to_char(to_timestamp (date_part('month',opde.feho_deop at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
--,to_char(opde.feho_deop at time zone 'UTC-5','MM') as mesdue
--,to_char(opde.feho_deop at time zone 'UTC-5','YYYY') as yeardue
from containers as cont
left outer join process.operation_details as opde on cont.codi_cont = opde.codi_cont
left outer join process.operations as oper on opde.codi_oper = oper.codi_oper
where 
cont.deleted ='false' 
and cont.codi_acco = 2
and cont.codi_user = 1
and opde.cate_deop = 'entrada' 
and (opde.feho_deop at time zone 'UTC-5')::date between '2018-12-01' and '2018-12-05'  
--and opde.cate_deop ='entrada' 
--group by cont.nomb_cont,cont.codi_cont,cont.peco_cont,to_char(to_timestamp (date_part('month',opde.feho_deop at time zone 'UTC-5')::text, 'MM'),'Month')
--,to_char(opde.feho_deop at time zone 'UTC-5','MM')
--,to_char(opde.feho_deop at time zone 'UTC-5','YYYY')
  order by cont.nomb_cont asc
,to_char(opde.feho_deop at time zone 'UTC-5','MM')