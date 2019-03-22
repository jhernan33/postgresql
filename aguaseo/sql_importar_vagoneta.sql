-- delete from containers;
select * from containers order by codi_cont;
select * from containers where codi_acco = 5 order by codi_cont;
select * from containers where nomb_cont like '%BD67%';
select * from containers where exto_cont !=0 order by codi_cont;
select json_agg(codi_cont)::jsonb from containers where exto_cont !=0;
-- pasar a json
select to_json(r) as prueba
from (select * from containers where exto_cont !=0)r

select container_id,images from container;

-- Buscar los lugares
select * from places;

-- Buscar el contenedor
select * from containers where codi_cont = 914236 and codi_acco = 5;

-- Hallar las yardas
select codi_cont,exte_cont,exto_cont,heex_cont,heor_cont,hepi_cont,laex_cont
,laor_cont,lapi_cont,orto_cont,pist_cont,pito_cont,wiex_cont
,wior_cont,wipi_cont,pric_cont
from containers where codi_acco = 5;

select * from category_loads where codi_ctlo = 1;

select codi_scal as Codigo, desc_scal as Descripcion, cateload.desc_ctlo as DescripcionCategoria from public.subcategory_loads left join category_loads as cateload on subcategory_loads.codi_ctlo = cateload.codi_ctlo where codi_scal = 1 order by codi_scal asc

select * from process.operations order by feho_oper;
select * from process.operation_details;
select * from process.operation_details where codi_cont = 723;

select * from containers where codi_acco = 5 and codi_cont =723 order by codi_cont;

-- Buscar la ultima operacion del contenedor
select * from process.operation_details where codi_cont=723 order by created_at desc limit 1;

delete from process.operation_details; 
delete from process.operations; 

update places set codi_acco = 5;

select * from process.operations 
where codi_acco = '5' 
and created_at >='2019-03-18' order by codi_oper;

select "oper"."codi_oper" as "Codigo", "oper"."feho_oper" as "FechaHora", "oper"."reci_oper" as "Recibo", "oper"."obse_oper" as "Observaciones", "oper"."codi_acco" as "Cuenta", "oper"."codi_user" as "Usuario", "oper"."created_at" as "FechaCreacion" from "process"."operations" as "oper" where "oper"."codi_acco" = 5 and "oper"."created_at"::date = '2019-03-18'

select * from containers;

-- Importar data de vagonetas
copy containers(codi_cont,nomb_cont,desc_cont,codi_clco,lati_cont,long_cont,tagx_cont,tama_cont,capa_cont,pebr_cont,alto_cont,anch_cont,prof_cont,foto_cont,stat_cont,deleted,codi_acco,codi_user,created_at,updated_at,peco_cont,exte_cont,exto_cont,heex_cont,heor_cont,hepi_cont,laex_cont,laor_cont,lapi_cont,orto_cont,pist_cont,pito_cont,wiex_cont,wior_cont,wipi_cont,pric_cont)
from '/home/zippyttech/Documentos/2019/areneracontainer/container_import.csv'
delimiter ','
csv header;

-- Importar data de contenedores 
copy containers(codi_cont,nomb_cont,desc_cont,codi_clco,lati_cont,long_cont,tagx_cont,tama_cont,capa_cont,pebr_cont,alto_cont,anch_cont,prof_cont,foto_cont,stat_cont,deleted,codi_acco,codi_user,created_at,updated_at,peco_cont,exte_cont,exto_cont,heex_cont,heor_cont,hepi_cont,laex_cont,laor_cont,lapi_cont,orto_cont,pist_cont,pito_cont,wiex_cont,wior_cont,wipi_cont,pric_cont)
from '/home/zippyttech/Documentos/2019/containers/containers_import.csv'
delimiter ','
csv header;