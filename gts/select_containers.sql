SELECT * FROM gts.Geozone;
SELECT count(*) FROM gts.Geozone where accountID='aguaseo';
SELECT * FROM gts.Geozone where accountID='aguaseo';
SELECT * FROM gts.Geozone where accountID='aguaseo' and radius is not null;
SELECT count(*) FROM gts.Geozone;
SELECT * FROM gts.Geozone where geozoneID = 'c_1039_c152';

-- Redondear las coordenadas
SELECT accountID,geozoneID,substring(geozoneID,locate('_c',geozoneID)+2),char_length(geozoneID),sortID,
round(minLatitude,5) as minLatitude,round(maxLatitude,5) as maxLatitude,
round(minLongitude,5) as minLongitude,round(maxLongitude,5) as maxLongitude,radius,
round(latitude1,5) as Latitude1,round(latitude2,5) as Latitude2
FROM gts.Geozone  
-- where geozoneID = 'c_1039_c152';
-- where radius= 35
where accountID ='aguaseo'
and radius in (3000,1000,487,454,91,56,55,50)
order by radius


-- Buscar el promedio de latitud y longitud
SELECT accountID,geozoneID,
substring(geozoneID,locate('_c',geozoneID)+3) as container,
char_length(geozoneID) as longitud,
(maxLatitude+minLatitude)/2 as Latitude,
(maxLongitude+minLongitude)/2 as Longitude
FROM gts.Geozone  
where accountID ='aguaseo'
and radius in (3000,1000,487,454,91,56,55,50,35)
order by radius;


describe gts.Geozone;
