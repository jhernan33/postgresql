select * from components;

delete from components;

select setval('public.components_codi_coas_seq',52);

insert into category_evaluations(desc_caev,codi_acco,codi_user,created_at,updated_at)
values
('Semanal',1,1,
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
('Quincenal',1,1,
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
('Mensual',1,1,
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
('Bimensual',1,1,
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
('Trimestral',1,1,
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)),
('Semestral',1,1,
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),
(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp));

-- Generate Inserts
INSERT INTO components(desc_comp,codi_obst,codi_acco,codi_user,created_at,updated_at)
SELECT md5(random()::text),1,
      1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
      ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
FROM generate_series(1,50) id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'components';
