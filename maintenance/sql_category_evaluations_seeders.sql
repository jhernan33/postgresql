select * from category_evaluations;

delete from category_evaluations;
-- Generate Inserts
insert into category_evaluations(codi_caev,desc_caev,codi_acco,codi_user,created_at,updated_at)
values
(1,'Diaria',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(2,'Semanal',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(3,'Quincenal',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(4,'Mensual',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(5,'Bimensual',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(6,'Trimestral',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(7,'Semestral',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(8,'Anual',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
(9,'Otra',1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp));

select setval('public.category_evaluations_codi_caev_seq',9);

-- Generate Inserts
-- INSERT INTO container_assigneds(codi_coas,codi_cont,codi_cust,codi_zone,fech_coas,fefi_coas,stat_coas
-- codi_acco,codi_user,created_at,updated_at)
-- SELECT id, md5(random()::text),
--       1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
--       ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
-- FROM generate_series(1,50) id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'category_evaluations';
