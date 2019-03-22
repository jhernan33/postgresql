-- Register Classifications Containers
select * from zones;

delete from zones;

-- Generate Inserts
INSERT INTO zones(codi_zone,nomb_zone,cout_zone
,codi_acco,codi_user)
SELECT id, md5(random()::text), md5(random()::text),
      1,1
FROM generate_series(1,50) id;