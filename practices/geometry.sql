select version();
SELECT version() || ' '|| postgis_full_version();

CREATE EXTENSION postgis;
-- Enable Topology
CREATE EXTENSION postgis_topology;
-- Enable PostGIS Advanced 3D
-- and other geoprocessing algorithms
-- sfcgal not available with all distributions
CREATE EXTENSION postgis_sfcgal;
-- fuzzy matching needed for Tiger
CREATE EXTENSION fuzzystrmatch;
-- rule based standardizer
CREATE EXTENSION address_standardizer;
-- example rule data set
CREATE EXTENSION address_standardizer_data_us;
-- Enable US Tiger Geocoder
CREATE EXTENSION postgis_tiger_geocoder;

CREATE SCHEMA my_schema;
-- Create a new simple PostgreSQL table
CREATE TABLE my_spatial_table (id serial);

-- Describing the table shows a simple table with a single "id" column.
postgis=# \d my_schema.my_spatial_table
							 Table "my_schema.my_spatial_table"
 Column |  Type   |                                Modifiers
--------+---------+-------------------------------------------------------------------------
 id     | integer | not null default nextval('my_schema.my_spatial_table_id_seq'::regclass)

-- Add a spatial column to the table
SELECT AddGeometryColumn ('my_spatial_table','geom',4326,'POINT',2);

-- Add a point using the old constraint based behavior
SELECT AddGeometryColumn ('my_schema','my_spatial_table','geom_c',4326,'POINT',2, false);

--Add a curvepolygon using old constraint behavior
SELECT AddGeometryColumn ('my_spatial_table','geomcp_c',4326,'CURVEPOLYGON',2, false);

-- ALTER TABLE netherlands.airports ADD COLUMN geom geometry(POINT,4326);
ALTER TABLE my_schema.my_spatial_table ADD COLUMN point(POINT,4326);