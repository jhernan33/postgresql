select * from containers;
select * from containers_codi_cont_seq;
-- Realizar la carga masiva
delete from containers;


-- Cargar los contenedores csv
delete from containers;
select setval('public.containers_codi_cont_seq',199);
copy containers(nomb_cont,codi_acco,codi_user,peco_cont)
from '/home/zippyttech/Documentos/datos/vertedero/03-12-2018/contenedores03-12-2018_arreglado.csv' 
delimiter ',' csv;
select setval('public.containers_codi_cont_seq',269);