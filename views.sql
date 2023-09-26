CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `dbalmacen`.`productomascaro` AS
    SELECT 
        `dbalmacen`.`producto`.`idProducto` AS `idProducto`,
        `dbalmacen`.`producto`.`nombre` AS `nombre`,
        `dbalmacen`.`producto`.`descripcion` AS `descripcion`,
        `dbalmacen`.`producto`.`peso` AS `peso`,
        `dbalmacen`.`producto`.`marca` AS `marca`,
        `dbalmacen`.`producto`.`precio` AS `precio`
    FROM
        `dbalmacen`.`producto`
    WHERE
        (`dbalmacen`.`producto`.`precio` = (SELECT 
                MAX(`dbalmacen`.`producto`.`precio`)
            FROM
                `dbalmacen`.`producto`))


-- SELECT * FROM dbalmacen.productomascaro;


CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `dbalmacen`.`nomyapelldecliquecompraronproddeprimeranecesidad` AS
    SELECT DISTINCT
        `cli`.`nombre` AS `nombre`, `cli`.`apellido` AS `apellido`
    FROM
        ((`dbalmacen`.`cliente` `cli`
        JOIN `dbalmacen`.`ordendecompra` `odc` ON ((`cli`.`idCliente` = `odc`.`idCliente`)))
        JOIN `dbalmacen`.`categoria` `c` ON ((`odc`.`idProducto` = `c`.`idProducto`)))
    WHERE
        (`c`.`tipo` = 'primera necesidad')
        

-- SELECT * FROM dbalmacen.nomyapelldecliquecompraronproddeprimeranecesidad;