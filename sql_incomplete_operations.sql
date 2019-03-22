select a.*,b.*,c.*,d.*,e.*
from process.operations as a join customers b on a.cust_dnic = b.cust_dnic
join drivers as c on a.dri_dni = c.dri_dni
join process.operations_details as d on d.oper_codi = a.oper_codi
join services as e on d.serv_codi = e.serv_codi