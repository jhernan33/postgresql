-- Register routes
select * from routes;

delete from routes;

select setval('public.routes_codi_rout_seq',50);

-- Generate Inserts
INSERT INTO routes(codi_rout,nomb_rout,codi_acco,codi_user,created_at,updated_at)
SELECT id, md5(random()::text),
      1,1,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
      ,(to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp)
FROM generate_series(1,50) id;

-- select to_char(current_timestamp,'YYYY-MM-dd HH:MI:SS')::timestamp as fechahora;