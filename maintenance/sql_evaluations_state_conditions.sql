select * from state_conditions order by codi_stco;
select * from state_conditions where deleted = 'true' order by codi_stco;
select * from state_conditions where deleted = 'false' order by codi_stco;

update state_conditions set deleted = 'false' where codi_stco = 3; 
update state_conditions set deleted = 'false' where codi_stco = 4;
update state_conditions set deleted = 'false' where codi_stco in(1,2,3,4,5);
update state_conditions set deleted = 'true' where codi_stco in (11,12,13);
 
select * from evaluations;

-- Borrar la data de evaluations
-- delete from evaluations;

select
codi_eval as Codigo,feho_eval as Fecha_Hora,pers_eval as Persona_Evaluadora,
evaluations.codi_caev as Categoria,evaluations.codi_stco as Estado_Condicion,stat_eval as Estatus,
codi_obes as Objeto_Estudio,obse_eval as Observaciones,evaluations.codi_acco as Cuenta,
evaluations.codi_user as Usuario,
abs((select * from current_date) - to_char(evaluations.feho_eval,'YYYY-MM-DD')::date) as dias,
case
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estado
,st.nomb_stco as EstadoCondicion
,st.colo_stco as color
from evaluations left outer join state_conditions as st on evaluations.codi_stco =  st.codi_stco
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '2'
and evaluations.codi_user = '1'
and st.deleted = 'false'
and st.codi_acco = '2'
and st.codi_user = '1'

-- Listar las evaluaciones por id
select
codi_eval as Codigo,feho_eval as Fecha_Hora,pers_eval as Persona_Evaluadora,
evaluations.codi_caev as Categoria,evaluations.codi_stco as Codigo_Estado_Condicion,stat_eval as Estatus,
codi_obes as Objeto_Estudio,obse_eval as Observaciones,evaluations.codi_acco as Cuenta,
evaluations.codi_user as Usuario,
abs((select * from current_date) - to_char(evaluations.feho_eval,'YYYY-MM-DD')::date) as dias,
case
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estado
,st.nomb_stco as Nombre_Estado_Condicion
,st.colo_stco as color
from evaluations left outer join state_conditions as st on evaluations.codi_stco =  st.codi_stco
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '2'
and evaluations.codi_user = '1'
and evaluations.codi_eval = $id
and st.deleted = 'false'
and st.codi_acco = '2'
and st.codi_user = '1'

-- Listar las evaluaciones container por id

select
codi_eval as Codigo,feho_eval as Fecha_Hora,pers_eval as Persona_Evaluadora,
evaluations.codi_caev as Categoria,evaluations.codi_stco as Codigo_Estado_Condicion,stat_eval as Estatus,
codi_obes as Objeto_Estudio,obse_eval as Observaciones,evaluations.codi_acco as Cuenta,
evaluations.codi_user as Usuario,
abs((select * from current_date) - to_char(evaluations.feho_eval,'YYYY-MM-DD')::date) as dias,
case
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estado
,st.nomb_stco as Nombre_Estado_Condicion
,st.colo_stco as color
from evaluations left outer join state_conditions as st on evaluations.codi_stco = st.codi_stco
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '2'
and evaluations.codi_user = '1'
and evaluations.codi_obes = $id
and st.deleted = 'false'
and st.codi_acco = '2'
and st.codi_user = '1'