CREATE OR REPLACE FUNCTION public.lastdayofmonth(date) RETURNS date AS
'select ((date_trunc(\'month\', $1) + interval \'1 month\') - interval
\'1 day\')::date;'
LANGUAGE 'sql' VOLATILE;

select ((date_trunc('month', 1) + interval '1 month') - interval '1 day')::date;

select cast('2018-03-01' as date)-1

select (date_trunc('month', ) + interval '1 month') - interval '1 day'