-- Translate Languages
create table dictionary (id bigserial primary key, english character varying(255), spanish character varying(255));
delete from dictionary;
insert into dictionary (english, spanish) values
('January', 'Enero'),
('February', 'Febrero'),
('March', 'Marzo'),
('April', 'Abril'),
('May', 'Mayo'),
('June', 'Junio'),
('July', 'Julio'),
('August', 'Agosto'),
('September', 'Septiembre'),
('October', 'Octubre'),
('November', 'Noviembre'),
('December', 'Diciembre');

select english, spanish
from dictionary
join (
    select regexp_split_to_table('January February', '\W+') word
    ) words
on word = english;

DROP FUNCTION public.english_to_spanish(text);
create or replace function english_to_spanish (sentence text)
returns text language plpgsql as $$
declare
    r record;
begin
    if char_length(sentence)>0 then
	    for r in
		select english, spanish
		from dictionary
		join (
		    select regexp_split_to_table(sentence, '\W+') word
		    ) words
		on word = english
	    loop
		sentence:= replace(sentence, r.english, r.spanish);
	    end loop;
	end if;
    return sentence;
end $$;

select english_to_spanish ('August');
