select * from classifications_containers;
delete from classifications_containers;

insert into classifications_containers(codi_clco,desc_clco,codi_acco,codi_user)
values(1,'Contenedor Removible',1,1);
insert into classifications_containers(codi_clco,desc_clco,codi_acco,codi_user)
values(2,'Contenedor Fijo',1,1);


select * from containers;
-- select * from containers where codi_cont >100;

select setval('public.containers_codi_cont_seq',100);

delete from containers;

INSERT INTO containers(codi_cont,nomb_cont, desc_cont, codi_clco,tagx_cont
                   ,tama_cont,capa_cont,pebr_cont,alto_cont,anch_cont,
                   prof_cont,foto_cont,stat_cont--,content, last_updated,created
,codi_acco,codi_user
)
SELECT id, md5(random()::text), md5(random()::text), 1,md5(random()::text)
       ,round((random()::int * 10 + random() * 2))
      ,round((random()::int * 10 + random() * 2))::character varying
      ,(random()::int * 501 + random() * 3)::int
      ,round(cast(random()::int * 3 + random() * 2 as numeric),2)
      ,round(cast(random()::int * 2 + random() * 3 as numeric),2)
      ,round(cast(random()::int * 4 + random() * 1 as numeric),2)
      ,'Sin Foto',1
      ,1,1
FROM generate_series(1,100) id;

-- INSERT INTO DOCUMENT_TEMPLATE(id,name, short_description, author,
--                               description,content, last_updated,created)
-- SELECT id, 'name', md5(random()::text), 'name2'
--       ,md5(random()::text),md5(random()::text)
--       ,NOW() - '1 day'::INTERVAL * (RANDOM()::int * 100)
--       ,NOW() - '1 day'::INTERVAL * (RANDOM()::int * 100 + 100)
-- FROM generate_series(1,100) id;