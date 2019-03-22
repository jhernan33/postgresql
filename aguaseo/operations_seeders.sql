-- Register operations
select * from process.operations;

delete from operations;

-- Generate Inserts
INSERT INTO process.operations(codi_zone,nomb_zone,cout_zone
,codi_acco,codi_user)
SELECT id, md5(random()::text), md5(random()::text),
      1,1
FROM generate_series(1,50) id;

-- select column_name, data_type, character_maximum_length
select *
from INFORMATION_SCHEMA.COLUMNS where table_name = 'operations';

select column_name, data_type, character_maximum_length
 from information_schema.columns 
where table_name='container_assigneds';