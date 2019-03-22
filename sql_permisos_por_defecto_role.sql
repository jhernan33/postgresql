select * from roles where id = 2
select * from permission_role where role_id = 2
-- Buscar los roles activos
select * from roles where enable = true;

-- Role Supervisor 
select * from roles where id = 34; 
select * from permission_role where role_id = 1;
-- Listar los permissions
select * from permissions order by id;
select * from permissions where name ='index.table' order by id;
select * from permissions where id > 127 order by id;

-- Restaurar los Modulos por Defecto 
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

-- Restaurar los Permisos por defecto
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (144, 'index.entry', 'index.entry', 'index.entry', 'Mostrar todas las Entradas', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 6);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (145, 'show.entry', 'show.entry', 'show.entry', 'Mostrar la Entrada', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 6);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (146, 'store.entry', 'store.entry', 'store.entry', 'Crear la Entrada', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 6);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (147, 'update.entry', 'update.entry', 'update.entry', 'Actualizar la Entrada', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 6);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (148, 'delete.entry', 'delete.entry', 'delete.entry', 'Eliminar la Entrada', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 6);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (149, 'index.output', 'index.output', 'index.output', 'Index de Salida', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 7);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (150, 'show.output', 'show.output', 'show.output', 'Show de Salida', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 7);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (151, 'store.output', 'store.output', 'store.output', 'Guardar de Salida', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 7);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (152, 'update.output', 'update.output', 'update.output', 'Actualizar Salida', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 7);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (153, 'delete.output', 'delete.output', 'delete.output', 'Borrar Salida', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 7);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (154, 'index.pending', 'index.pending', 'index.pending', 'Index de Operaciones en Curso', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 8);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (13, NULL, 'show.status', 'show.status', 'mostrar un status', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (6, NULL, 'index.account', 'index.account', 'listar.account', true, false, '2018-04-13 17:40:16', '2018-06-25 11:58:16', 16);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (7, NULL, 'update.account', 'update.account', 'actualizar.account', true, false, '2018-04-13 17:40:16', '2018-06-25 11:58:28', 16);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (8, NULL, 'show.account', 'show.account', 'mostrar un account', true, false, '2018-04-13 17:40:17', '2018-06-25 13:56:45', 16);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (14, NULL, 'store.status', 'store.status', 'guardar un status', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (15, NULL, 'delete status', 'delete.status', 'borrar status', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (16, NULL, 'index driver', 'index.driver', 'listar driver', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (17, NULL, 'update driver', 'update.driver', 'actualizar driver', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (18, NULL, 'show driver', 'show.driver', 'mostrar un driver', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (19, NULL, 'store driver', 'store.driver', 'guardar un driver', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (51, NULL, 'index regional_configuration', 'index.regional_configuration', 'listar regional_configuration', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 20);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (52, NULL, 'update regional_configuration', 'update.regional_configuration', 'actualizar regional_configuration', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 20);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (53, NULL, 'show regional_configuration', 'show.regional_configuration', 'mostrar un regional_configuration', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 20);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (54, NULL, 'store regional_configuration', 'store.regional_configuration', 'guardar un regional_configuration', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 20);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (55, NULL, 'delete regional_configuration', 'delete.regional_configuration', 'borrar regional_configuration', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 20);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (66, NULL, 'index role', 'index.role', 'listar role', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 13);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (67, NULL, 'update role', 'update.role', 'actualizar role', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 13);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (68, NULL, 'show role', 'show.role', 'mostrar un role', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 13);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (69, NULL, 'store role', 'store.role', 'guardar un role', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 13);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (70, NULL, 'delete role', 'delete.role', 'borrar role', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 13);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (71, NULL, 'index permission', 'index.permission', 'listar permission', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 14);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (72, NULL, 'update permission', 'update.permission', 'actualizar permission', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 14);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (73, NULL, 'show permission', 'show.permission', 'mostrar un permission', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 14);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (3, NULL, 'show.user', 'show.user', 'mostrar un usuario', true, false, '2018-04-13 17:40:16', '2018-06-25 11:57:22', 12);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (11, NULL, 'index.status', 'index.status', 'listar status', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (12, NULL, 'update.status', 'update.status', 'actualizar status', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 17);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (155, 'show.pending', 'show.pending', 'show.pending', 'Mostrar la Operacione en Curso', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 8);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (156, 'store.pending', 'store.pending', 'store.pending', 'Guardar la Operacion en Curso', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 8);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (157, 'update.pending', 'update.pending', 'update.pending', 'Actualizar la Operacion en Curso', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 8);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (158, 'delete.pending', 'delete.pending', 'delete.pending', 'Borrar la Operacion en Curso', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 8);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (159, 'index.evaluate', 'index.evaluate', 'index.evaluate', 'Index de Operaciones por Evaluar', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 9);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (160, 'show.evaluate', 'show.evaluate', 'show.evaluate', 'Mostrar la Operacion por Evaluar', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 9);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (21, NULL, 'index brand_vehicle', 'index.brand_vehicle', 'listar brand_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 18);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (22, NULL, 'update brand_vehicle', 'update.brand_vehicle', 'actualizar brand_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 18);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (23, NULL, 'show brand_vehicle', 'show.brand_vehicle', 'mostrar un brand_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 18);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (24, NULL, 'store brand_vehicle', 'store.brand_vehicle', 'guardar un brand_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 18);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (161, 'store.evaluate', 'store.evaluate', 'store.evaluate', 'Guardar la Operacion por Evaluar', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 9);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (162, 'update.evaluate', 'update.evaluate', 'update.evaluate', 'Actualizar la Operacion por Evaluar', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 9);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (127, 'rusia m user', 'rusia m user', 'rusia m user', 'rusia m usuarios', false, false, '2018-06-12 14:13:34', '2018-06-12 14:54:53', 12);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (20, NULL, 'delete driver', 'delete.driver', 'borrar driver', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 5);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (36, NULL, 'index vehicle', 'index.vehicle', 'listar vehicle', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 4);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (37, NULL, 'update vehicle', 'update.vehicle', 'actualizar vehicle', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 4);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (74, NULL, 'store permission', 'store.permission', 'guardar un permission', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 14);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (75, NULL, 'delete permission', 'delete.permission', 'borrar permission', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 14);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (86, NULL, 'run backup', 'run.backup', 'generar backup de la base de datos', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 23);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (87, NULL, 'index.report', 'index.report', 'ver los reportes', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 24);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (88, NULL, 'index customer', 'index.customer', 'ver los Clientes', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 2);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (89, NULL, 'update customer', 'update.customer', 'Actualizar los Clientes', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 2);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (90, NULL, 'delete customer', 'delete.customer', 'Borrar los Clientes', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 2);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (91, NULL, 'store.customer', 'store.customer', 'Nuevo los Clientes', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 2);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (96, NULL, 'show customer', 'show.customer', 'Mostrar Un Cliente en Especifico', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 2);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (92, NULL, 'index.service', 'index.service', 'Listar los Servicios', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 3);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (93, NULL, 'store.service', 'store.service', 'Guardar los Servicios', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 3);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (94, NULL, 'update.service', 'update.service', 'Actualizar los Servicios', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 3);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (95, NULL, 'delete.service', 'delete.service', 'Eliminar los Servicios', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 3);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (98, NULL, 'show stages', 'show.stages', 'Mostrar Un Etapa en Especifico', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 25);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (99, NULL, 'update stages', 'update.stages', 'Actualizar Un Etapa en Especifica', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 25);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (100, NULL, 'delete stages', 'delete.stages', 'Mostrar Un Etapa en Especifica', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 25);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (101, NULL, 'store stages', 'store.stages', 'Guardar Un Etapa', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 25);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (102, NULL, 'index stages', 'index.stages', 'Listar Un Etapa', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 25);
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
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (1, NULL, 'index.user', 'index.user', 'Usuarios todos los permisos', true, false, '2018-04-13 17:40:16', '2018-06-19 07:11:28', 12);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (2, NULL, 'update.user', 'update.user', 'Actualizar Usuarios', true, false, '2018-04-13 17:40:16', '2018-06-25 10:19:13', 12);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (4, NULL, 'store.user', 'store.user', 'guardar un usuario', true, false, '2018-04-13 17:40:16', '2018-06-25 11:57:37', 12);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (5, NULL, 'delete.user', 'delete.user', 'borrar usuario', true, false, '2018-04-13 17:40:16', '2018-06-25 11:57:48', 12);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (9, NULL, 'store.account', 'store.account', 'mostrar un account', true, false, '2018-04-13 17:40:17', '2018-06-26 07:24:16', 16);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (10, NULL, 'delete.account', 'delete.account', 'borrar account', true, false, '2018-04-13 17:40:17', '2018-06-26 10:33:10', 16);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (128, NULL, 'index.table', 'index.table', 'Listar las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (129, NULL, 'update.table', 'update.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (130, NULL, 'show.table', 'show.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (131, NULL, 'store.table', 'store.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (132, NULL, 'delete.table', 'delete.table', 'Update las Tablas', true, false, '2018-04-13 17:40:16', '2018-04-13 17:40:16', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (38, NULL, 'show vehicle', 'show.vehicle', 'mostrar un vehicle', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 4);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (39, NULL, 'store vehicle', 'store.vehicle', 'guardar un vehicle', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 4);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (40, NULL, 'delete vehicle', 'delete.vehicle', 'borrar vehicle', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 4);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (97, NULL, 'show service', 'show.service', 'Mostrar Un Servicio en Especifico', true, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 3);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (26, NULL, 'index model_vehicle', 'index.model_vehicle', 'listar model_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 19);
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
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (61, NULL, 'index city', 'index.city', 'listar city', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 22);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (62, NULL, 'update city', 'update.city', 'actualizar city', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 22);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (63, NULL, 'show city', 'show.city', 'mostrar un city', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 22);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (64, NULL, 'store city', 'store.city', 'guardar un city', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 22);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (65, NULL, 'delete city', 'delete.city', 'borrar city', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 22);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (60, NULL, 'delete countrie', 'delete.countrie', 'borrar countrie', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 21);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (25, NULL, 'delete brand_vehicle', 'delete.brand_vehicle', 'borrar brand_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 18);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (27, NULL, 'update model_vehicle', 'update.model_vehicle', 'actualizar model_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 19);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (28, NULL, 'show model_vehicle', 'show.model_vehicle', 'mostrar un model_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 19);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (29, NULL, 'store model_vehicle', 'store.model_vehicle', 'guardar un model_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 19);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (30, NULL, 'delete model_vehicle', 'delete.model_vehicle', 'borrar model_vehicle', false, false, '2018-04-13 17:40:17', '2018-04-13 17:40:17', 19);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (175, 'show.module', 'show.module', 'show.module', 'Mostrar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (176, 'store.table', 'store.module', 'store.module', 'Guardar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (177, 'update.table', 'update.module', 'update.module', 'Actualizar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (178, 'delete.table', 'delete.module', 'delete.module', 'Borrar el Modulo', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);
INSERT INTO public.permissions (id, code, name, slug, description, enable, disable, created_at, updated_at, id_table) VALUES (174, 'index.module', 'index.module', 'index.module', 'Listar los Modulos', true, false, '2018-06-26 07:38:37', '2018-06-26 07:38:52', 28);

-- Valores por defecto para el rol de SUPERVISOR
delete from permission_role where role_id = 34;
-- Permisos de Dashboard
insert into permission_role(permission_id,role_id) values(170,34);
insert into permission_role(permission_id,role_id) values(171,34);
-- Permisos de clientes
insert into permission_role(permission_id,role_id) values(88,34); -- index cust
insert into permission_role(permission_id,role_id) values(89,34); -- update
insert into permission_role(permission_id,role_id) values(90,34); -- delete
insert into permission_role(permission_id,role_id) values(91,34); -- store
insert into permission_role(permission_id,role_id) values(96,34); -- show
-- Permisos de servicios
insert into permission_role(permission_id,role_id) values(92,34);
insert into permission_role(permission_id,role_id) values(93,34);
insert into permission_role(permission_id,role_id) values(94,34);
insert into permission_role(permission_id,role_id) values(95,34);
insert into permission_role(permission_id,role_id) values(97,34);
-- Permisos de Vehiculos
insert into permission_role(permission_id,role_id) values(36,34);
insert into permission_role(permission_id,role_id) values(37,34);
insert into permission_role(permission_id,role_id) values(38,34);
insert into permission_role(permission_id,role_id) values(39,34);
insert into permission_role(permission_id,role_id) values(40,34);
-- Permisos de Conductores
insert into permission_role(permission_id,role_id) values(16,34);
insert into permission_role(permission_id,role_id) values(17,34);
insert into permission_role(permission_id,role_id) values(18,34);
insert into permission_role(permission_id,role_id) values(19,34);
insert into permission_role(permission_id,role_id) values(20,34);
-- Permisos de Operation
insert into permission_role(permission_id,role_id) values(103,34);
insert into permission_role(permission_id,role_id) values(104,34);
insert into permission_role(permission_id,role_id) values(105,34);
insert into permission_role(permission_id,role_id) values(106,34);
insert into permission_role(permission_id,role_id) values(107,34);
-- Permisos de Operation detail
insert into permission_role(permission_id,role_id) values(108,34);
insert into permission_role(permission_id,role_id) values(109,34);
insert into permission_role(permission_id,role_id) values(110,34);
insert into permission_role(permission_id,role_id) values(111,34);
-- Permisos de Entrada
insert into permission_role(permission_id,role_id) values(144,34);
insert into permission_role(permission_id,role_id) values(145,34);
insert into permission_role(permission_id,role_id) values(146,34);
insert into permission_role(permission_id,role_id) values(147,34);
insert into permission_role(permission_id,role_id) values(148,34);
-- Permisos de Salida
insert into permission_role(permission_id,role_id) values(149,34);
insert into permission_role(permission_id,role_id) values(150,34);
insert into permission_role(permission_id,role_id) values(151,34);
insert into permission_role(permission_id,role_id) values(152,34);
insert into permission_role(permission_id,role_id) values(153,34);
-- Permisos de Inspeccion Curso
insert into permission_role(permission_id,role_id) values(154,34);
insert into permission_role(permission_id,role_id) values(155,34);
insert into permission_role(permission_id,role_id) values(156,34);
insert into permission_role(permission_id,role_id) values(157,34);
insert into permission_role(permission_id,role_id) values(158,34);
-- Permisos por Evaluar
insert into permission_role(permission_id,role_id) values(159,34);
insert into permission_role(permission_id,role_id) values(160,34);
insert into permission_role(permission_id,role_id) values(161,34);
insert into permission_role(permission_id,role_id) values(162,34);
insert into permission_role(permission_id,role_id) values(163,34);
-- Permisos Procesadas
insert into permission_role(permission_id,role_id) values(164,34);
insert into permission_role(permission_id,role_id) values(165,34);
insert into permission_role(permission_id,role_id) values(166,34);
insert into permission_role(permission_id,role_id) values(167,34);
insert into permission_role(permission_id,role_id) values(168,34);
-- Permisos de Reportes Automaticos
insert into permission_role(permission_id,role_id) values(116,34);
insert into permission_role(permission_id,role_id) values(117,34);
insert into permission_role(permission_id,role_id) values(118,34);
insert into permission_role(permission_id,role_id) values(119,34);
insert into permission_role(permission_id,role_id) values(120,34);



-- Borrar los permisos de sysadmin
delete from permission_role where role_id = 1;
-- Permisos de User
insert into permission_role(permission_id,role_id) values(1,1);
insert into permission_role(permission_id,role_id) values(2,1);
insert into permission_role(permission_id,role_id) values(3,1);
insert into permission_role(permission_id,role_id) values(4,1);
insert into permission_role(permission_id,role_id) values(5,1);
-- Permisos de Account
insert into permission_role(permission_id,role_id) values(6,1);
insert into permission_role(permission_id,role_id) values(7,1);
insert into permission_role(permission_id,role_id) values(8,1);
insert into permission_role(permission_id,role_id) values(9,1);
insert into permission_role(permission_id,role_id) values(10,1);
-- Permisos de Status
insert into permission_role(permission_id,role_id) values(11,1);
insert into permission_role(permission_id,role_id) values(12,1);
insert into permission_role(permission_id,role_id) values(13,1);
insert into permission_role(permission_id,role_id) values(14,1);
insert into permission_role(permission_id,role_id) values(15,1);
-- Permisos de Driver
insert into permission_role(permission_id,role_id) values(16,1);
insert into permission_role(permission_id,role_id) values(17,1);
insert into permission_role(permission_id,role_id) values(18,1);
insert into permission_role(permission_id,role_id) values(19,1);
insert into permission_role(permission_id,role_id) values(20,1);
-- Permisos de Vehiculo
insert into permission_role(permission_id,role_id) values(36,1);
insert into permission_role(permission_id,role_id) values(37,1);
insert into permission_role(permission_id,role_id) values(38,1);
insert into permission_role(permission_id,role_id) values(39,1);
insert into permission_role(permission_id,role_id) values(40,1);
-- Permisos de Configuracion Regional
insert into permission_role(permission_id,role_id) values(51,1);
insert into permission_role(permission_id,role_id) values(52,1);
insert into permission_role(permission_id,role_id) values(53,1);
insert into permission_role(permission_id,role_id) values(54,1);
insert into permission_role(permission_id,role_id) values(55,1);
-- Permisos de Roles
insert into permission_role(permission_id,role_id) values(66,1);
insert into permission_role(permission_id,role_id) values(67,1);
insert into permission_role(permission_id,role_id) values(68,1);
insert into permission_role(permission_id,role_id) values(69,1);
insert into permission_role(permission_id,role_id) values(70,1);
-- Permisos de Permissions
insert into permission_role(permission_id,role_id) values(71,1);
insert into permission_role(permission_id,role_id) values(72,1);
insert into permission_role(permission_id,role_id) values(73,1);
insert into permission_role(permission_id,role_id) values(74,1);
insert into permission_role(permission_id,role_id) values(75,1);
-- Permisos de Backup
insert into permission_role(permission_id,role_id) values(86,1);
-- Permiso de Reporte
insert into permission_role(permission_id,role_id) values(87,1);
-- Permisos de Customer
insert into permission_role(permission_id,role_id) values(88,1);
insert into permission_role(permission_id,role_id) values(89,1);
insert into permission_role(permission_id,role_id) values(90,1);
insert into permission_role(permission_id,role_id) values(91,1);
insert into permission_role(permission_id,role_id) values(96,1);
-- Permisos de Service
insert into permission_role(permission_id,role_id) values(92,1);
insert into permission_role(permission_id,role_id) values(93,1);
insert into permission_role(permission_id,role_id) values(94,1);
insert into permission_role(permission_id,role_id) values(95,1);
insert into permission_role(permission_id,role_id) values(97,1);
-- Permisos de Stages
insert into permission_role(permission_id,role_id) values(98,1);
insert into permission_role(permission_id,role_id) values(99,1);
insert into permission_role(permission_id,role_id) values(100,1);
insert into permission_role(permission_id,role_id) values(101,1);
insert into permission_role(permission_id,role_id) values(102,1);
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



-- Role Operador Entrada
delete from permission_role where role_id = 13;
-- Permisos de Operation
insert into permission_role(permission_id,role_id) values(103,13);
insert into permission_role(permission_id,role_id) values(104,13);
insert into permission_role(permission_id,role_id) values(105,13);
insert into permission_role(permission_id,role_id) values(106,13);
insert into permission_role(permission_id,role_id) values(107,13);
-- Permisos de Operation detail
insert into permission_role(permission_id,role_id) values(108,13);
insert into permission_role(permission_id,role_id) values(109,13);
insert into permission_role(permission_id,role_id) values(110,13);
insert into permission_role(permission_id,role_id) values(111,13);
--Permisos de Entry
insert into permission_role(permission_id,role_id) values(144,13);
insert into permission_role(permission_id,role_id) values(145,13);
insert into permission_role(permission_id,role_id) values(146,13);
insert into permission_role(permission_id,role_id) values(147,13);
insert into permission_role(permission_id,role_id) values(148,13);



-- Role Operador Salida
delete from permission_role where role_id = 16;
-- Permisos de Operation
insert into permission_role(permission_id,role_id) values(103,16);
insert into permission_role(permission_id,role_id) values(104,16);
insert into permission_role(permission_id,role_id) values(105,16);
insert into permission_role(permission_id,role_id) values(106,16);
insert into permission_role(permission_id,role_id) values(107,16);
-- Permisos de Operation detail
insert into permission_role(permission_id,role_id) values(108,16);
insert into permission_role(permission_id,role_id) values(109,16);
insert into permission_role(permission_id,role_id) values(110,16);
insert into permission_role(permission_id,role_id) values(111,16);
-- Permisos de Output
insert into permission_role(permission_id,role_id) values(149,16);
insert into permission_role(permission_id,role_id) values(150,16);
insert into permission_role(permission_id,role_id) values(151,16);
insert into permission_role(permission_id,role_id) values(152,16);
insert into permission_role(permission_id,role_id) values(153,16);



-- Rol de System
delete from permission_role where role_id = 9999;
-- Permisos de User
insert into permission_role(permission_id,role_id) values(1,9999);
insert into permission_role(permission_id,role_id) values(2,9999);
insert into permission_role(permission_id,role_id) values(3,9999);
insert into permission_role(permission_id,role_id) values(4,9999);
insert into permission_role(permission_id,role_id) values(5,9999);
-- Permisos de Account
insert into permission_role(permission_id,role_id) values(6,9999);
insert into permission_role(permission_id,role_id) values(7,9999);
insert into permission_role(permission_id,role_id) values(8,9999);
insert into permission_role(permission_id,role_id) values(9,9999);
insert into permission_role(permission_id,role_id) values(10,9999);
-- -- Permisos de Status
-- insert into permission_role(permission_id,role_id) values(11,9999);
-- insert into permission_role(permission_id,role_id) values(12,9999);
-- insert into permission_role(permission_id,role_id) values(13,9999);
-- insert into permission_role(permission_id,role_id) values(14,9999);
-- insert into permission_role(permission_id,role_id) values(15,9999);
-- -- Permisos de Driver
-- insert into permission_role(permission_id,role_id) values(16,9999);
-- insert into permission_role(permission_id,role_id) values(17,9999);
-- insert into permission_role(permission_id,role_id) values(18,9999);
-- insert into permission_role(permission_id,role_id) values(19,9999);
-- insert into permission_role(permission_id,role_id) values(20,9999);
-- -- Permisos de Vehiculo
-- insert into permission_role(permission_id,role_id) values(36,9999);
-- insert into permission_role(permission_id,role_id) values(37,9999);
-- insert into permission_role(permission_id,role_id) values(38,9999);
-- insert into permission_role(permission_id,role_id) values(39,9999);
-- insert into permission_role(permission_id,role_id) values(40,9999);
-- -- Permisos de Configuracion Regional
-- insert into permission_role(permission_id,role_id) values(51,9999);
-- insert into permission_role(permission_id,role_id) values(52,9999);
-- insert into permission_role(permission_id,role_id) values(53,9999);
-- insert into permission_role(permission_id,role_id) values(54,9999);
-- insert into permission_role(permission_id,role_id) values(55,9999);
-- Permisos de Roles
insert into permission_role(permission_id,role_id) values(66,9999);
insert into permission_role(permission_id,role_id) values(67,9999);
insert into permission_role(permission_id,role_id) values(68,9999);
insert into permission_role(permission_id,role_id) values(69,9999);
insert into permission_role(permission_id,role_id) values(70,9999);
-- Permisos de Permissions
insert into permission_role(permission_id,role_id) values(71,9999);
insert into permission_role(permission_id,role_id) values(72,9999);
insert into permission_role(permission_id,role_id) values(73,9999);
insert into permission_role(permission_id,role_id) values(74,9999);
insert into permission_role(permission_id,role_id) values(75,9999);
-- -- Permisos de Backup
-- insert into permission_role(permission_id,role_id) values(86,9999);
-- -- Permiso de Reporte
-- insert into permission_role(permission_id,role_id) values(87,9999);
-- -- Permisos de Customer
-- insert into permission_role(permission_id,role_id) values(88,9999);
-- insert into permission_role(permission_id,role_id) values(89,9999);
-- insert into permission_role(permission_id,role_id) values(90,9999);
-- insert into permission_role(permission_id,role_id) values(91,9999);
-- insert into permission_role(permission_id,role_id) values(96,9999);
-- -- Permisos de Service
-- insert into permission_role(permission_id,role_id) values(92,9999);
-- insert into permission_role(permission_id,role_id) values(93,9999);
-- insert into permission_role(permission_id,role_id) values(94,9999);
-- insert into permission_role(permission_id,role_id) values(95,9999);
-- insert into permission_role(permission_id,role_id) values(97,9999);
-- -- Permisos de Stages
-- insert into permission_role(permission_id,role_id) values(98,9999);
-- insert into permission_role(permission_id,role_id) values(99,9999);
-- insert into permission_role(permission_id,role_id) values(100,9999);
-- insert into permission_role(permission_id,role_id) values(101,9999);
-- insert into permission_role(permission_id,role_id) values(102,9999);
-- -- Permisos de Operation
-- insert into permission_role(permission_id,role_id) values(103,9999);
-- insert into permission_role(permission_id,role_id) values(104,9999);
-- insert into permission_role(permission_id,role_id) values(105,9999);
-- insert into permission_role(permission_id,role_id) values(106,9999);
-- insert into permission_role(permission_id,role_id) values(107,9999);
-- -- Permisos de OperationDetail
-- insert into permission_role(permission_id,role_id) values(108,9999);
-- insert into permission_role(permission_id,role_id) values(109,9999);
-- insert into permission_role(permission_id,role_id) values(110,9999);
-- insert into permission_role(permission_id,role_id) values(111,9999);
-- -- Permisos de Correo Automatic
-- insert into permission_role(permission_id,role_id) values(116,9999);
-- insert into permission_role(permission_id,role_id) values(117,9999);
-- insert into permission_role(permission_id,role_id) values(118,9999);
-- insert into permission_role(permission_id,role_id) values(119,9999);
-- insert into permission_role(permission_id,role_id) values(120,9999);
-- -- Permisos de Notification
-- insert into permission_role(permission_id,role_id) values(121,9999);
-- insert into permission_role(permission_id,role_id) values(122,9999);
-- insert into permission_role(permission_id,role_id) values(123,9999);
-- insert into permission_role(permission_id,role_id) values(124,9999);
-- insert into permission_role(permission_id,role_id) values(125,9999);
-- -- Permisos de Tables
-- insert into permission_role(permission_id,role_id) values(128,9999);
-- insert into permission_role(permission_id,role_id) values(129,9999);
-- insert into permission_role(permission_id,role_id) values(130,9999);
-- insert into permission_role(permission_id,role_id) values(131,9999);
-- insert into permission_role(permission_id,role_id) values(132,9999);
-- -- Permisos de Entry
-- insert into permission_role(permission_id,role_id) values(144,9999);
-- insert into permission_role(permission_id,role_id) values(145,9999);
-- insert into permission_role(permission_id,role_id) values(146,9999);
-- insert into permission_role(permission_id,role_id) values(147,9999);
-- insert into permission_role(permission_id,role_id) values(148,9999);
-- -- Permisos de Output
-- insert into permission_role(permission_id,role_id) values(149,9999);
-- insert into permission_role(permission_id,role_id) values(150,9999);
-- insert into permission_role(permission_id,role_id) values(151,9999);
-- insert into permission_role(permission_id,role_id) values(152,9999);
-- insert into permission_role(permission_id,role_id) values(153,9999);
-- -- Permisos de Pending
-- insert into permission_role(permission_id,role_id) values(154,9999);
-- insert into permission_role(permission_id,role_id) values(155,9999);
-- insert into permission_role(permission_id,role_id) values(156,9999);
-- insert into permission_role(permission_id,role_id) values(157,9999);
-- insert into permission_role(permission_id,role_id) values(158,9999);
-- -- Permisos de Evaluate
-- insert into permission_role(permission_id,role_id) values(159,9999);
-- insert into permission_role(permission_id,role_id) values(160,9999);
-- insert into permission_role(permission_id,role_id) values(161,9999);
-- insert into permission_role(permission_id,role_id) values(162,9999);
-- insert into permission_role(permission_id,role_id) values(163,9999);
-- -- Permisos de Processed
-- insert into permission_role(permission_id,role_id) values(164,9999);
-- insert into permission_role(permission_id,role_id) values(165,9999);
-- insert into permission_role(permission_id,role_id) values(166,9999);
-- insert into permission_role(permission_id,role_id) values(167,9999);
-- insert into permission_role(permission_id,role_id) values(168,9999);
-- -- Permisos de Dashboard
-- insert into permission_role(permission_id,role_id) values(169,9999);
-- insert into permission_role(permission_id,role_id) values(170,9999);
-- insert into permission_role(permission_id,role_id) values(171,9999);
-- insert into permission_role(permission_id,role_id) values(172,9999);
-- insert into permission_role(permission_id,role_id) values(173,9999);
-- Permisos de Module
insert into permission_role(permission_id,role_id) values(174,9999);
insert into permission_role(permission_id,role_id) values(175,9999);
insert into permission_role(permission_id,role_id) values(176,9999);
insert into permission_role(permission_id,role_id) values(177,9999);
insert into permission_role(permission_id,role_id) values(178,9999);
-- Permisos de Assign
insert into permission_role(permission_id,role_id) values(179,9999);
insert into permission_role(permission_id,role_id) values(180,9999);
insert into permission_role(permission_id,role_id) values(181,9999);
insert into permission_role(permission_id,role_id) values(182,9999);
insert into permission_role(permission_id,role_id) values(183,9999);


-- borrar el rol admin
select * from roles where enable = true
select * from roles where enable = true and id = 2;
delete from roles where id = 2;
-- Buscar los permisos del Rol Admin
select * from permission_role where role_id = 2;
delete from permission_role where role_id = 2;