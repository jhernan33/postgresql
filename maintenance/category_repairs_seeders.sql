﻿select * from category_repairs;

delete from category_repairs;

select setval('public.category_repairs_codi_coas_seq',52);

insert into category_repairs(desc_caev,codi_acco,codi_user,created_at,updated_at)
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
INSERT INTO category_repairs(desc_care,codi_acco,codi_user,created_at,updated_at)
SELECT md5(random()::text),
      1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
      ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
FROM generate_series(1,50) id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'category_repairs';