SELECT 
  operations.oper_codi, 
  operations.oper_fein, 
  operations.cust_dnic, 
  operations.oper_diff, 
  operations.marg_err, 
  operations.cant_diff, 
  operations.closed, 
  customers.cust_nomb, 
  operations_details.serv_codi, 
  operations_details.opde_cant, 
  operations_details.opde_peso, 
  operations_details.opde_obse, 
  operations_details_output.serv_codi, 
  operations_details_output.opde_cant, 
  operations_details_output.opde_peso, 
  operations_details_output.opde_obse
FROM 
  public.customers, 
  process.operations, 
  process.operations_details, 
  process.operations_details_output
WHERE 
  operations.cust_dnic = customers.cust_dnic AND
  operations_details.oper_codi = operations.oper_codi AND
  operations_details_output.oper_codi = operations.oper_codi;

