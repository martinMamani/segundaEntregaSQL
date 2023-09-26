# segundaEntregaSQL

![Logo](https://img2.freepng.es/20180609/flt/kisspng-logo-software-engineering-brand-build-ios-database-apps-with-swift-and-sqlite-5b1c9dce7e6745.3775978115286020625178.jpg)

## Descripcion

Tenemos los siguientes archivos:

- insertData -> es para cargar la informacion en nuestra base de datos.
- functions -> son las funciones de nuestra BD.
- sp -> son los stored procedure de nuestra BD.
- triggers -> son algunos triggers de nuestra BD.
- views -> son algunas vistas de la BD.

### Functions

- cantidadDeProductosDeTipo -> me da la cantidad de productos de un tipo dado una categoria.

- cantEmpleadosDeUnAlmacen -> devuelve la cantidad de empleados de un almacen dado un id de almacen.

### Stored Procedure

- empleados_ordenados_por -> ordena los empleados por un campo o columna y de forma asc o desc.

- insertar_producto -> inserta un producto en la tabla de producto.

### Triggers

- productoprecioupdate -> Guarda informacion en una tabla de auditoria cuando cambia el precio de un producto.

- productonombreupdate -> Guarda informacion en una tabla de auditoria cuando cambia el nombre de un producto.

### Views

- productomascaro -> Esta view es para saber el producto mas caro de mi BD en el tiempo.

- nomyapelldecliquecompraronproddeprimeranecesidad -> En esta view podemos ver los nombres y apellido de los clientes que compraron productos de primera necesidad.
  
## Tecnologias

**BD:** MySQL

## Authors

- [@martinMamani](https://github.com/martinMamani)
