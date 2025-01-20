/*DML*/

/* Insertamos valores en las tablas */


INSERT INTO departamento
VALUES ('Montevideo'), ('Canelones'), ('San José'), ('Maldonado'), ('Colonia');

INSERT INTO ciudad(nombrec, nombred)
VALUES ('Montevideo', 'Montevideo'), ('Santa Lucía', 'Canelones'), ('San José de Mayo', 'San José'), ('Punta del Este', 'Maldonado'), ('Colonia de Sacramento', 'Colonia'), ('Atlantida', 'Canelones');

INSERT INTO empresa (rut, razonsocial)
VALUES ('102020205020','Mundoservcios S.A'), ('221451902343','KleptoSyndey S.A'), ('199924321001','NeedForFlete Corporation F'), ('342342349114','Rodriguez and Family S.A'), ('642123128434','Transformerstation S.A'), ('261736997574','Distribuidora general Atlantida S.A'), ('221451954343','Molinacompy S.A'), ('199924320001','Chevirun F'), ('442341342114','FastFlete4EverInc F'), ('642125123434','NeversayNullFlete F'), ('342345211421','Fletex F'), ('991231234341','RollingFlet F'), ('111111323999','EmperadorUniverso S.A'), ('421471902343','MasterDist S.A'), ('196724321001','Maronette F'), ('342382349114','Pika distribuidora S.A'), ('642190128434','Maloco fletes F'),('261730947574','Sanginario Vira S.A'), ('221459214343','Batihouse F'), ('199923311001','Chancleta Mundial S.A'), ('442344344114','Cuatro Hachas F'), ('642155125434','Numix S.A'), ('142315239421','Gato Multicolor Mixer Party F'), ('754331234341','Dragon Shank Natural S.A');

INSERT INTO flete(rutflete, celular)
VALUES ('199924321001', '099123123'), ('199924320001', '097456456'), ('642125123434', '096567567'), ('342345211421', '095678678'), ('991231234341', '094789789'), ('442341342114', '091023002'),
('196724321001','099996971'),
('642190128434','097112272'),
('221459214343','098818268'),
('442344344114','091915555'),
('142315239421','096523421');




INSERT INTO cliente (rutcliente, numero, calle, contrasena, nombrec, nombred)
VALUES ('221451902343', '291', 'Sarandi', 'klepto123', 'Santa Lucía', 'Canelones'),
('342342349114', '123', 'Artigas', 'losrodriguez', 'San José de Mayo', 'San José'),
('102020205020', '312', '18 de Julio', 'passwdservicios', 'Montevideo', 'Montevideo'),
('261736997574', '914', 'Paul Harris', 'lamejordistribuidora', 'Atlantida', 'Canelones'),
('221451954343', '430', '30 de Mayo', 'molinasa', 'Colonia de Sacramento', 'Colonia'),
('642123128434', '2909', 'Dayman', 'gatitocosmicoclarck1112', 'Colonia de Sacramento', 'Colonia'),
('111111323999', '220', 'Dayman', 'gorgonzolaglobglobglobgargalab', 'Colonia de Sacramento', 'Colonia'),
('421471902343', '912', 'Rambla de los Argentinos','999horse', 'Atlantida', 'Canelones'),
('342382349114', '777', 'Groxland', 'pecescarnegladiadorespecespecespeces','Punta del Este', 'Maldonado'),
('261730947574', '913', 'Victor Blanco', 'gorgonzola','Punta del Este', 'Maldonado'),
('199923311001', '331', 'Manuel Rojo', 'slkaois124bnijcvibjdbnf', 'San José de Mayo', 'San José'),
('642155125434', '221', '1 de Enero', 'oiqerhg39i2rqueryfailure', 'San José de Mayo', 'San José'),
('754331234341', '332', 'Manuel Blanco', 'slksdgfasdgf', 'San José de Mayo', 'San José');


INSERT INTO emailcliente (email,rutcliente)
VALUES ('klepto@gmail.com', '221451902343'), ('rodriguez@hotmail.com', '342342349114'), ('atlantidad@hotmail.com', '261736997574'), ( 'mservicios@outlook.com', '102020205020'), ('molina@gmail.com', '221451954343'),('transformis@gmail.com','642123128434'),                  
('emporeon@gegl.com','111111323999'),('mastermandistribuidora@protonmail.com','421471902343'), ('pikadist@pokemonaddr.com','342382349114'), 
('virasang@viraservicios','261730947574'),('chamundi@distribuidoras.worldweb.com','199923311001'),('nomnom@nomcentral','642155125434'),('dsndistribuidora@dragonshank.com','754331234341');



INSERT INTO personas_de_contacto(ci)
VALUES ('56201985'), ('54197744'), ('44053401'), ('52733306'), ('69420911');


INSERT INTO personas_de_contacto_celular(ci, celular)
VALUES ('56201985', '093101300'), ('54197744', '094300210'), ('44053401', '095765343'), ('52733306', '096453345'), ('69420911', '097543244');


INSERT INTO personas_de_contacto_correo(ci, correo)
VALUES ('56201985', 'salvaelpro@gmail.com'), ('54197744', 'valeelgrande@gmail.com'), ('44053401', 'personacualquiera@outlook.com'), ('52733306', 'janoelperro@outlook.com'), ('69420911', 'ilovecheese@gmail.com');


INSERT INTO empresa_personas_de_contacto (ci, rut)
VALUES 
('56201985', '102020205020'),
('54197744', '221451902343'),
('44053401', '342342349114'),
('52733306', '261736997574'),
('69420911', '221451954343'),
('54197744', '102020205020'),
('52733306', '199924321001'),
('52733306', '642123128434'),
('56201985', '199924320001'),
('54197744', '442341342114'),
('44053401', '642125123434'),
('52733306', '342345211421'),
('69420911', '991231234341'),
('56201985', '111111323999'),
('54197744', '421471902343'),
('44053401', '196724321001'),
('52733306', '342382349114'),
('69420911', '642190128434'),
('56201985', '261730947574'),
('54197744', '221459214343'),
('44053401', '199923311001'),
('52733306', '442344344114'),
('69420911', '642155125434'),
('56201985', '142315239421'),
('54197744', '754331234341');


INSERT INTO pedido (idpedido, rutcliente, rutflete)
VALUES (1, '221451902343', '199924321001'), (2, '342342349114', '642125123434'),
(3, '102020205020', '342345211421'), (4, '261736997574', null),
(5, '221451954343', '442341342114');


INSERT INTO producto(codigop, stock, descripcion, precio_unitario, unidad_de_medida, peso)
VALUES (1, 93, 'rico queso azul', 99, 'Kg', 3), (2, 23, 'queso rallado artesano', 299, 'Unidad', 9), (3, 43, 'queso dambo de calidad', 199, 'Kg', 11), (4, 54, 'queso magro', 399, 'Kg', 5), (5, 76, 'queso artesanal', 69, 'Unidad', 6);

INSERT INTO codbar_producto(codigop, codbar)
VALUES (1, '100123'), (2, '099213'), (3, '002113'), (4, '099543'), (5, '331211');


INSERT INTO fotografia(idfoto, codigop, contenido)
VALUES (1, 1, '010101000010000101010010100100000'), (2, 2, '111101011010111101011010100101001'), (3, 3, '101001010100001000001010110101001'), (4, 4, '111101001010010101011010100101001'), (5, 5, '101010010101011110000010010110110');

INSERT INTO estado (nombreestado)
VALUES 
('pendiente'),
('en_proceso'),
('terminado'),
('congelado'),
('observado');



INSERT INTO estado_pedido (idpedido,nombreestado,fecha)
VALUES 
(1,'pendiente','2-1-2022'),
(2,'pendiente','1-1-2023'), (3,'pendiente','3-2-2023'), (1,'en_proceso','3-7-2022'), (2,'en_proceso','2-1-2023'), (3,'en_proceso','3-2-2023'), (1,'terminado','2-1-2023'), (2,'terminado','7-3-2023'), (3,'terminado','7-3-2023'), (4,'pendiente','2-2-2023'),
(5,'pendiente','17-5-2023'), (4,'en_proceso','10-2-2023'), (5,'en_proceso','21-5-2023'), (4,'terminado','19-2-2023'), (5,'terminado','30-5-2023');


INSERT INTO articulo (idarticulo, idpedido, codigop, cantidad, precioarticulo)
VALUES (1, 1, 2, 5, 1495), (1, 2, 1, 4, 396), (1, 3, 4, 2, 798), (1, 4, 5, 8, 552), (1, 5, 3, 3, 597);

/* Pedidos para probar el c */ 

/* Pedido */

INSERT INTO pedido(idpedido, rutflete, rutcliente)
VALUES(6, NULL, '221451902343');

INSERT INTO estado_pedido(idpedido, nombreestado, fecha)
VALUES (6, 'pendiente', '2022-09-2');

INSERT INTO estado_pedido(idpedido, nombreestado, fecha)
VALUES (6, 'en_proceso', '2022-09-3');

INSERT INTO estado_pedido(idpedido, nombreestado, fecha)
VALUES (6, 'terminado', '2022-09-4');

INSERT INTO articulo(idarticulo, idpedido, codigop, cantidad, precioarticulo)
VALUES (1, 6, 5, 10, 690);

/* Pedido 2 */

INSERT INTO pedido(idpedido, rutflete, rutcliente)
VALUES(7, NULL, '221451902343');

INSERT INTO estado_pedido(idpedido, nombreestado, fecha)
VALUES (7, 'pendiente', '2022-09-3');

INSERT INTO estado_pedido(idpedido, nombreestado, fecha)
VALUES (7, 'en_proceso', '2022-09-4');

INSERT INTO estado_pedido(idpedido, nombreestado, fecha)
VALUES (7, 'terminado', '2022-09-5');

INSERT INTO articulo(idarticulo, idpedido, codigop, cantidad, precioarticulo)
VALUES (1, 7, 5, 5, 345),(2,7,2,5,1495);

/*Sentencias SQL de extracción de datos*/

/*
b 
*/


SELECT estado_pedido.fecha, empresa.razonsocial, cliente.rutcliente, SUM(articulo.precioarticulo) AS precio_total 
FROM estado_pedido 
JOIN pedido ON estado_pedido.idpedido=pedido.idpedido 
JOIN cliente ON pedido.rutcliente=cliente.rutcliente 
JOIN empresa ON empresa.rut=cliente.rutcliente 
JOIN articulo ON pedido.idpedido=articulo.idpedido 
WHERE estado_pedido.fecha>'2022-12-31' AND estado_pedido.fecha<'2023-07-01' AND estado_pedido.nombreestado='pendiente'
GROUP BY estado_pedido.fecha,empresa.razonsocial,cliente.rutcliente,pedido.idpedido 
ORDER BY estado_pedido.fecha DESC, empresa.razonsocial ASC;

/*
c
*/

SELECT e.razonsocial, COUNT(p.idpedido) AS total 
FROM cliente c JOIN empresa e ON e.rut=c.rutcliente 
JOIN pedido p ON p.rutcliente=c.rutcliente 
JOIN estado_pedido ep ON ep.idpedido=p.idpedido 
WHERE ep.nombreestado='pendiente' AND ep.fecha>'2022-01-01' AND ep.fecha<'2023-08-02' 
GROUP BY e.razonsocial,c.rutcliente 
ORDER BY COUNT(p.idpedido) DESC 
LIMIT 3;

/*
d
*/

SELECT c.rutcliente, e.razonsocial, SUM(a.precioarticulo) AS importe_total FROM cliente c 
JOIN empresa e ON e.rut=c.rutcliente 
JOIN pedido p ON p.rutcliente=c.rutcliente 
JOIN articulo a ON a.idpedido=p.idpedido 
JOIN estado_pedido ep ON ep.idpedido=p.idpedido 
WHERE ep.nombreestado='pendiente' AND ep.fecha>'2022-01-01' AND ep.fecha<'2023-06-01' AND c.rutcliente='221451902343'
GROUP BY c.rutcliente,e.razonsocial;

/*
e
*/

SELECT p.descripcion, SUM(a.cantidad*p.peso) AS kilos_totales, SUM(a.cantidad*p.precio_unitario) AS precio_total FROM producto p
JOIN articulo a ON a.codigop=p.codigop
JOIN pedido pe ON a.idpedido=pe.idpedido
JOIN estado_pedido ep ON ep.idpedido=pe.idpedido
WHERE ep.nombreestado='pendiente' AND ep.fecha>'2022-09-1' AND ep.fecha<'2023-06-01'
GROUP BY p.descripcion,p.codigop;

/*
f
*/

SELECT p.descripcion, p.stock, p.unidad_de_medida, SUM(a.cantidad) AS cantidad_ventas FROM producto p
JOIN articulo a ON p.codigop=a.codigop
JOIN pedido pe ON pe.idpedido=a.idpedido
JOIN estado_pedido ep ON ep.idpedido=pe.idpedido
WHERE ep.nombreestado='pendiente' AND ep.fecha>'2022-09-1' AND ep.fecha<'2023-06-01' AND p.codigop='5'
GROUP BY p.codigop;

/*
g
*/

SELECT * FROM kpi_vista;

