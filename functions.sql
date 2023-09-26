use dbalmacen
;
drop function if exists cantidadDeProductosDeTipo;

delimiter $$

CREATE FUNCTION `cantidadDeProductosDeTipo` (nombre varchar(15))
RETURNS INTEGER
reads sql data
BEGIN
     DECLARE cantDeProductos int;
     
     
     select count(*) 
     into cantDeProductos
     from producto
     inner join categoria on producto.idProducto = categoria.idProducto
	 where categoria.nombre = nombre;
    
RETURN  cantDeProductos;
END $$

delimiter ;
-- ejemplos de prueba

--select cantidadDeProductosDeTipo('gaseosas') as cantidadDeGaseosas;

--select cantidadDeProductosDeTipo('alimento') as cantidadDeAlimento

-----------------------------------------------------------------------------------------

use dbalmacen
;
drop function if exists cantEmpleadosDeUnAlmacen;

delimiter $$

CREATE FUNCTION `cantEmpleadosDeUnAlmacen` (idAlmacen int)
RETURNS INTEGER
reads sql data
BEGIN
     DECLARE cantDeEmpleados int;
	
 select count(*) 
 into cantDeEmpleados
 from almacen as a 
 inner join empleado as e on a.idAlmacen = e.idAlmacen
 where a.idAlmacen = idAlmacen;
     
     
RETURN  cantDeEmpleados;
END $$

delimiter ;

-- ejemplos de prueba

--select cantEmpleadosDeUnAlmacen(1) as cantidadDeEmpleados

--select cantEmpleadosDeUnAlmacen(3) as cantidadDeEmpleados

--select cantEmpleadosDeUnAlmacen(5) as cantidadDeEmpleados