-- select * from public.permissions;
-- select * from public.permissions where name like '%index%';
-- select * from public.permission_role;

INSERT INTO public.permissions(id, name, slug, description, enable, disable, created_at, updated_at)
VALUES 
(128, 'index table', 'index.table', 'Listar las Tablas', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(129, 'update table', 'update.table', 'Update las Tablas', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(130, 'show table', 'show.table', 'Update las Tablas', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(131, 'store table', 'store.table', 'Update las Tablas', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(132, 'delete table', 'delete.table', 'Update las Tablas', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16');

INSERT INTO public.permissions(id, name, slug, description, enable, disable, created_at, updated_at)
VALUES 
(126, 'index report', 'index.report', 'Listar las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16');


INSERT INTO public.permission_role(id, permission_id, role_id, created_at, updated_at)
VALUES 
(127, 128, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(128, 129, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(129, 130, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(130, 131, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(131, 132, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17');



