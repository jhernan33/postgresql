-- 17-02-2018
-- hability extension
create extension hstore;

create table hstore.books(
 id serial primary key,
 title varchar (255),
 attr hstore
);

INSERT INTO hstore.books (title, attr)
VALUES
 (
 'PostgreSQL Tutorial',
 '"paperback" => "243",
    "publisher" => "postgresqltutorial.com",
    "language"  => "English",
    "ISBN-13"   => "978-1449370000",
 "weight"    => "11.2 ounces"'
 );

 INSERT INTO hstore.books (title, attr)
VALUES
 (
 'PostgreSQL Cheat Sheet',
 '
"paperback" => "5",
"publisher" => "postgresqltutorial.com",
"language"  => "English",
"ISBN-13"   => "978-1449370001",
"weight"    => "1 ounces"'
 );

SELECT attr FROM hstore.books;
SELECT * FROM hstore.books;
select attr -> 'ISBN-13' as isbn from hstore.books;
select attr -> 'weight' as ancho from hstore.books where attr ->'ISBN-13' ='978-1449370000';
update hstore.books set attr = attr || '"freeshipping"=>"yes"'::hstore;
select title,attr ->'freeshipping' as freesshipping from hstore.books;
update hstore.books set attr = attr || '"freeshipping"=>"no"'::hstore;
update hstore.books set attr = delete(attr, 'freeshipping');
select title,attr->'publisher' as publisher, attr from hstore.books where attr ? 'publisher';
-- check for a key-value pair
select title from hstore.books where attr @> '"weight"=>"11.2 ounces"' ::hstore;
-- Query rows that contain multiple specified keys
select title from hstore.books where attr ?& array ['language', 'weight'];
-- Get all keys from a hstore colummn
select akeys (attr) from hstore.books;
select skeys (attr) from hstore.books;
-- Gets all values from an hstore column
select avals (attr) from hstore.books;
select svals (attr) from hstore.books;
-- Convert hstore data to JSON
select title, hstore_to_json(attr) json from hstore.books;
-- Convert hstore data to sets
select title, (each(attr)).* from hstore.books;