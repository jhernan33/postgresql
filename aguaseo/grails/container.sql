select * from container order by id;
select * from container where visible = true order by id;

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'container';
