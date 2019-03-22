-- select regexp_matches('foobarbequebaz', '(bar)(beque)')

select regexp_matches('delete.customer,index.customer,show.customer,store.customer,update.customer
', '(show)');

SELECT regexp_replace('inbex.customer,bbb 888 bbb ccc ddd', 
'(.)\1{1,}', '\1', 'g');

SELECT regexp_matches('abc01234xyz', '(.*)(\d+)(.*)');

select 'a\bcd' as f1, 'a\b''cd' as f2, 'a\b''''cd' as f3, 'abcd\'   as f4, 'ab\''cd' as f5, '\\' as f6;

SELECT regexp_split_to_array('thE QUick bROWn FOx jUMPed ovEr THE lazy dOG', 'e', 'i');

select regexp_split_to_array('delete.customer,index.customer,show.customer,store.customer,update.customer
', '.customer'||'.');

SELECT foo FROM regexp_split_to_table
('the quick brown fox jumped over the lazy dog', E'\\s+') AS foo;

array text[];
select regexp_split_to_array('whatever this is it splits into array with spaces', E'\\s+')
    into array;

-- to table
SELECT regexp_split_to_array('thiiis splits into array with spaces', '\s+')
INTO _arr;

SELECT a
FROM regexp_split_to_table('john,smith,jones', ',') AS a;

SELECT a
FROM unnest(string_to_array('john,smith,jones', ',')) AS a;

SELECT *
FROM regexp_split_to_table('john    smith,jones', E'[\\s,]+') AS a;

SELECT UNNEST(REGEXP_SPLIT_TO_ARRAY('john,smith,jones', '[aeiou]')) 
AS resultados;

select unnest(regexp_split_to_array('delete.customer,index.customer,show.customer,store.customer,update.customer
', '.customer'||'.')) as valores;

-- Ordenado
select unnest(regexp_split_to_array('delete.customer,index.customer,show.customer,store.customer,update.customer
', '.customer'||'.')) as valores order by valores;

select regexp_split_to_array('delete.customer,index.customer,show.customer,store.customer,update.customer
', '.customer'||'.');

create extension tablefunc;

SELECT * FROM crosstab3(
   $$
   SELECT (rn/3)::text AS x, (rn%3)::text, item
   FROM  (
      SELECT row_number() OVER () - 1 AS rn, trim(item) AS item
      FROM (
         SELECT CASE WHEN rn%2 = 1 THEN regexp_split_to_table(item, ',') 
                     ELSE item END AS item
         FROM  (
            SELECT row_number() OVER () AS rn, *
            FROM regexp_split_to_table('Test 1|new york| X, Test 2| chicago|Y, Test 3| harrisburg, pa| Z', '\|') AS item
            ) x
         ) y
      ) z
   $$)

SELECT trim(split_part(a,'|', 1)) AS column1
      ,trim(split_part(a,'|', 2)) AS column2
      ,trim(split_part(a,'|', 3)) AS column3
FROM  (
   SELECT unnest(
             string_to_array(
                         regexp_replace('Test 1|new york| X, Test 2| chicago|Y, Test 3| harrisburg, pa| Z'
                        ,'([^|]*\|[^|]*\|[^,]*),', '\1~^~', 'g'), '~^~')) AS a
   ) sub;

select unnest(regexp_split_to_array('1.2.3','\.')); 

drop table if exists teste;
create table teste (
    id integer,
    nome text
);

insert into teste (id, nome) values
(1, 'Julio Cezar Andrade'),
(2, 'Fenando Henrique Cardoso'),
(3, 'Antonio Carlos Magalhães'),
(4, 'Pedro Álvares Cabral');

select id,
    nome[array_length(nome, 1)] || ', ' ||
    array_to_string(nome[1: array_length(nome, 1) - 1], ' ')
    as nome
from (
    select id, regexp_split_to_array(nome, '\s+') as nome
    from teste
) s;
 id |           nome            
----+---------------------------
  1 | Andrade, Julio Cezar
  2 | Cardoso, Fenando Henrique
  3 | Magalhães, Antonio Carlos
  4 | Cabral, Pedro Álvares