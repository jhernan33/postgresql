-- Ciudades
select * from permissions where name like '%city%';
update permissions set enable = 'false' where id in (61,62,63,64,65);

select * from permissions where name like '%countrie%';
update permissions set enable = 'false' where id in (56,57,58,59,60);

-- Buscar los permisos de Ciudades y borrar
select * from permission_role order by role_id;
select * from permission_role where role_id = 1 and permission_id in (61,62,63,64,65) order by role_id;
select * from permission_role where role_id = 1 and permission_id in (56,57,58,59,60) order by role_id;
select * from permission_role where role_id = 9999 and permission_id in (61,62,63,64,65) order by role_id;
select * from permission_role where role_id = 9999 and permission_id in (56,57,58,59,60) order by role_id;

-- borrar los permisos de ciudades al rol syadmin
delete from permission_role 
where role_id = 1 and permission_id in (61,62,63,64,65);

delete from permission_role 
where role_id = 1 and permission_id in (56,57,58,59,60);

-- borrar los permisos de ciudades al rol system
delete from permission_role 
where role_id = 9999 and permission_id in (61,62,63,64,65);

delete from permission_role 
where role_id = 9999 and permission_id in (56,57,58,59,60);

-- Marcas
select * from permissions where name like '%brand%';
update permissions set enable = 'false' where id in (21,22,23,24,25);

select * from permission_role where role_id = 1 
and permission_id in (21,22,23,24,25) order by role_id;

delete from permission_role 
where role_id = 9999 and permission_id in (21,22,23,24,25);

delete from permission_role 
where role_id = 1 and permission_id in (21,22,23,24,25);

-- Modelo
select * from permissions where name like '%model%';
update permissions set enable = 'false' where id in (26,27,28,29,30);

delete from permission_role 
where role_id = 9999 and permission_id in (26,27,28,29,30);

delete from permission_role 
where role_id = 1 and permission_id in (26,27,28,29,30);

select * from permissions where name like '%backup%';
select * from permissions where name like '%report%' order by name;

select * from permission_role where role_id = 1 and permission_id in (86);
select * from permission_role where role_id = 1 and permission_id in (87);

select * from now();
