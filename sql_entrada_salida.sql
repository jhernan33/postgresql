--- agrupado de las entradas de una operacion cantidad
select outputs.serv_sal,outputs.cantidad_sub_sal, outputs.peso_sub_sal, outputs.marge_sal,
inputs.serv_ent, inputs.cantidad_sub_ent, inputs.peso_sub_ent, inputs.marge_ent
 from
----
(select de.serv_codi as serv_sal, SUM(opde_cant) AS cantidad_sub_sal, SUM(opde_peso) AS peso_sub_sal,serv.serv_maer as marge_sal from
 process.operations_details_output as de inner join public.services as serv on de.serv_codi = serv.serv_codi
 where oper_codi = 11
 group by  de.serv_codi, serv.serv_codi,serv.serv_codi,serv.serv_maer) outputs,
--------------------------------------------------------------------------------------------------------------
( select de.serv_codi as serv_ent, SUM(opde_cant) AS cantidad_sub_ent, SUM(opde_peso) AS peso_sub_ent,serv.serv_maer as marge_ent from
 process.operations_details as de inner join public.services as serv on de.serv_codi = serv.serv_codi
 where oper_codi = 11
 group by  de.serv_codi, serv.serv_codi,serv.serv_codi,serv.serv_maer
) inputs;

 --UNION
 ---agrupado de las salidas de una operacion
 /*
  select de.serv_codi as serv_sal, SUM(opde_cant) AS cantidad_sub_sal, SUM(opde_peso) AS peso_sub_sal,serv.serv_maer from
 process.operations_details_output as de inner join public.services as serv on de.serv_codi = serv.serv_codi
 where oper_codi = 11
 group by  de.serv_codi, serv.serv_codi,serv.serv_codi,serv.serv_maer
 */