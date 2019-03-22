create table security.users(
 user_cons bigserial not null constraint security_users_user_cons_pk primary key, -- Codigo del Usuario Consecutivo
 user_name character varying not null, -- Nombre del Usuario
 user_emai character varying not null, -- Correo Electronico del Usuario
 user_pass text not null, -- Clave de Acceso del Usuario
 user_eras boolean, -- Borrado Logico del Usuario
 acco_codi integer not null -- Codigo de la Cuenta
)
inherits (public.persons)
with (oids=true
);
alter table security.users add constraint security_users_pers_cedu_uk unique(pers_cedu);
alter table security.users add constraint security_users_pers_user_name unique(user_name);
alter table security.users add constraint security_users_pers_user_emai unique(user_emai);
COMMENT ON TABLE security.users IS 'Registro de Usuarios';
COMMENT ON COLUMN security.users.user_cons IS 'Codigo del Usuario Consecutivo';
COMMENT ON COLUMN security.users.user_name IS 'Nombre del Usuario';
COMMENT ON COLUMN security.users.user_emai IS 'Correo Electronico del Usuario';
COMMENT ON COLUMN security.users.user_pass IS 'Clave de Acceso del Usuario';
COMMENT ON COLUMN security.users.user_eras IS 'Borrado Logico del Usuario';
COMMENT ON COLUMN security.users.acco_codi IS 'Codigo de la Cuenta de la Empresa a la se encuentra associado el Usuario';

-- create roles
--drop table security.roles;

create table security.roles
(
role_codi bigserial not null constraint security_roles_role_codi_pk primary key, -- Codigo del Rol Consecutivo
role_name character varying(200) not null, -- Nombre del Rol
role_slug character varying(255) not null, -- Clave primaria del slug
role_desc text, -- Descripcion del Role
role_spec character varying(255), -- Especial el Rol
role_eras boolean, -- Borrado Logico del Role
CONSTRAINT security_roles_name_ck CHECK (role_name::text <> ''::text)
)with (oids=true);
COMMENT ON TABLE security.roles IS 'Registro de Roles';
COMMENT ON COLUMN security.roles.role_codi IS 'Codigo del Role';
COMMENT ON COLUMN security.roles.role_name IS 'Nombre del Role';
COMMENT ON COLUMN security.roles.role_slug IS 'Slug del Role';
COMMENT ON COLUMN security.roles.role_desc IS 'Descripcion del Role';
COMMENT ON COLUMN security.roles.role_eras IS 'Borrado Logico del Role';


-- create role_users
create table security.role_users
(
 rous_codi bigserial not null constraint security_role_users_rous_codi_pk primary key, -- Codigo del Role de Usuario
 role_codi integer not null, -- Codigo del Rol
 user_codi integer not null, -- Codigo del Usuario
 rous_eras boolean, -- Borrado Logico 
 CONSTRAINT security_role_users_role_codi_fk FOREIGN KEY (role_codi)
      REFERENCES security.roles (role_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT, -- Clave Foreana del Codigo del Role
 constraint security_role_users_user_cons_fk foreign key (user_codi)
      references security.users (user_codi) match simple
      on update restrict on delete restrict -- Clave Foreana del Codigo del Usuario
)with (oids=true);
COMMENT ON TABLE security.role_users IS 'Registro de Roles del Usuario';
COMMENT ON COLUMN security.role_users.rous_codi IS 'Codigo del Rol del Usuario';
COMMENT ON COLUMN security.role_users.role_codi IS 'Codigo del Rol';
COMMENT ON COLUMN security.role_users.user_codi IS 'Codigo del Usuario';
COMMENT ON COLUMN security.role_users.rous_eras IS 'Borrado Logico del Role del Usuario';

-- create permissions
create table security.permissions(
 perm_codi bigserial not null constraint security_permissions_perm_codi_pk primary key, -- Codigo del Permiso
 perm_nomb character varying(255), -- Nombre del Permiso
 perm_desc text, -- Descripcion del Permiso
 pers_slug character varying(255), -- Clave Primaria del Slug
 pers_eras boolean -- Borrado Logico
)with (oids=true);
comment on table security.permissions is 'Registro de Permisos';
comment on column security.permissions.perm_codi is 'Codigo del Permiso';
comment on column security.permissions.perm_nomb is 'Nombre del Permiso';
comment on column security.permissions.perm_desc is 'Descripcion del Permiso';
comment on column security.permissions.pers_slug is 'Clave Primaria del Slug del Permiso';
comment on column security.permissions.pers_eras is 'Borrado Logico del Permiso';

-- create permissions_role
create table security.permissions_roles(
 pero_codi bigserial not null constraint security_permissions_roles_pero_codi_pk primary key, -- Codigo del Permiso Role
 perm_codi integer not null, -- Codigo del Permiso
 rous_codi integer not null, -- Codigo del Rol del Usuario
 pero_eras boolean -- Borrado Logico
)with (oids=true);
comment on table security.permissions_roles is 'Registro Permisos de Roles';
comment on column security.permissions_roles.pero_codi is 'Codigo del Permiso del Role';
comment on column security.permissions_roles.perm_codi is 'Codigo del Permiso';
comment on column security.permissions_roles.rous_codi is 'Codigo del Role del Usuario';
comment on column security.permissions_roles.pero_eras is 'Borrado Logico';