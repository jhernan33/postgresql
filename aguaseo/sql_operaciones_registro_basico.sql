-- select * from process.operations
INSERT INTO process.operations(
             feho_oper,codi_acco, codi_user)
    VALUES ( '2018-02-20', '2', '1');

-- select * from process.operation_details;
insert into process.operation_details(codi_oper,cate_deop,codi_ctlo,codi_acco,codi_user,codi_clie,codi_plac)
values(1,'entrada',2,'2','1','123456',1); 