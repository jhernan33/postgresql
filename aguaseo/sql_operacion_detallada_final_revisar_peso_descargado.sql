select co.nomb_cont as Caja
,opde.codi_deop as OperacionId
,(to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd')::date) as Fecha
,(to_char(opde.feho_deop at time zone 'UTC-5','HH:MI:SS')::time) as Hora
--,((opde.peso_deop)::double precision) as Toneladas
,((oper.psde_oper)/1000000::double precision) as Toneladas
,opde.plac_vehi as vehiculo
from process.operation_details as opde
left outer join containers as co on opde.codi_cont = co.codi_cont
left outer join process.operations as oper on opde.codi_oper = oper.codi_oper
where 
opde.codi_cont = 200
and opde.cate_deop = 'entrada'
and (opde.feho_deop at time zone 'UTC-5')::date between '2018-12-01' and '2018-12-05'
group by co.nomb_cont,opde.feho_deop--,opde.peso_deop
,oper.psde_oper,opde.plac_vehi,opde.codi_cont,opde.codi_deop
order by opde.codi_cont,(to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd')::date) desc