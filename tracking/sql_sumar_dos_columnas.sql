select * from process.operations;
select * from process.operations_details;
select opde_codi,opde_peso,opde_cant,sum(opde_peso+opde_cant) from process.operations_details
group by opde_codi order by opde_codi;