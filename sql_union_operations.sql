select de.serv_codi as serv_sal, SUM(opde_cant) AS cantidad_sub_sal, SUM(opde_peso) AS peso_sub_sal,serv.serv_maer as marge_sal from
 process.operations_details_output as de inner join public.services as serv on de.serv_codi = serv.serv_codi
 where oper_codi = 11
 group by  de.serv_codi, serv.serv_codi,serv.serv_codi,serv.serv_maer

 --union
 --intersect
 --except
--------------------------------------------------------------------------------------------------------------
select de.serv_codi as serv_ent, SUM(opde_cant) AS cantidad_sub_ent, SUM(opde_peso) AS peso_sub_ent,serv.serv_maer as marge_ent from
 process.operations_details as de inner join public.services as serv on de.serv_codi = serv.serv_codi
 where oper_codi = 11
 group by  de.serv_codi, serv.serv_codi,serv.serv_codi,serv.serv_maer
 