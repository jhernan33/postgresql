select * from company;
--Desc table
select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'company';

select * from company_type;  
-- descripcion de la table
select column_name, data_type, character_maximum_length
from information_schema.columns where table_name ='company_type';

Select * from public.company_type limit 0;

select column_name, data_type, character_maximum_length
from information_schema.columns where table_name ='company_type';