-- There isn't a script necessarily, PostgreSQL exposes a lot of that information via a special hidden schema in the database called information_schema, so you could use a query like:
-- Code to generator a data dictionary
select * from information_schema.tables; 
-- Additionally you can filter this list down, if you only care about a specific schema or table name:
SELECT *
FROM information_schema.tables t
JOIN information_schema.columns c ON (t.table_name = c.table_name)
WHERE t.table_schema = 'public'
--AND table_name   = 'your_table' -- uncomment to look at specific table
ORDER BY t.table_schema, t.table_name, c.column_name;

 SELECT

 isc.table_name,
 isc.ordinal_position::integer AS ordinal_position,
 isc.column_name::character varying AS column_name,
 isc.column_default::character varying AS column_default,
 isc.data_type::character varying AS data_type,
 isc.character_maximum_length::integer AS str_length,
        CASE
            WHEN isc.udt_name::text = 'int4'::text OR isc.udt_name::text = 
'bool'::text THEN isc.data_type::character varying
            ELSE isc.udt_name::character varying
        END AS udt_name

   FROM information_schema.columns isc
  WHERE isc.table_schema::text = 'public'::text
  ORDER BY isc.table_name, isc.ordinal_position;
