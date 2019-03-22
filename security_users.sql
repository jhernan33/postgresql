INSERT INTO security.users(
            pers_cedu, user_codi, user_name, user_emai, user_pass, user_eras, 
            acco_codi)
    values(
            13506468, 001, 'friends', 'friends47@gmail.com', digest('12345','sha512'), 
            false, 
            1);

select oid, * from public.persons;

select * from security.users;
select oid from security.users;

-- Search users
select * from security.users where pers_cedu = 13506468 and user_pass = security.sha_duex('12345');

select encode(digest('12','sha512'),'hex')


-- Decoding
SELECT CONVERT_FROM(DECODE(field, 'BASE64'), 'UTF-8') FROM table;

-- Encoding
SELECT ENCODE(CONVERT_TO(field, 'UTF-8'), 'base64') FROM table;