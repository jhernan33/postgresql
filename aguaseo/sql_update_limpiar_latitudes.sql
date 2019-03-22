select * from containers;

update containers set lati_cont =null, long_cont =null;


select
cont.nomb_cont as Caja
,cont.codi_cont
,cont.peco_cont as PesoContratado
,sum(((opde.peso_deop)::double precision)) as PesoTotal
,round(avg(((opde.peso_deop)::double precision))::numeric,4) as PesoPromedio
,trim(to_char(to_timestamp (date_part('month',opde.feho_deop at time zone 'UTC-5')::text, 'MM'),'Month')) as mes
,to_char(opde.feho_deop at time zone 'UTC-5','MM') as mesdue
,to_char(opde.feho_deop at time zone 'UTC-5','YYYY') as yeardue
,count(opde.codi_cont) as Viajes
,(count(distinct opde.codi_vehi)) as Vehiculos
from containers as cont
left outer join process.operation_details as opde on cont.codi_cont = opde.codi_cont
where 
cont.deleted ='false' 
and cont.codi_acco = 2
and cont.codi_user = 1  
and (opde.feho_deop at time zone 'UTC-5')::date between '2018-11-30' and '2018-11-30'  and opde.cate_deop ='entrada' group by cont.nomb_cont,cont.codi_cont,cont.peco_cont,to_char(to_timestamp (date_part('month',opde.feho_deop at time zone 'UTC-5')::text, 'MM'),'Month')
,to_char(opde.feho_deop at time zone 'UTC-5','MM')
,to_char(opde.feho_deop at time zone 'UTC-5','YYYY')  order by cont.nomb_cont asc
,to_char(opde.feho_deop at time zone 'UTC-5','MM')
