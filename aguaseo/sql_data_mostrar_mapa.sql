select * from containers where nomb_cont ='200'
select * from containers where codi_cont ='276'

-- Buscar los viajes del contenedor 200
select count(*)
from process.operation_details 
where codi_cont='200'

-- Buscar el ultimo viaje
select *
from process.operation_details as opde
where opde.codi_cont='200'
order by to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd') desc limit 1

select cont.codi_cont,cont.nomb_cont as code
--,count(opde.codi_cont) as frecuencia
,count(oper.psde_oper) as frecuencia
--,sum(opde.peso_deop) as toneladas
,sum(oper.psde_oper)/1000000 as toneladas,feho_deop
from containers as cont
left outer join process.operation_details as opde on cont.codi_cont = opde.codi_cont
left outer join process.operations as oper on opde.codi_oper = oper.codi_oper
where cont.codi_cont = '200'
and opde.cate_deop='entrada'
and opde.deleted='false'
and oper.deleted='false'
and to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd')<='2018-12-10'
group by cont.codi_cont,feho_deop