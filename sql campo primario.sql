SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type
FROM   pg_index i
JOIN   pg_attribute a ON a.attrelid = i.indrelid
                     AND a.attnum = ANY(i.indkey)
WHERE  i.indrelid = 'cliente'::regclass
AND    i.indisprimary;

-- Cliente
select * from client;
-- Table user mas completa
select * from users;
-- Clonar table users
create table users_new (like users including defaults including constraints including indexes including storage including comments);
insert into users_new select * from users;