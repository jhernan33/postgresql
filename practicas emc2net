-- Practicas de la web https://e-mc2.net/es/consultas-complejas
select * from relacion_r;
TRUNCATE relacion_r;
select * from relacion_s;
--En nuestro primer ejemplo realizamos una unión de las dos relaciones, el resultado obtenido seria:
select * from relacion_r  union select * from relacion_s;

--A continuación realizamos una intersección entre las dos relaciones:
select * from relacion_r  intersect select * from relacion_s;

--La diferencia entre estas dos relaciones daria el siguiente resultado. Como podeis ver, y por definición, no es lo mismo la diferencia entre relacion_r y relacion_s, que entre relacion_s y relacion_r
select * from relacion_r except select * from relacion_s;

select * from relacion_s except select * from relacion_r;

--Vamos a definir una nueva fila (3,4,5) en la tabla relacion_s para ver unos ejemplos de como combinar estas dos relaciones mediante JOINs.
select * from relacion_r;
insert into relacion_s values(3,4,5);
select * from relacion_s;

--La manera más simple de combinar estas dos relaciones es realizar el producto cartesiano de ambas. Esto se puede realizar de dos maneras, ó bien definiendo las dos relaciones separadas por comas despues del FROM.
select * from relacion_r, relacion_s;

--O utilizando la cláusula CROSS JOIN entre las dos relaciones.
select * from relacion_r cross join relacion_s;

--En realidad un CROSS JOIN es el equivalente a un INNER JOIN ON (true). Esto porque el INNER JOIN es por definición un producto cartesiano al que se le aplica una condición para acotar el resultado. En este caso particular la condición siempre se cumple para todas las tuplas al utilizar el valor TRUE, con lo que obtendremos todas las tuplas del producto cartesiano.
select * from relacion_r inner join relacion_s on(true);
select * from relacion_r left join relacion_s on(true);
select * from relacion_r left join relacion_s on(false);
select * from relacion_r right join relacion_s on(false);
select * from relacion_r right join relacion_s on(true);

--A continuación podeis ver como definir un INNER JOIN con la condición definida dentro de ON(). Este ejemplo es un Equi-join al utilizarse una comparación de igualdad en la condición.
select * from relacion_r as r inner join relacion_s as s on(r.c = s.c);

--El mismo resultado obtenido con la clausula INNER JOIN se podria haber conseguido obteniendo el producto cartesiano de las dos relaciones y aplicando una condición con WHERE (definicion de INNER JOIN).
select * from relacion_r as r, relacion_s as s where r.c = s.c;
select * from relacion_r as r cross join relacion_s as s where r.c = s.c;

--Un NATURAL JOIN retorna el mismo resultado que un equi-join, pero sin repetir las columnas comunes.
select * from relacion_r natural join relacion_s;
select * from relacion_s natural join relacion_r;

select a,b,c,d,e from relacion_r natural join relacion_s;

-- La primera es un LEFT OUTER JOIN.
select * from relacion_r as r left outer join relacion_s as s on(r.c = s.c);

-- Seguido de un RIGHT OUTER JOIN:
select * from relacion_r as r right outer join relacion_s as s on(r.c = s.c);

--Y para terminar un FULL OUTER JOIN:
select * from relacion_r as r full outer join relacion_s as s on(r.c = s.c);

