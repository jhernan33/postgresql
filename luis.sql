select process.operations.oper_codi, process.operations.oper_fein, process.operations.oper_fefi,
 c.cust_nomb, process.operations.oper_obse, serv.serv_desc, serv.serv_codi, process.operations.cant_diff,
  process.operations.oper_diff, process.operations.marg_err
   from process.operations
    inner join customers as c on process.operations.cust_dnic = c.cust_dnic 
    inner join drivers as d on process.operations.dri_dni = d.dri_dni 
    inner join process.operations_details as de on de.oper_codi = process.operations.oper_codi
     inner join services as serv on de.serv_codi = serv.serv_codi
      where process.operations.cant_diff <> 0 or process.operations.oper_diff > process.operations.marg_err
       group by process.operations.oper_codi, process.operations.oper_fein, process.operations.oper_fefi, c.cust_nomb, process.operations.oper_obse, 
       serv.serv_desc, serv.serv_codi, process.operations.cant_diff, process.operations.oper_diff, process.operations.marg_err
        order by process.operations.oper_codi asc

        select * from customers