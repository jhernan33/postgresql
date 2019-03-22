-- Buscar las evaluations para el reporte
-- create extension if not exists dblink;

select
cast(verdue.code as integer) as Contenedor
,st.nomb_stco as Estado
,case
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date >= (select * from current_date)  then 'Pendiente'
when  to_char(evaluations.feho_eval,'YYYY-MM-DD')::date < (select * from current_date) then 'Sin Atencion'
end as estatus
,feho_eval as Fecha_Hora_Programada
,evaluations.pers_eval as Evaluador
from evaluations left outer join state_conditions as st on evaluations.codi_stco =  st.codi_stco
left outer join (select * 
			from dblink('dbname=vertedero','select id,code from container')
			as verdue (id integer, code character varying)
		) as verdue on evaluations.codi_obes = verdue.id
where evaluations.stat_eval = 'false'
and evaluations.codi_acco = '2'
and evaluations.codi_user = '1'
and st.deleted = 'false'
and st.codi_acco = '2'
and st.codi_user = '1'
order by cast(code as integer)

-- SELECT * 
-- FROM   table1 tb1 
-- LEFT   JOIN (
--    SELECT *
--    FROM   dblink('dbname=db2','SELECT id, code FROM table2')
--    AS     tb2(id int, code text);
-- ) AS tb2 ON tb2.column = tb1.column;