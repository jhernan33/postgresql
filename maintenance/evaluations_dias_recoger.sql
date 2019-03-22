-- select * from evaluations;
select
codi_eval as Codigo,feho_eval as Fecha_Hora,pers_eval as Persona_Evaluadora,
evaluations.codi_caev as Categoria,evaluations.codi_find as Hallazgo,stat_eval as Estatus,
codi_obes as Objeto_Estudio,obse_eval as Observaciones,evaluations.codi_acco as Cuenta,
evaluations.codi_user as Usuario,
abs((select * from current_date) - to_char(evaluations.feho_eval,'YYYY-MM-DD')::date) as dias,
case
 when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
 when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estado
,f.nomb_find as DescripcionHallazgo
,sc.colo_stco as color
from evaluations left outer join findings as f on evaluations.codi_find = f.codi_find
left outer join state_conditions as sc on f.codi_stco = sc.codi_stco
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '1'
and evaluations.codi_user = '1'
and f.deleted = 'false'
and f.codi_acco = '1'
and f.codi_user = '1'
and sc.deleted = 'false'
and sc.codi_acco = '1'
and sc.codi_user = '1'