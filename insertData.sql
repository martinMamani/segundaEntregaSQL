insert into almacen(nombre,propietario,domicilio) values

('blanca','Blanca Ramos','Costa Rica 123'),
('Almacen Jose','Josefina Lopez','Republica del Libano 412'),
('Kiosco Serg','Sergio Maidana','Colombia 345'),
('24hs','Alberto Perez','Avenida Varela 2548'),
('Borrachera','Damian Fermandez','Avenida los Andes')

;


insert into producto(nombre,descripcion,peso,marca,precio) values

('Arroz','arroz fino largo','1 kg','Gallo',800),
('Arroz','arroz integral','1 kg','Ala',1000),
('Azucar','azucar blanco','1 kg','Ledezma',700),
('Azucar','dietetico','1 kg','hileret',1200),
('Fideo','tallarines','500 gramos','Matarazzo',600),
('gaseosa','sabor cola sin azucar','2 litros','CocaCola',1000),
('gaseosa','sabor naranja sin envase retornable','1.5 litros','Fanta',900),
('gaseosa','sabor lima','2 litros','Sprite',900)

;


insert into categoria(nombre,tipo,idProducto)values

('gaseosas','bebida',6),
('gaseosas','bebida',7),
('gaseosas','bebida',8),
('alimento','primera necesidad',1),
('alimento','primera necesidad',2),
('alimento','primera necesidad',3),
('alimento','primera necesidad',4),
('alimento','primera necesidad',5)


;

insert into cliente(nombre,apellido,dni,domicilio)values

('Juan','Perez','35478988','peru 278'),
('Paula','Dominguez','40258988','alberdi 563'),
('Damian','Martinez','36478526','azcuenaga 125'),
('Mariano','Lopez','42157845','venezuela 547'),
('Rocio','Mendoza','41254623','colombia 369')


;


insert into distribuidor(nombre,domicilio)values

('Mayorista Macro','magallanes 1025'),
('Vital','cachaqui 2055'),
('Walmart','don bosco 2260')


;

insert into empleado(nombre,apellido,dni,domicilio,salario,puesto,idAlmacen)values

('Carlos','Perez','35478988','peru 278',130000,'repositor',1),
('Jose','Dominguez','40258988','alberdi 563',140000,'repositor',2),
('Antonio','Martinez','36478526','azcuenaga 125',130000,'repositor',3),
('Maria','Lopez','42157845','venezuela 547',160000,'cajero',1),
('Luz','Mendoza','41254623','colombia 369',155000,'cajero',2),
('Ariana','Calle','38745852','panama 979',145000,'repositor',2),
('Micaela','Sosa','39874125','ecuador 458',175000,'cajero',3),
('Franco','Gonzalez','37415369','chile 847',155000,'repositor',3)


;

insert into ordendecompra(idCliente,idProducto)values

(1,8),
(1,5),
(1,3),
(5,1),
(5,4),
(5,5)

;

insert into productodedistribuirdor(idDistribuidor,idProducto)values

(1,1),
(1,2),
(2,3),
(2,4),
(2,5),
(3,6),
(3,7),
(3,8)

;

insert into proveedor(idAlmacen,idDistribuidor)values

(1,1),
(1,2),
(1,3),
(2,2),
(3,3),
(4,1),
(4,2)

;