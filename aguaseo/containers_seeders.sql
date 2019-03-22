-- Register Classifications Containers
select * from classification_containers;

insert into classification_containers(codi_clco,desc_clco,codi_acco,codi_user)
values
(1,'Removible',1,1),
(2,'Fijo',1,1);

select * from containers limit 1000;
select count(*) from containers;
delete from containers;

-- Generate Inserts
INSERT INTO containers(codi_cont,nomb_cont,desc_cont,codi_clco,
tagx_cont,tama_cont,capa_cont,pebr_cont,alto_cont,anch_cont
,prof_cont,foto_cont,stat_cont
,codi_acco,codi_user)
SELECT id, md5(random()::text), md5(random()::text),1
      ,(random()::int*100+7),(RANDOM()::int * 100 +100)
      ,(RANDOM()::int * 200 + 100)
      ,(random()::double precision * 20 + 100)
      ,(random()::double precision * 2 + 3)
      ,(random()::double precision * 1 + 2)
      ,(random()::double precision * 3 + 1)
      ,md5(random()::text)
      ,1
      --,NOW() - '1 day'::INTERVAL * (RANDOM()::int * 100)
      --,NOW() - '1 day'::INTERVAL * (RANDOM()::int * 100 + 100)
      ,1,1
FROM generate_series(1,100) id;