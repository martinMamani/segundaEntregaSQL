CREATE DEFINER=`root`@`localhost` TRIGGER `productoprecioupdate` BEFORE UPDATE ON `producto` FOR EACH ROW insert into productoauditprecio
set id = old.idProducto,
precioA = old.precio,
precioB = new.precio,
fechaDeCambio = now()


CREATE DEFINER=`root`@`localhost` TRIGGER `productodescripcionupdate` BEFORE UPDATE ON `producto` FOR EACH ROW insert into productoauditdescripcion
set id = old.idProducto,
descripcionA = old.descripcion,
descripcionB = new.descripcion,
fechaDeCambio = now()



CREATE DEFINER=`root`@`localhost` TRIGGER `productonombreupdate` BEFORE UPDATE ON `producto` FOR EACH ROW insert into productoauditnombre
set id = old.idProducto,
nombreA = old.nombre,
nombreB = new.nombre,
fechaDeCambio = now()
