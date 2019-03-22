select * from public.drivers;

INSERT INTO public.drivers(
            pers_cedu, pers_nomb, pers_apel, pers_sexo, nati_codi, pers_fena, 
            pers_edoc, driv_codi, driv_foto, driv_dire, driv_dial, driv_temo, 
            driv_coel, stat_codi, driv_eras)
    VALUES (14502336, 'Jorland', 'Delgado', 'masculino', 1, '1973-01-01', 
            'soltero', 'dr0014502', '','San Cristobal', 'casa', '0426', 
            'jorland33@gmail.com', 1, 'false');

-- Datos de persons
select * from public.persons;
INSERT INTO public.persons(
            pers_cedu, pers_nomb, pers_apel, pers_sexo, nati_codi, pers_fena, 
            pers_edoc)
    VALUES (13506468, 'Hernan', 'Varela', 'masculino', 1, '1978-11-16', 
            'soltero');

select * from public.nationalitys;
insert into public.nationalitys values(1,'Venezolano',false);

select * from public.status;
insert into public.status values(1,'operativo',false,1);

