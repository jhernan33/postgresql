select * from access limit 100;
select * from access where access_id = 1033;
select access_id,images from access where access_id = 1033;
--"["https://s3.amazonaws.com/images.arenera.com/Images/18220ba7-d8dd-4ce8-b761-d49ac9861a56.jpeg?v=1532028021338","https://s3.amazonaws.com/images.arenera.com/Images/56ff4cad-d0f2-4dc0-88d9-0a9d4402d37a.jpeg?v=1532028021760","https://s3.amazonaws.com/images. (...)"
-- Places
select * from place;
select place_id,code,deleted from place where deleted='false' order by code;