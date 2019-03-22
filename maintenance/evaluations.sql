select * from category_evaluations;

select * from evaluations;

-- Generate insert
INSERT INTO public.evaluations(
            feho_eval, codi_caev, codi_find, codi_obes, 
            codi_acco, codi_user)
    VALUES ( (to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp), 9, 1, 6, 
            1, 1);


select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'evaluations';
