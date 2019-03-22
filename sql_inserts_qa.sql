﻿-- Table Numero 6 = Registrar Entrada
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
-- -- Registro de Permisos
-- (179,'index.permission','index.permission','index.permission','Listar los Permisos','2018-06-26 07:38:37','2018-06-26 07:38:52',14),
-- (180,'show.permission','show.permission','show.permission','Mostrar el Permiso','2018-06-26 07:38:37','2018-06-26 07:38:52',14),
-- (181,'store.permission','store.permission','store.permission','Mostrar el Permiso','2018-06-26 07:38:37','2018-06-26 07:38:52',14),
-- (182,'update.permission','update.permission','update.permission','Mostrar el Permiso','2018-06-26 07:38:37','2018-06-26 07:38:52',14),
-- (183,'delete.permission','delete.permission','delete.permission','Mostrar el Permiso','2018-06-26 07:38:37','2018-06-26 07:38:52',14),
-- Asignar Permisos 32
(179,'index.assign permission','index.assign permission','index.assign permission','Listar los Permisos Asignados','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(180,'show.assign permission','show.assign permission','show.assign permission','Mostrar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(181,'store.assign permission','store.assign permission','store.assign permission','Guardar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(182,'update.assign permission','update.assign permission','update.assign permission','Actualizar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32),
(183,'delete.assign permission','delete.assign permission','delete.assign permission','Borrar el Permiso Asignado','2018-06-26 07:38:37','2018-06-26 07:38:52',32);


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

-- Asignar Permissions al Role System
INSERT into permission_role(permission_id,role_id,created_at,updated_at) 
values
(1,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(2,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(3,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(4,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(5,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(6,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(7,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(8,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(9,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(10,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(11,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(12,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(13,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(14,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(15,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(16,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(17,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(18,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(19,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(20,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(21,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(22,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(23,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(24,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(25,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(26,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(27,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(28,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(29,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(30,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(31,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(32,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(33,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(34,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(35,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(36,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(37,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(38,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(39,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(40,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(41,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(42,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(43,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(44,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(45,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(46,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(47,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(48,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(49,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(50,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(51,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(52,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(53,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(54,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(55,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(56,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(57,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(58,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(59,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(60,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(61,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(62,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(63,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(64,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(65,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(66,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(67,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(68,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(69,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(70,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(71,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(72,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(73,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(74,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(75,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(76,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(77,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(78,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(79,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(80,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(81,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(82,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(83,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(84,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(85,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(86,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(87,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(88,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(89,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(90,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(91,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(92,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(93,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(94,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(95,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(96,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(97,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(98,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(99,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(100,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(101,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(102,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(103,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(104,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(105,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(106,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(107,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(108,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(109,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(110,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(111,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(116,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(117,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(118,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(119,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(120,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(121,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(122,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(123,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(124,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(125,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(144,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(145,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(146,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(147,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(148,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(149,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(150,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(151,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(152,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(153,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(154,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(155,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(156,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(157,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(158,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(159,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(160,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(161,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(162,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(163,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(164,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(165,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(166,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(167,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(168,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(169,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(170,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(171,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(172,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(173,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(174,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(175,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(176,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(177,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(178,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(179,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(180,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(181,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(182,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(183,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52');

INSERT into permission_role(permission_id,role_id,created_at,updated_at) 
values
(128,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(129,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(130,1,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(132,1,'2018-06-29 07:38:37','2018-06-29 07:38:52');

INSERT into permission_role(permission_id,role_id,created_at,updated_at) 
values
(128,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(129,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(130,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(131,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52'),
(132,9999,'2018-06-29 07:38:37','2018-06-29 07:38:52');

-- Permisos Table
insert into public.tables(id,description,created_at,updated_at)
values
(184,'index.table','index.table','index.table','Listar las Tables','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(185,'show.table','show.table','show.table','Mostrar la Tabla','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(186,'store.table','store.table','store.table','Guardar la Tabla','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(187,'update.table','update.table','update.table','Actualizar la Tabla','2018-06-26 07:38:37','2018-06-26 07:38:52',28),
(188,'delete.table','delete.table','delete.table','Borrar el Table','2018-06-26 07:38:37','2018-06-26 07:38:52',28);


select * from users where id = 17;
select * from roles where id = 9999;

select * from permissions order by id;
select * from tables order by id;