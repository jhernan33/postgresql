select * from process.operation_details;

-- Description table
select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'operation_details';

-- Addicionar campos de cliente y lugar
alter table process.operation_details add column codi_clie character varying(15);
comment on column process.operation_details.codi_clie is'Codigo del Cliente';
alter table process.operation_details add column codi_luga character varying(15);
comment on column process.operation_details.codi_luga is 'Codigo del Lugar';

alter table process.operation_details drop column codi_clie;
alter table process.operation_details drop column codi_luga;