select * from classification_containers;

delete from classification_containers;

select setval('public.classification_containers_codi_clco_seq',52);

-- Generate Inserts
INSERT INTO classification_containers(codi_clco,desc_clco,codi_acco,codi_user,created_at,updated_at)
SELECT id, md5(random()::text),
      1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
      ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
FROM generate_series(1,50) id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'classification_containers';

