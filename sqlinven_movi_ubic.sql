select
        sum(this_.cantidad_total) as y0_,
        ubicacion_1_.codigo_ubicacion_almacen as y1_,
        ubicacion_1_.id as y2_,
        producto_a2_.codigo_producto as y3_,
        producto_a2_.descripcion as y4_,
        producto_a2_.amount as y5_,
        producto_a2_.id as y6_ 
    from
        inventario_diario this_ 
    inner join
        producto producto_a2_ 
            on this_.producto=producto_a2_.id 
    inner join
        ubicacion ubicacion_1_ 
            on this_.ubicacion=ubicacion_1_.id 
    where
        1=1 
        and this_.tipo_operacion=0
        and (
            this_.fecha>=20171220
            and this_.fecha<=20171220
            and this_.cuenta_id=4
        ) 
    group by
        ubicacion_1_.id,
        producto_a2_.id limit 500