select id,use_dni,use_nam,use_lna,use_nom from users;


select * from drivers;

select a.id as codigo_usuario,
a.use_dni as dni_usuario,
a.use_nam as nombre_usuario,
b.dri_nam as nombre_conductor,
b.dri_lna as apellido_conductor
from users as a left outer join drivers as b 
on a.use_dni = b.dri_dni;


