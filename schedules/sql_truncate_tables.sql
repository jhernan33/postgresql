-- select * from spaces
SELECT string_agg(oid::regclass::text, ', ')
    FROM   pg_class
    WHERE  relkind = 'r'  -- only tables
    AND    relnamespace = 'public'::regnamespace

DO
$func$
BEGIN
   RAISE NOTICE '%', 
   -- EXECUTE
   (SELECT 'TRUNCATE TABLE ' || string_agg(oid::regclass::text, ', ') || ' CASCADE'
    FROM   pg_class
    WHERE  relkind = 'r'  -- only tables
    AND    relnamespace = 'public'::regnamespace
   );
END
$func$;

DO
$func$
BEGIN
   RAISE NOTICE '%', 
   -- EXECUTE
  (SELECT 'TRUNCATE TABLE '
       || string_agg(format('%I.%I', schemaname, tablename), ', ')
       || ' CASCADE'
   FROM   pg_tables
   WHERE  relkind = 'r'
   AND     relnamespace = 'public'::regnamespace
   );
END
$func$;