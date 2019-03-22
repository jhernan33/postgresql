alter table public.oscar13_11_2018 add column peco_cont double precision;
comment on column oscar13_11_2018.peco_cont is 'Precio Contratado';

alter table public.oscar13_11_2018 drop column if exists peco_cont;