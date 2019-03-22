select * from process.operation_details 
select * from parameters;
update parameters set deleted = true where codi_para = 1;
update parameters set deleted = false where codi_para = 2;

select * from containers;
-- Importar data de vagonetas
copy containers(codi_cont,nomb_cont,desc_cont,codi_clco,lati_cont,long_cont,tagx_cont,tama_cont,capa_cont,pebr_cont,alto_cont,anch_cont,prof_cont,images,stat_cont,deleted,codi_acco,codi_user,created_at,updated_at,peco_cont,exte_cont,exto_cont,exhe_cont,heor_cont,hepi_cont,laex_cont,laor_cont,lapi_cont,orto_cont,pist_cont,pito_cont,wiex_cont,wior_cont,wipi_cont,pric_cont)
from '/home/zippyttech/Documentos/2019/areneracontainer/container_import.csv'
delimiter ','
csv header;