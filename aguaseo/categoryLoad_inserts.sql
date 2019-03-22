select * from category_loads;

delete from category_loads;

select setval('public.category_loads_codi_ctlo_seq',52);

-- Generate Inserts
INSERT INTO category_loads(codi_ctlo,desc_ctlo,codi_unme,codi_acco,codi_user,created_at,updated_at)
SELECT id, md5(random()::text),1,
      1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
      ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
FROM generate_series(1,50) id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'category_loads';
