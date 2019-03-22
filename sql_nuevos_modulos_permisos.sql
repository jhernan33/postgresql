-- Table Numero 6 = Registrar Entrada
insert into public.permissions(id,code,name,slug,description,created_at,updated_at,id_table)
values
(144,'index.entry','index.entry','index.entry','Mostrar todas las Entradas','2018-06-26 07:38:37','2018-06-26 07:38:52',6),
(145,'show.entry','show.entry','show.entry','Mostrar la Entrada','2018-06-26 07:38:37','2018-06-26 07:38:52',6),
(146,'store.entry','store.entry','store.entry','Crear la Entrada','2018-06-26 07:38:37','2018-06-26 07:38:52',6),
(147,'update.entry','update.entry','update.entry','Actualizar la Entrada','2018-06-26 07:38:37','2018-06-26 07:38:52',6),
(148,'delete.entry','delete.entry','delete.entry','Eliminar la Entrada','2018-06-26 07:38:37','2018-06-26 07:38:52',6),
-- Registro Numero 7 = Registrar Salida
(149,'index.output','index.output','index.output','Index de Salida','2018-06-26 07:38:37','2018-06-26 07:38:52',7),
(150,'show.output','show.output','show.output','Show de Salida','2018-06-26 07:38:37','2018-06-26 07:38:52',7),
(151,'store.output','store.output','store.output','Guardar de Salida','2018-06-26 07:38:37','2018-06-26 07:38:52',7),
(152,'update.output','update.output','update.output','Actualizar Salida','2018-06-26 07:38:37','2018-06-26 07:38:52',7),
(153,'delete.output','delete.output','delete.output','Borrar Salida','2018-06-26 07:38:37','2018-06-26 07:38:52',7),
-- Registro Numero 8 = En Curso
(154,'index.pending','index.pending','index.pending','Index de Operaciones en Curso','2018-06-26 07:38:37','2018-06-26 07:38:52',8),
(155,'show.pending','show.pending','show.pending','Mostrar la Operacione en Curso','2018-06-26 07:38:37','2018-06-26 07:38:52',8),
(156,'store.pending','store.pending','store.pending','Guardar la Operacion en Curso','2018-06-26 07:38:37','2018-06-26 07:38:52',8),
(157,'update.pending','update.pending','update.pending','Actualizar la Operacion en Curso','2018-06-26 07:38:37','2018-06-26 07:38:52',8),
(158,'delete.pending','delete.pending','delete.pending','Borrar la Operacion en Curso','2018-06-26 07:38:37','2018-06-26 07:38:52',8),
-- Registro Numero 9 = En Evaluar
(159,'index.evaluate','index.evaluate','index.evaluate','Index de Operaciones por Evaluar','2018-06-26 07:38:37','2018-06-26 07:38:52',9),
(160,'show.evaluate','show.evaluate','show.evaluate','Mostrar la Operacion por Evaluar','2018-06-26 07:38:37','2018-06-26 07:38:52',9),
(161,'store.evaluate','store.evaluate','store.evaluate','Guardar la Operacion por Evaluar','2018-06-26 07:38:37','2018-06-26 07:38:52',9),
(162,'update.evaluate','update.evaluate','update.evaluate','Actualizar la Operacion por Evaluar','2018-06-26 07:38:37','2018-06-26 07:38:52',9),
(163,'delete.evaluate','delete.evaluate','delete.evaluate','Borrar la Operacion por Evaluar','2018-06-26 07:38:37','2018-06-26 07:38:52',9),
-- Registro Numero 10 = Procesadas
(164,'index.processed','index.processed','index.processed','Index de Operaciones Procesadas','2018-06-26 07:38:37','2018-06-26 07:38:52',10),
(165,'show.processed','show.processed','show.processed','Mostrar la Operacion Procesadas','2018-06-26 07:38:37','2018-06-26 07:38:52',10),
(166,'store.processed','store.processed','store.processed','Guardar la Operacion Procesadas','2018-06-26 07:38:37','2018-06-26 07:38:52',10),
(167,'update.processed','update.processed','update.processed','Actualizar la Operacion Procesadas','2018-06-26 07:38:37','2018-06-26 07:38:52',10),
(168,'delete.processed','delete.processed','delete.processed','Borrar la Operacion Procesadas','2018-06-26 07:38:37','2018-06-26 07:38:52',10);


-- Registro de Dashboard
insert into public.permissions(id,code,name,slug,description,created_at,updated_at,id_table)
values
(169,'index.dashboard','index.dashboard','index.dashboard','Listar el Tablero','2018-06-26 07:38:37','2018-06-26 07:38:52',1),
(170,'show.dashboard','show.dashboard','show.dashboard','Mostrar el Tablero','2018-06-26 07:38:37','2018-06-26 07:38:52',1),
(171,'store.dashboard','store.dashboard','store.dashboard','Mostrar el Tablero','2018-06-26 07:38:37','2018-06-26 07:38:52',1),
(172,'update.dashboard','update.dashboard','update.dashboard','Mostrar el Tablero','2018-06-26 07:38:37','2018-06-26 07:38:52',1),
(173,'delete.dashboard','delete.dashboard','delete.dashboard','Mostrar el Tablero','2018-06-26 07:38:37','2018-06-26 07:38:52',1),
-- Registro de Modulos
(174,'index.module','index.module','index.module','Listar los Modulos','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(175,'show.module','show.module','show.module','Mostrar el Modulo','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(176,'store.module','store.module','store.module','Guardar el Modulo','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(177,'update.module','update.module','update.module','Actualizar el Modulo','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(178,'delete.module','delete.module','delete.module','Borrar el Modulo','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
-- Asignar Permisos 32
(179,'index.assign permission','index.assign permission','index.assign permission','Listar los Permisos Asignados','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(180,'show.assign permission','show.assign permission','show.assign permission','Mostrar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(181,'store.assign permission','store.assign permission','store.assign permission','Guardar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(182,'update.assign permission','update.assign permission','update.assign permission','Actualizar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(183,'delete.assign permission','delete.assign permission','delete.assign permission','Borrar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32);

-- Crear el Modulo
insert into tables(id,description,created_at,updated_at)
values(41,'En Proceso','2018-06-14 07:56:57','2018-06-14 07:56:57');

-- Permisos en Proceso
insert into permissions(id,code,name,slug,description,created_at,updated_at,id_table)
values
(184,'index.en proceso','index.en proceso','index.en proceso','Listar en Proceso','2018-06-26 07:38:37','2018-06-26 07:38:37',41),
(185,'show.en proceso','show.en proceso','show.en proceso','Mostrar en Proceso','2018-06-26 07:38:37','2018-06-26 07:38:37',41),
(186,'store.en proceso','store.en proceso','store.en proceso','Guardar en Proceso','2018-06-26 07:38:37','2018-06-26 07:38:37',41),
(187,'update.en proceso','update.en proceso','update.en proceso','Actualizar en Proceso','2018-06-26 07:38:37','2018-06-26 07:38:37',41),
(188,'delete.en proceso','delete.en proceso','delete.en proceso','Borrado en Proceso','2018-06-26 07:38:37','2018-06-26 07:38:37',41);

-- Asginar permisos al rol Sysadmin
insert into permission_role(permission_id,role_id,created_at,updated_at)
values
(184,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(185,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(186,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(187,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(188,1,'2018-06-26 07:38:37','2018-06-26 07:38:52');

select * from permissions order by id;
select * from permission_role where role_id = 1 order by permission_id;
select * from roles where enable = true;
select * from permission_role where role_id = 1;
-- Asignar los permisos al Rol
INSERT into permission_role(permission_id,role_id,created_at,updated_at) 
values
(144,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(145,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(146,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(147,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(148,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(149,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(150,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(151,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(152,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(153,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(154,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(155,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(156,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(157,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(158,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(159,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(160,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(161,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(162,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(163,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(164,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(165,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(166,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(167,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(168,1,'2018-06-26 07:38:37','2018-06-26 07:38:52');

-- Roles de Syadmin
select * from permission_role where role_id = 1 order by permission_id;

INSERT into permission_role(permission_id,role_id,created_at,updated_at) 
values
(144,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(145,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(146,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(147,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(148,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(149,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(150,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(151,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(152,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(153,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(154,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(155,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(156,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(157,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(158,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(159,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(160,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(161,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(162,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(163,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(164,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(165,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(166,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(167,1,'2018-06-26 07:38:37','2018-06-26 07:38:52'),
(168,1,'2018-06-26 07:38:37','2018-06-26 07:38:52');

INSERT into permission_role(permission_id,role_id,created_at,updated_at) 
values
(169,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(170,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(171,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(172,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(173,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(174,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(175,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(176,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(177,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(178,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(179,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(180,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(181,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(182,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(183,1,'2018-06-29 07:38:37','2018-06-29 07:38:52');

