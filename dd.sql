--Obtener las tablas y vistas de una base de datos en PostgreSQL

SELECT
    t1.COLUMN_NAME AS columna_nombre,
    t1.COLUMN_DEFAULT AS columna_defecto,
    t1.IS_NULLABLE AS columna_nulo,
    t1.DATA_TYPE AS columna_tipo_dato,
    COALESCE(t1.NUMERIC_PRECISION,
    t1.CHARACTER_MAXIMUM_LENGTH) AS columna_longitud,
    PG_CATALOG.COL_DESCRIPTION(t2.OID,
    t1.DTD_IDENTIFIER::int) AS columna_descripcion,
    t1.DOMAIN_NAME AS columna_dominio
FROM 
    INFORMATION_SCHEMA.COLUMNS t1
    INNER JOIN PG_CLASS t2 ON (t2.RELNAME = t1.TABLE_NAME)
WHERE 
    t1.TABLE_SCHEMA = '[NOMBRE_ESQUEMA]' AND
    t1.TABLE_NAME = '[NOMBRE_TABLA]'
ORDER BY
    t1.ORDINAL_POSITION;

-- Obtener las restricciones de una base de datos

SELECT
    t1.CONSTRAINT_TYPE AS tipo_restriccion,
    t2.COLUMN_NAME AS columna_nombre,
    t1.CONSTRAINT_NAME AS restriccion_nombre,
    t4.CONSTRAINT_NAME AS restriccion_referencia_nombre,
    t4.TABLE_NAME AS tabla_referencia,
    t4.COLUMN_NAME AS columna_referencia
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS t1
    LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE t2
    ON t1.CONSTRAINT_CATALOG = t2.CONSTRAINT_CATALOG
    AND t1.CONSTRAINT_SCHEMA = t2.CONSTRAINT_SCHEMA
    AND t1.CONSTRAINT_NAME = t2.CONSTRAINT_NAME
    LEFT JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS t3
    ON t1.CONSTRAINT_CATALOG = t3.CONSTRAINT_CATALOG
    AND t1.CONSTRAINT_SCHEMA = t3.CONSTRAINT_SCHEMA
    AND t1.CONSTRAINT_NAME = t3.CONSTRAINT_NAME
    LEFT JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE t4
    ON t3.UNIQUE_CONSTRAINT_CATALOG = t4.CONSTRAINT_CATALOG
    AND t3.UNIQUE_CONSTRAINT_SCHEMA = t4.CONSTRAINT_SCHEMA
    AND t3.UNIQUE_CONSTRAINT_NAME = t4.CONSTRAINT_NAME
--WHERE
  --  t1.TABLE_SCHEMA = '[NOMBRE_ESQUEMA]' AND
    --t1.TABLE_NAME = '[NOMBRE_TABLA]' AND
    --t2.COLUMN_NAME = '[NOMBRE_COLUMNA]'
ORDER BY
    t1.CONSTRAINT_TYPE DESC;

-- Diccionario de datos de una base de datos
SELECT c.table_schema,c.table_name,c.column_name,c.data_type ||'(' || c.character_maximum_length ||')' ,c.is_nullable,c.column_default,pgd.description FROM 
pg_catalog.pg_statio_all_tables as st inner join pg_catalog.pg_description pgd on 
(pgd.objoid=st.relid) inner join information_schema.columns c on (pgd.objsubid=c.ordinal_position and 
c.table_schema=st.schemaname and c.table_name=st.relname);


-- otra forma
SELECT 
tables.table_name AS tabla_nombre,
pg_catalog.obj_description(pg_class.oid, 'pg_class') AS tabla_descripcion
FROM 
information_schema.tables
INNER JOIN pg_class ON (pg_class.relname = tables.table_name)
WHERE 
tables.table_schema='public'
ORDER BY
tables.table_name;

-- otro modelo
SELECT c.table_schema,c.table_name,c.column_name,c.data_type ||'(' || c.character_maximum_length ||')' ,c.is_nullable,c.column_default,pgd.description FROM 
pg_catalog.pg_statio_all_tables as st inner join pg_catalog.pg_description pgd on 
(pgd.objoid=st.relid) inner join information_schema.columns c on (pgd.objsubid=c.ordinal_position and 
c.table_schema=st.schemaname and c.table_name=st.relname);

-- otra
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