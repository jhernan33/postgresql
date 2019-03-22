select
codi_eval as Codigo
,codi_obes as Objeto_Estudio
,case
when evaluations.codi_caev = 10 then null
when evaluations.codi_caev = 11 then feho_eval
end as fecha_hora,
pers_eval as Persona_Evaluadora,
evaluations.codi_caev as Categoria,evaluations.codi_stco as Estado_Condicion,stat_eval as Estatus
,obse_eval as Observaciones,evaluations.codi_acco as Cuenta,
evaluations.codi_user as Usuario,
abs((select * from current_date) - to_char(evaluations.feho_eval,'YYYY-MM-DD')::date) as dias,
case
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estado
,st.nomb_stco as EstadoCondicion
,st.colo_stco as color
,evaluations.created_at
,caev.desc_caev as Nombre_Categoria
from evaluations left outer join state_conditions as st on evaluations.codi_stco =  st.codi_stco
left outer join category_evaluations as caev on evaluations.codi_caev = caev.codi_caev
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '2'
and evaluations.codi_user = '1'
and evaluations.deleted = 'false'
and st.deleted = 'false'
and st.codi_acco = '2'
and st.codi_user = '1'
and to_char(feho_eval,'YYYY-MM-DD') between '2018-11-01' and '2018-11-15'
and evaluations.codi_obes = 193
order by codigo