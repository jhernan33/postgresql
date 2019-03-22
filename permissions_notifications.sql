-- select * from public.permissions;
-- select * from public.permissions where name like '%index%';
-- select * from public.permission_role;

INSERT INTO public.permissions(id, name, slug, description, enable, disable, created_at, updated_at)
VALUES 
(121, 'index notification', 'index.notification', 'Listar las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(122, 'update notification', 'update.notification', 'Update las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(123, 'show notification', 'show.notification', 'Update las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(124, 'store notification', 'store.notification', 'Update las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(125, 'delete notification', 'delete.notification', 'Update las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16');

INSERT INTO public.permissions(id, name, slug, description, enable, disable, created_at, updated_at)
VALUES 
(126, 'index report', 'index.report', 'Listar las Notificaciones', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16');


INSERT INTO public.permission_role(id, permission_id, role_id, created_at, updated_at)
VALUES 
(117, 121, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(118, 122, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(119, 123, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(120, 124, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17'),
(121, 125, 1, '2018-04-13 17:40:17', '2018-04-13 17:40:17');


--delete from permissions where id in(121,122,123,124,125);

-- Permisos en QA
/*
INSERT INTO public.permissions(id, name, slug, description, enable, disable, created_at, updated_at)
VALUES 
(117, 'index automatic_mail', 'index.automatic mail', 'Listar los Correos', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(118, 'update automatic_mail', 'update.automatic mail', 'Update los Correos', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(119, 'show automatic_mail', 'show.automatic mail', 'Mostrar los Correos', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(120, 'store automatic_mail', 'store.automatic mail', 'Guardar los Correos', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16'),
(121, 'delete automatic_mail', 'delete.automatic mail', 'Borrado el Correo', 'true', 'false', '2018-04-13 17:40:16', '2018-04-13 17:40:16');
*/
