CREATE TABLE books (  
  book_id serial NOT NULL,
  data jsonb
);

select * from books;
select * from books where book_id = 1;

INSERT INTO books VALUES (1, '{"title": "Sleeping Beauties", "genres": ["Fiction", "Thriller", "Horror"], "published": false}');  
INSERT INTO books VALUES (2, '{"title": "Influence", "genres": ["Marketing & Sales", "Self-Help ", "Psychology"], "published": true}');  
INSERT INTO books VALUES (3, '{"title": "The Dictator''s Handbook", "genres": ["Law", "Politics"], "authors": ["Bruce Bueno de Mesquita", "Alastair Smith"], "published": true}');  
INSERT INTO books VALUES (4, '{"title": "Deep Work", "genres": ["Productivity", "Reference"], "published": true}');  
INSERT INTO books VALUES (5, '{"title": "Siddhartha", "genres": ["Fiction", "Spirituality"], "published": true}');

-- select title
SELECT data->'title' AS title FROM books; 
-- select genres
select data->'genres' as generos from books;

-- Filtrado
SELECT * FROM books WHERE data->'published' = 'false';  

SELECT jsonb_array_elements_text(data->'genres') AS genre  
FROM books  
WHERE book_id = 1;  

SELECT '["Fiction", "Thriller", "Horror"]'::jsonb @> '["Fiction", "Horror"]'::jsonb;

SELECT '["Fiction", "Horror"]'::jsonb @> '["Fiction", "Thriller", "Horror"]'::jsonb; 

SELECT data->'title' FROM books WHERE data->'genres' @> '["Fiction"]'::jsonb;  

SELECT data->'title' FROM books WHERE data->'genres' @> '["Fiction", "Horror"]'::jsonb; 

SELECT '{"book": {"title": "War and Peace"}}'::jsonb @> '{"book": {}}'::jsonb; 

SELECT COUNT(*) FROM books WHERE data ? 'authors';  

CREATE INDEX idx_published ON books (data->'published');  