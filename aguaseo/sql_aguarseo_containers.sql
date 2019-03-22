select * from container

select * from operation limit 100;

SELECT * FROM information_schema.tables 
WHERE table_schema = 'public'

SELECT datname as database,
       procpid as pid,
       usename as username,
       application_name as application,
       client_addr as client_address,
       current_query
  FROM pg_stat_activity