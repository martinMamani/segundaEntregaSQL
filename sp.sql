use dbalmacen;

drop procedure if exists empleados_ordenados_por;

delimiter $$

create procedure empleados_ordenados_por(in field1 char(30), in field2 char(4))
BEGIN
   if field1 <> ''  and field2 <> '' then
      set @orden = concat('ORDER BY ', field1);
      set @consulta = concat('select * from empleado ',@orden);
      if field2 = 'asc' then
       set @consulta =concat(@consulta, ' asc');
      else 
       set @consulta =concat(@consulta, ' desc');
      end if ;
   else 
     if field1 <> '' then
       set @orden = concat('ORDER BY ', field1);
	   set @consulta = concat('select * from empleado ',@orden);
       else 
          set @orden = '';
          set @consulta = concat('select * from empleado ',@orden);
		end if;
    end if;
    
prepare runSQL from @consulta;
execute runSQL;
deallocate prepare runSQL;

END  $$

delimiter ;

-- casos de uso --

-- Devuelve la lista de empleados
call empleados_ordenados_por('','');

-- Devuelve la lista de empleados ordenado por nombre
call empleados_ordenados_por('nombre','');

-- Devuelve la lista de empleados
call empleados_ordenados_por('','asc');

-- Devuelve la lista de empleados ordenado por nombre y de forma descendente.
call empleados_ordenados_por('nombre','desc');




create procedure insertar_producto(in nomb char(45), in descrip char(100), in ps char(45), in marc char(45),in prec float)
BEGIN
   set @f1=nomb;
   set @f2=descrip;
   set @f3=ps;
   set @f4=marc;
   set @f5=prec;
   insert into producto (nombre,descripcion,peso,marca,precio)values(
   @f1,@f2,@f3,@f4,@f5
   );

END  $$

delimiter ;
-- primer parametro es el nombre
-- segundo parametro es la descripcion
-- tercero parametro es el peso
-- cuarto parametro es el marca
-- quinto parametro es el precio

-- Caso de uso

-- call insertar_producto('Sal','sal gruesa','500 gramos','Sal Marina','600');