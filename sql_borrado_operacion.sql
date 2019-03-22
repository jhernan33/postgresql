select * from drivers;
delete from drivers where dri_dni = '444444';
select * from process.operations where dri_dni = '444444';

--Borrado de una operacion
delete from process.tracking_process where opde_codi = 376;
delete from process.operations_details_output where oper_codi = 206;
delete from process.operations_details where oper_codi = 206;
delete from process.operations where oper_codi = 206;
delete from drivers where dri_dni = '444444';


-- select * from users where id  = 27;
-- delete from users where id = 27;
-- select * from notifications ;
-- delete from notifications;