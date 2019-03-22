select count(op.operacion_id)
-- select (op.operacion_id),container_id
            from operation as op
            where op.container_id = '152'
--             and op.fecha_registro =
-- limit 100