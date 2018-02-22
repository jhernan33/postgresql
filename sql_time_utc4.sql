begin;
select now();
select now() at time zone 'GMT';
select now() at time zone 'GMT+1';
select now() at time zone 'PST';
select now() at time zone 'UTC+4'; -- VENEZUELA
end;
-- Extract day from now
select extract(day from now());
select extract(dow from now());
select to_char(current_date, 'Day');
select to_char(now(), 'Day');
select to_char(current_date-4, 'Day');