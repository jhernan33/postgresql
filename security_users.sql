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