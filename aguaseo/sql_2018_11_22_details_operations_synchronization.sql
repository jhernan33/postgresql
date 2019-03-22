-- 2018-11-22
-- Buscar el detalle de opdeeraciones en detalle de opdeeraciones
select co.nomb_cont as Caja
,opde.codi_deop as OperacionId
,(to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd')::date) as Fecha
,(to_char(opde.feho_deop at time zone 'UTC-5','HH:MI:SS')::time) as Hora
,((opde.peso_deop)::double precision) as Toneladas
,opde.plac_vehi as vehiculo
from process.operation_details as opde
left outer join containers as co on opde.codi_cont = co.codi_cont
-- left outer join vehicle   as ve on op.vehiculo_id = ve.vehiculo_id
where 
opde.codi_cont = 190
and (opde.feho_deop at time zone 'UTC-5')::date between '2018-11-01' and '2018-11-30'
group by co.nomb_cont,opde.feho_deop,opde.peso_deop,opde.plac_vehi,opde.codi_cont,opde.codi_deop
order by opde.codi_cont,(to_char(opde.feho_deop at time zone 'UTC-5','YYYY-MM-dd')::date) desc