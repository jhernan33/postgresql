-- Buscar las operaciones y verificar peso de entrada y salida
select * from operation limit 100;
-- Validar los peso de entrada nulo
select * from operation where peso_entrada is null  limit 100;
select operacion_id from operation limit 10;