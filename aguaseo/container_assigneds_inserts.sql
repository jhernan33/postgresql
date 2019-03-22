select * from container_assigneds;

delete from container_assigneds;

select setval('public.container_assigneds_codi_coas_seq',52);

insert into container_assigneds(codi_cont,codi_cust,codi_zone,fefi_coas,codi_acco,codi_user)
values(1,13506,2,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp),1,1);

-- Generate Inserts
INSERT INTO container_assigneds(codi_coas,codi_cont,codi_cust,codi_zone,fech_coas,fefi_coas,stat_coas
codi_acco,codi_user,created_at,updated_at)
SELECT id, md5(random()::text),
      1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
      ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
FROM generate_series(1,50) id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'container_assigneds';

