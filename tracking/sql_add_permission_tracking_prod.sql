select * from users;
select * from roles;

select * from tables;
delete from tables;

select * from permissions;
delete from permissions;

select * from permissions where name='index.table';

delete from permission_role;
select * from permission_role where role_id = 1;

INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (17, 'Estatus', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (20, 'Configuracion Regional', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (23, 'Respaldo', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (24, 'Reporte', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (25, 'Estaciones de Tracking', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (27, 'Notificaciones', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (16, 'Cuentas', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (31, 'Conductores', true, false, '2018-06-14 07:56:57', '2018-06-14 07:56:57');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (1, 'Dashboard', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (2, 'Clientes', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (3, 'Servicios', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (4, 'Vehiculos', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (5, 'Conductores', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (8, 'En Curso', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (9, 'Por Evaluar', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (10, 'Procesadas', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (11, 'Reportes Automáticos', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (12, 'Usuarios', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (13, 'Roles', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (14, 'Permisos', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (15, 'Roles y Permisos', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (30, 'No Usados', false, false, '2018-06-13 14:27:31', '2018-06-13 14:33:52');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (28, 'Modulos', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (6, 'Registrar Entradas', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (7, 'Registrar Salidas', true, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (18, 'Marcas', false, false, '2018-06-13 12:56:47', '2018-06-25 13:32:25');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (19, 'Modelos', false, false, '2018-06-13 12:56:47', '2018-06-25 13:32:36');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (32, 'Asignar Permisos', true, false, '2018-06-14 13:20:05', '2018-06-14 14:08:41');
INSERT INTO public.tables (id, description, enable, disable, created_at, updated_at) VALUES (26, 'Operaciones', false, false, '2018-06-13 12:56:47', '2018-06-13 12:56:47');


INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (108, NULL, 'index operationdetail', 'index.operationdetail', 'Listar el Detalle de las Operaciones', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (103, NULL, 'show operation', 'show.operation', 'Mostrar una Operacion', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (104, NULL, 'update operation', 'update.operation', 'Actualizar una Operacion', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (105, NULL, 'delete operation', 'delete.operation', 'Borrar una Operacion', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (107, NULL, 'index operation', 'index.operation', 'Listar las Operaciones', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (109, NULL, 'store operationdetail', 'store.operationdetail', 'Guardar el Detalle de las Operaciones', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (110, NULL, 'delete operationdetail', 'delete.operationdetail', 'Eliminar el Detalle de las Operaciones', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (111, NULL, 'update operationdetail', 'update.operationdetail', 'Actualizar el Detalle de las Operaciones', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (116, NULL, 'index automatic_mail', 'index.automatic_mail', 'listar usuarios', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 11);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (117, NULL, 'update automatic_mail', 'update.automatic_mail', 'listar usuarios', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 11);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (118, NULL, 'show automatic_mail', 'show.automatic_mail', 'listar usuarios', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 11);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (119, NULL, 'store automatic_mail', 'store.automatic_mail', 'listar usuarios', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 11);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (121, NULL, 'index notification', 'index.notification', 'Listar las Notificaciones', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 27);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (122, NULL, 'update notification', 'update.notification', 'Update las Notificaciones', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 27);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (123, NULL, 'show notification', 'show.notification', 'Update las Notificaciones', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 27);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (124, NULL, 'store notification', 'store.notification', 'Update las Notificaciones', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 27);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (125, NULL, 'delete notification', 'delete.notification', 'Update las Notificaciones', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 27);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (128, NULL, 'index.table', 'index.table', 'Listar las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (129, NULL, 'update.table', 'update.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (130, NULL, 'show.table', 'show.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (131, NULL, 'store.table', 'store.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (132, NULL, 'delete.table', 'delete.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (106, NULL, 'store operation', 'store.operation', 'Guardar una Operacion', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 26);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (120, NULL, 'delete automatic_mail', 'delete.automatic_mail', 'listar usuarios', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 11);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (163, 'delete.evaluate', 'delete.evaluate', 'delete.evaluate', 'Borrar la Operacion por Evaluar', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 9);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (164, 'index.processed', 'index.processed', 'index.processed', 'Index de Operaciones Procesadas', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 10);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (165, 'show.processed', 'show.processed', 'show.processed', 'Mostrar la Operacion Procesadas', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 10);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (166, 'store.processed', 'store.processed', 'store.processed', 'Guardar la Operacion Procesadas', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 10);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (167, 'update.processed', 'update.processed', 'update.processed', 'Actualizar la Operacion Procesadas', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 10);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (168, 'delete.processed', 'delete.processed', 'delete.processed', 'Borrar la Operacion Procesadas', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 10);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (134, NULL, 'update driver 5', 'update.driver 5', 'Conductores', false, false, '2018-06-14 07:46:13', '2018-06-14 09:38:33', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (133, NULL, 'update driver 4', 'update.driver 4', 'Conductores', false, false, '2018-06-14 07:34:10', '2018-06-14 11:21:08', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (137, NULL, 'nuevo clien mod', 'nuevo clien mod', NULL, false, false, '2018-06-14 10:41:15', '2018-06-14 11:21:43', 2);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (140, NULL, 'show.servicios', 'index.servicios', 'se podrá modificar la tabla inmodificable', false, false, '2018-06-14 12:20:21', '2018-06-25 15:19:08', 3);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (142, NULL, 'index.estatus', 'index.estatus', 'listar status', false, false, '2018-06-26 07:25:06', '2018-06-26 07:25:16', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (143, NULL, 'show.estatus', 'show.estatus', 'mostrar por id estatus', false, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (169, 'index.dashboard', 'index.dashboard', 'index.dashboard', 'Listar el Tablero', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 1);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (170, 'show.dashboard', 'show.dashboard', 'show.dashboard', 'Mostrar el Tablero', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 1);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (171, 'store.dashboard', 'store.dashboard', 'store.dashboard', 'Mostrar el Tablero', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 1);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (172, 'update.dashboard', 'update.dashboard', 'update.dashboard', 'Mostrar el Tablero', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 1);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (173, 'delete.dashboard', 'delete.dashboard', 'delete.dashboard', 'Mostrar el Tablero', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 1);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (179, 'index.assign permission', 'index.assign permission', 'index.assign permission', 'Listar los Permisos Asignados', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 32);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (180, 'show.assign permission', 'show.assign permission', 'show.assign permission', 'Mostrar el Permiso Asignado', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 32);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (181, 'store.assign permission', 'store.assign permission', 'store.assign permission', 'Guardar el Permiso Asignado', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 32);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (182, 'update.assign permission', 'update.assign permission', 'update.assign permission', 'Actualizar el Permiso Asignado', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 32);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (183, 'delete.assign permission', 'delete.assign permission', 'delete.assign permission', 'Borrar el Permiso Asignado', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 32);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (175, 'show.module', 'show.module', 'show.module', 'Mostrar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (176, 'store.table', 'store.module', 'store.module', 'Guardar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (177, 'update.table', 'update.module', 'update.module', 'Actualizar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (178, 'delete.table', 'delete.module', 'delete.module', 'Borrar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (174, 'index.module', 'index.module', 'index.module', 'Listar los Modulos', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);

select * from permissions;

-- Permisos de Operation
insert into permission_role(permission_id,role_id) values(103,1);
insert into permission_role(permission_id,role_id) values(104,1);
insert into permission_role(permission_id,role_id) values(105,1);
insert into permission_role(permission_id,role_id) values(106,1);
insert into permission_role(permission_id,role_id) values(107,1);
-- Permisos de OperationDetail
insert into permission_role(permission_id,role_id) values(108,1);
insert into permission_role(permission_id,role_id) values(109,1);
insert into permission_role(permission_id,role_id) values(110,1);
insert into permission_role(permission_id,role_id) values(111,1);
-- Permisos de Correo Automatic
insert into permission_role(permission_id,role_id) values(116,1);
insert into permission_role(permission_id,role_id) values(117,1);
insert into permission_role(permission_id,role_id) values(118,1);
insert into permission_role(permission_id,role_id) values(119,1);
insert into permission_role(permission_id,role_id) values(120,1);
-- Permisos de Notification
insert into permission_role(permission_id,role_id) values(121,1);
insert into permission_role(permission_id,role_id) values(122,1);
insert into permission_role(permission_id,role_id) values(123,1);
insert into permission_role(permission_id,role_id) values(124,1);
insert into permission_role(permission_id,role_id) values(125,1);
-- Permisos de Tables
insert into permission_role(permission_id,role_id) values(128,1);
insert into permission_role(permission_id,role_id) values(129,1);
insert into permission_role(permission_id,role_id) values(130,1);
insert into permission_role(permission_id,role_id) values(131,1);
insert into permission_role(permission_id,role_id) values(132,1);
-- Permisos de Entry
insert into permission_role(permission_id,role_id) values(144,1);
insert into permission_role(permission_id,role_id) values(145,1);
insert into permission_role(permission_id,role_id) values(146,1);
insert into permission_role(permission_id,role_id) values(147,1);
insert into permission_role(permission_id,role_id) values(148,1);
-- Permisos de Output
insert into permission_role(permission_id,role_id) values(149,1);
insert into permission_role(permission_id,role_id) values(150,1);
insert into permission_role(permission_id,role_id) values(151,1);
insert into permission_role(permission_id,role_id) values(152,1);
insert into permission_role(permission_id,role_id) values(153,1);
-- Permisos de Pending
insert into permission_role(permission_id,role_id) values(154,1);
insert into permission_role(permission_id,role_id) values(155,1);
insert into permission_role(permission_id,role_id) values(156,1);
insert into permission_role(permission_id,role_id) values(157,1);
insert into permission_role(permission_id,role_id) values(158,1);
-- Permisos de Evaluate
insert into permission_role(permission_id,role_id) values(159,1);
insert into permission_role(permission_id,role_id) values(160,1);
insert into permission_role(permission_id,role_id) values(161,1);
insert into permission_role(permission_id,role_id) values(162,1);
insert into permission_role(permission_id,role_id) values(163,1);
-- Permisos de Processed
insert into permission_role(permission_id,role_id) values(164,1);
insert into permission_role(permission_id,role_id) values(165,1);
insert into permission_role(permission_id,role_id) values(166,1);
insert into permission_role(permission_id,role_id) values(167,1);
insert into permission_role(permission_id,role_id) values(168,1);
-- Permisos de Dashboard
insert into permission_role(permission_id,role_id) values(169,1);
insert into permission_role(permission_id,role_id) values(170,1);
insert into permission_role(permission_id,role_id) values(171,1);
insert into permission_role(permission_id,role_id) values(172,1);
insert into permission_role(permission_id,role_id) values(173,1);
-- Permisos de Module
insert into permission_role(permission_id,role_id) values(174,1);
insert into permission_role(permission_id,role_id) values(175,1);
insert into permission_role(permission_id,role_id) values(176,1);
insert into permission_role(permission_id,role_id) values(177,1);
insert into permission_role(permission_id,role_id) values(178,1);
-- Permisos de Assign
insert into permission_role(permission_id,role_id) values(179,1);
insert into permission_role(permission_id,role_id) values(180,1);
insert into permission_role(permission_id,role_id) values(181,1);
insert into permission_role(permission_id,role_id) values(182,1);
insert into permission_role(permission_id,role_id) values(183,1);


select * from permission_role where role_id = 1;
update permission_role set enable = 'false' where permission_id in(51,52,53,54,55);
delete from permission_role where permission_id in(51,52,53,54,55);

select * from tables order by id;
update tables set enable = 'false' where id = 20;

select * from permissions order by id;
select * from permission_role where role_id = 1;