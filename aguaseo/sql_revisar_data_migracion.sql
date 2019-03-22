-- Limpiar la data
TRUNCATE process.operations cascade;
select count(*) from process.operations;
select count(*) from process.operation_details;
-- revisar la data
select * from containers;
select * from process.operations;
select * from process.operation_details;


select codi_deop,idve_oper,to_char(feho_deop,'YYYY-MM-dd HH24:MI:SS')::timestamp without time zone as feho_deop
from process.operation_details
group by codi_deop,idve_oper,feho_deop
order by feho_deop desc
limit 1;

-- Otro modelo
select codi_deop,idve_oper
from process.operation_details
group by codi_deop,idve_oper
order by codi_deop desc
limit 1;


