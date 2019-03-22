INSERT INTO temp.trab(suel_trab) VALUES (15600.1784);
INSERT INTO temp.trab(suel_trab) VALUES (18900.1254);
INSERT INTO temp.trab(suel_trab) VALUES (14240.9754);
INSERT INTO temp.trab(suel_trab) VALUES (10100.1500);
INSERT INTO temp.trab(suel_trab) VALUES (17800.0001);
INSERT INTO temp.trab(suel_trab) VALUES (10000.00);
INSERT INTO temp.trab(suel_trab) VALUES (7500.45);

select codi_trab,cast(suel_trab as int) from temp.trab;
select codi_trab,cast(suel_trab as integer) from temp.trab;

select codi_trab,
case 
when temp.trab.suel_trab'^\\d+$' then
   cast(suel_trab as integer)
   else
   0
end as suel_trab
from temp.trab;

select to_char(-125.8, '999D99S');
select to_char(-125.8, '999D99');

select codi_trab,to_char(suel_trab,'9999999999D9999') from temp.trab;
select codi_trab,suel_trab from temp.trab;

DROP FUNCTION temp.format_numbers(numeric);
create or replace function temp.format_numbers(xvalor numeric) returns varchar as $$
declare 
  xcad character varying; xlon integer; xpos integer; xres character varying; xdev character varying;
begin
   xcad := cast(xvalor as varchar);
  --xcad := to_char(xvalor,'9999999999D9999');
  xlon := length(xcad);
  xpos := strpos(xcad,'.');
  --xpos = xpos +1;
  xres := substr(xcad, xpos+1, xlon);
 -- raise notice '%', xres;
  if xres = '0000' or xres='000' or xres= '00' or xres = '0' then
	xdev := substr(xcad, 1, xpos-1);
	else
	xres := substr(xcad, xpos+3, xlon);
	if xres = '00' then
		xdev := substr(xcad, 1, xpos+2);
		else
		xdev := xcad;
	end if;
  end if;
 return xdev;
end;
$$language plpgsql;
select codi_trab,cast(temp.format_numbers(suel_trab) as numeric) from temp.trab;

select * from temp.trab;
select temp.format_numbers(10000.0000);


select codi_trab,temp.format_numbers(suel_trab) from temp.trab;


2
3
4
5
6
DO $$ 
DECLARE
   created_at time := now();
BEGIN 
   RAISE NOTICE '%', created_at;
END $$;

select substr('alphabet', 3, 2)