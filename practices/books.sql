select * from books 

INSERT INTO public.books(
             data)
    VALUES ('{"title": ["Postgresql","Mysql"]}'::jsonb);

delete from books;

INSERT INTO books VALUES (1, '{"title": "Sleeping Beauties", "genres": ["Fiction", "Thriller", "Horror"], "published": false}');  
INSERT INTO books VALUES (2, '{"title": "Influence", "genres": ["Marketing & Sales", "Self-Help ", "Psychology"], "published": true}');  
INSERT INTO books VALUES (3, '{"title": "The Dictator''s Handbook", "genres": ["Law", "Politics"], "authors": ["Bruce Bueno de Mesquita", "Alastair Smith"], "published": true}');  
INSERT INTO books VALUES (4, '{"title": "Deep Work", "genres": ["Productivity", "Reference"], "published": true}');  
INSERT INTO books VALUES (5, '{"title": "Siddhartha", "genres": ["Fiction", "Spirituality"], "published": true}');  

INSERT INTO books VALUES (6, '{"title": ["Postgresql","Oracle","Mysql"], "genres": ["DataBase"], "published": true}');  

select book_id,jsonb_each_text(data) from books;
select book_id,jsonb_each(data) from books;
select book_id,jsonb_typeof(data) from books;
select book_id,jsonb_array_elements_text(data) from books;
select book_id,jsonb_array_elements(data) from books;
select book_id,jsonb_populate_recordset(data) from books;
select book_id,jsonb_populate_record(data) from books;