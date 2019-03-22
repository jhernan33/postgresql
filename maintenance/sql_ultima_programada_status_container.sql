select
codi_eval as Codigo,feho_eval as Fecha_Hora,pers_eval as Persona_Evaluadora,
evaluations.codi_caev as Categoria,evaluations.codi_stco as codigo_estado,stat_eval as Estatus,
codi_obes as Objeto_Estudio,obse_eval as Observaciones,evaluations.codi_acco as Cuenta,
evaluations.codi_user as Usuario,
abs((select * from current_date) - to_char(evaluations.feho_eval,'YYYY-MM-DD')::date) as dias,
case
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estado
,st.nomb_stco as nombre_estado
,st.colo_stco as color
,evaluations.created_at
from evaluations left outer join state_conditions as st on evaluations.codi_stco = st.codi_stco
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '2'
and evaluations.codi_user = '1'
and evaluations.codi_obes = 200
and evaluations.deleted ='false'
and st.deleted = 'false'
and st.codi_acco = '2'
and st.codi_user = '1'
-- order by evaluations.created_at desc limit 1