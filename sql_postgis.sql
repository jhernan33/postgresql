-- select version()
SELECT postgis_full_version();
create extension postgis;
create extension adminpack;
create extension postgis_sfcgal;
create extension pgrouting;
create extension postgis_sfcgal;

ALTER EXTENSION postgis UPDATE;

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

-- Upgrade PostGIS (includes raster) to latest version
ALTER EXTENSION postgis UPDATE;
ALTER EXTENSION postgis_topology UPDATE;

-- Create table with spatial column
CREATE TABLE contenedores (
  id SERIAL PRIMARY KEY,
  geom GEOMETRY(Point, 26910),
  name VARCHAR(128)
);

CREATE INDEX contenedores_gix
  ON contenedores
  USING GIST (geom);
 
-- Add a point
INSERT INTO contenedores (geom) VALUES (
  ST_GeomFromText('POINT(0 0)', 26910)
);
 
-- Query for nearby points
SELECT id, name
FROM contenedores
WHERE ST_DWithin(
  geom,
  ST_GeomFromText('POINT(0 0)', 26910),
  1000
);

select * from contenedores;
SELECT ST_AsText(geom)  FROM contenedores;
SELECT ST_X(geom), ST_Y(geom), ST_AsText(geom) FROM contenedores;
-- With a table in utm
SELECT 
ST_X(contenedores.geom) AS X1, --point x
ST_Y(contenedores.geom) AS Y1, --point y
ST_X(ST_TRANSFORM(contenedores.geom,26910)) AS LONG, -- longitude point x SIRGAS 2000
ST_Y(ST_TRANSFORM(contenedores.geom,26910)) AS LAT, --latitude point y SIRGAS 2000
ST_ASTEXT(contenedores.geom) AS XY, --wkt point xy
ST_ASTEXT(ST_TRANSFORM(contenedores.geom,26910)) AS LongLat --using st_transform to get wkt with longitude and latitude (4674 is the SIRGAS 2000 SRC by south america)
FROM contenedores;

-- Coordenadas x,y
SELECT 
ST_X(ST_TRANSFORM(contenedores.geom,26910)) AS LONG, -- longitude point x SIRGAS 2000
ST_Y(ST_TRANSFORM(contenedores.geom,26910)) AS LAT, --latitude point y SIRGAS 2000
name
FROM contenedores;

-- Formato Json
SELECT ST_AsGeoJSON(geom) from contenedores limit 1;
SELECT ST_AsGeoJSON(geom),name from contenedores;


SELECT 
'FeatureCollection' As type, 
array_to_json(array_agg(f)) As features
FROM features f;

SELECT ST_AsText(ST_GeomFromGeoJSON('{"type":"Point","coordinates":[-48.23456,20.12345]}')) As wkt;
