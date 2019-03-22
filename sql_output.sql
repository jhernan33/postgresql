select odo.opde_codi,odo.oper_codi,odo.serv_codi,odo.opde_cant,odo.opde_peso,o.closed 
from process.operations_details_output as odo
left outer join process.operations as o on odo.oper_codi = o.oper_codi; 