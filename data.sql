-- Establecer el formato de fecha en la sesión actual
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

--  Insertar registros (ESTPER se asigna automáticamente como 'A')
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER)
VALUES (200, '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '998456323', 'V', '10/02/1970');

INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER)
VALUES (201, '45781233', 'Alicia', 'García Campos', 'alicia.garcia@gmail.com', '990545632', 'C', '20/03/1980');

INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER)
VALUES (202, '15487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', 'C', '06/06/1986');

COMMIT;

-- Verificar inserción
SELECT * FROM PERSONA;

- Actualizar apellidos y correo de Alicia García Campos
UPDATE PERSONA
SET APEPER = 'Méndez Vera',
    EMAPER = 'alicia.mendez@gmail.com'
WHERE NOMPER = 'Alicia' AND APEPER = 'García Campos';

COMMIT;

-- Verificar actualización
SELECT * FROM PERSONA;

- Marcar como inactivo al cliente con DNI 15487922
UPDATE PERSONA
SET ESTPER = 'I'
WHERE DNIPER = '15487922';

COMMIT;

-- Verificar inactivación
SELECT * FROM PERSONA;

-- Eliminar físicamente a Juana Ávila Chumpitaz
DELETE FROM PERSONA
WHERE NOMPER = 'Juana' AND APEPER = 'Ávila Chumpitaz';

COMMIT;

- Verificar eliminación
SELECT * FROM PERSONA;

--  Eliminar todos los registros de PERSONA
DELETE FROM PERSONA;

COMMIT;

-- ️Verificar que la tabla esté vacía
SELECT * FROM PERSONA;



-- Actividad


-- Insertar el registro de Alberto
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (200, '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '99045632', 'V', 'A', '10/02/1970');
COMMIT;

-- Insertar el registro de Alicia
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (201, '45781233', 'Alicia', 'Garcia Campos', NULL, 'NULL', 'C', 'A', '20/03/1980');
COMMIT;

-- Insertar el registro de Juana
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (202, '15487922', 'Juana', 'Avila Chumpitaz', 'juana.avila@gmail.com', '923568741', 'C', 'A', '06/06/1966');
COMMIT;

-- Insertar el registro de Ana
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (203, '22116633', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', NULL, 'V', 'A', '10/02/1970');
COMMIT;

-- Insertar el registro de Claudia (1)
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (204, '88741589', 'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845263', 'C', 'A', '25/07/1981');
COMMIT;

-- Insertar el registro de Mario
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (205, '45122587', 'Mario', 'Barrios Martinez', 'mario.barrios@outlook.com', '98662587', 'C', 'A', '10/10/1987');
COMMIT;

-- Insertar el registro de Brunela
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (206, '15258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', 'C', 'A', '06/06/1990');
COMMIT;

-- Insertar el registro de Alejandro
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (207, '47142536', 'Alejandro', 'Jimenez Huapaya', NULL, '941525365', 'C', 'A', '01/06/1989');
COMMIT;

-- Insertar el registro de Claudia (2)
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (208, '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '985814723', 'C', 'A', '01/10/1991');
COMMIT;

-- Insertar el registro de Mario (2)
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (209, '45772587', 'Mario', 'Rodriguez Mayo', 'mario.rodriguez@outlook.com', '912662587', 'C', 'A', '10/11/1987');
COMMIT;

-- Insertar el registro de Luisa
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (210, '87952514', 'Luisa', 'Guerra Ibarra', 'luisa.guerra@yahoo.com', '974422136', 'C', 'A', '21/12/1988');
COMMIT;

-- Insertar el registro de Pedro Alberto
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (211, '74142505', 'Pedro Alberto', 'Candela Valenzuela', 'pedro.candela@gmail.com', '94148525', 'C', 'A', '30/06/1995');
COMMIT;

-- Insertar el registro de Angel Manuel
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (212, '53298147', 'Angel Manuel', 'Rojas Avila', 'angel.rojas@outlook.com', NULL, 'C', 'A', '02/03/1975');
COMMIT;

-- Insertar el registro de Hilario Fabiano
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (213, '11453265', 'Hilario Fabiano', 'Avila Huapaya', NULL, '985514326', 'C', 'A', '02/05/2000');
COMMIT;

-- Insertar el registro de Octavio Adan
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (214, '75747218', 'Octavio Adan', 'Marquez Osorio', 'octavio.marquez@yahoo.es', '966223141', 'C', 'A', '22/09/2000');
COMMIT;

-- Insertar el registro de Manolo Enrique
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (215, '55869321', 'Manolo Enrique', 'Vasquez Saravia', 'manolo.vasquez@outlook.es', '966223141', 'C', 'A', '22/09/2000');
COMMIT;

-- Insertar el registro de Genoveva Pilar
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (216, '41552567', 'Genoveva Pilar', 'Ortiz Quispe', 'genoveva.ortiz@outlook.es', '92564137', 'C', 'A', '12/04/2003');
COMMIT;

-- Insertar el registro de Oscar Cesar
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (217, '49985471', 'Oscar Cesar', 'Quiroz Zavala', NULL, '988223145', 'C', 'A', '12/10/2004');
COMMIT;

-- Insertar el registro de Veronica
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (218, '44992217', 'Veronica', 'Romero Vargas', 'veronica.romero@yahoo.com', NULL, 'C', 'A', '25/08/2002');
COMMIT;


-- 5. Insertar los siguientes registros en la tabla CATEGORIA y confirmar cada transacción.

-- Insertar "Abarrotes"
INSERT INTO CATEGORIA (IDCAT, NOMCAT) VALUES (10, 'Abarrotes');
COMMIT;

-- Insertar "Carnes y Pollo"
INSERT INTO CATEGORIA (IDCAT, NOMCAT) VALUES (20, 'Carnes y Pollo');
COMMIT;

-- Insertar "Higiene y Limpieza"
INSERT INTO CATEGORIA (IDCAT, NOMCAT) VALUES (30, 'Higiene y Limpieza');
COMMIT;

-- Insertar "Bebidas y Licores"
INSERT INTO CATEGORIA (IDCAT, NOMCAT) VALUES (40, 'Bebidas y Licores');
COMMIT;

-- Insertar "Dulces y snacks"
INSERT INTO CATEGORIA (IDCAT, NOMCAT) VALUES (50, 'Dulces y snacks');
COMMIT;

-- Insertar "Electrodomesticos"
INSERT INTO CATEGORIA (IDCAT, NOMCAT) VALUES (60, 'Electrodomesticos');
COMMIT;

SELECT IDCAT, NOMCAT FROM CATEGORIA;

-- 6. Insertar los siguientes registros en la tabla PRODUCTO y confirmar cada transacción.

-- Producto P01
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P01', 'Arroz', 4.65, 50, 10, 'A');
COMMIT;

-- Producto P02
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P02', 'Azúcar', 3.45, 60, 10, 'A');
COMMIT;

-- Producto P03
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P03', 'Pollo fresco', 8.7, 20, 20, 'A');
COMMIT;

-- Producto P04
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P04', 'Lomo fino', 18.5, 40, 20, 'A');
COMMIT;

-- Producto P05
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P05', 'Detergente Opal', 8.75, 60, 30, 'A');
COMMIT;

-- Producto P06
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P06', 'Suavizante Ariel', 7.85, 30, 30, 'A');
COMMIT;

-- Producto P07
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P07', 'Six pack cerveza en lata', 19.85, 150, 40, 'A');
COMMIT;

-- Producto P08
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P08', 'Pack Johnnie Walker Black', 119.75, 150, 40, 'A');
COMMIT;

-- Producto P09
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P09', 'Ron Barceló gran añejo', 68.95, 150, 40, 'A');
COMMIT;

-- Producto P10
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P10', 'Filete de pechuga', 25.55, 50, 20, 'A');
COMMIT;

-- Producto P11
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P11', 'Deditos de pechuga de pollo', 12.75, 120, 20, 'A');
COMMIT;

-- Producto P12
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P12', 'Hamburguesa premium parrillera', 28.75, 150, 20, 'A');
COMMIT;

-- Producto P13
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P13', 'Nugget de pollo', 10.9, 100, 20, 'A');
COMMIT;

-- Producto P14
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P14', 'Tiras de pechuga de pollo', 13.5, 250, 20, 'A');
COMMIT;

-- Producto P15
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P15', 'Galletas Oreo', 6.88, 50, 50, 'A');
COMMIT;

-- Producto P16
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P16', 'Galleta Choco Donuts', 4.9, 90, 50, 'A');
COMMIT;

-- Producto P17
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P17', 'Huevo de pascua', 3.4, 70, 50, 'A');
COMMIT;

-- Producto P18
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P18', 'Bombones de chocolate', 35.9, 100, 50, 'A');
COMMIT;

-- Producto P19
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P19', 'Detergente en polvo opal 4KG.', 50.25, 250, 30, 'A');
COMMIT;

-- Producto P20
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P20', 'Detergente Marsella Aromaterapia 4KG.', 46.1, 150, 30, 'A');
COMMIT;

-- Producto P21
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P21', 'Detergente liquido aroma bebé 5L', 83.85, 200, 30, 'A');
COMMIT;

-- Producto P22
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P22', 'Jabón para lavar Caricia 200g.', 7.75, 90, 30, 'A');
COMMIT;

-- Producto P23
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P23', 'Lejía tradicional 18KG', 24.75, 200, 30, 'A');
COMMIT;

-- Producto P24
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P24', 'Jabón para lavar - Bolívar', 6.8, 100, 30, 'A');
COMMIT;

-- Producto P25
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P25', 'Pack de menestras de lenteja', 14.5, 120, 10, 'A');
COMMIT;

-- Producto P26
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P26', 'Mayonesa Alacena 850GR.', 16.9, 90, 10, 'A');
COMMIT;

-- Producto P27
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P27', 'Aceite de oliva extra virgen', 32.5, 145, 10, 'A');
COMMIT;

-- Producto P28
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P28', 'Fideos tallarin 500G', 3.9, 45, 10, 'A');
COMMIT;

-- Producto P29
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P29', 'Crema de avellanas con cacao', 7.8, 200, 10, 'A');
COMMIT;

-- Producto P30
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P30', 'Harina de trigo sin preparar', 8.1, 100, 10, 'A');
COMMIT;

-- Producto P31
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P31', 'Maicena Universal 180GR', 2.9, 85, 10, 'A');
COMMIT;

-- Producto P32
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P32', 'Harina de maíz blanco', 10.5, 100, 10, 'A');
COMMIT;

-- Producto P33
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P33', 'Leche condensada nestlé', 6.2, 135, 10, 'A');
COMMIT;

-- Producto P34
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P34', 'Duraznos en almíbar', 13.6, 180, 10, 'A');
COMMIT;

-- Producto P35
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P35', 'Chicharrón de cerdo', 29.5, 165, 20, 'A');
COMMIT;

-- Producto P36
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P36', 'Apanado de pollo', 37.95, 180, 20, 'A');
COMMIT;

-- Producto P37
INSERT INTO PRODUCTO (CODPROD, NOMPRO, PREPRO, STOCKPRO, IDCAT, ESTPRO) VALUES ('P37', 'Sopa de carne', 9.6, 170, 20, 'A');
COMMIT;



-- 7. Insertar los siguientes registros en la tabla VENTA y confirmar cada transacción.

-- Venta 1
INSERT INTO VENTA (IDVEN, FECHVEN, IDVEND, IDCLI, TIPPAVEN, ESTVEN) VALUES (1,'25/04/2023', 200, 202, 'E', 'A');
COMMIT;

-- Venta 2
INSERT INTO VENTA (IDVEN, FECHVEN, IDVEND, IDCLI, TIPPAVEN, ESTVEN) VALUES (2, '25/04/2023', 200, 204, 'T', 'A');
COMMIT;

-- Venta 3
INSERT INTO VENTA (IDVEN, FECHVEN, IDVEND, IDCLI, TIPPAVEN, ESTVEN) VALUES (3, '25/04/2023', 203, 205, 'T', 'A');
COMMIT;

-- Venta 4
INSERT INTO VENTA (IDVEN, FECHVEN, IDVEND, IDCLI, TIPPAVEN, ESTVEN) VALUES (4, '25/04/2023', 203, 206, 'E', 'A');
COMMIT;





-- Insertar los siguientes registros en la tabla VENTA_DETALLE y confirmar cada transacción.

-- Detalle de Venta IDVEN 1
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (300, 1, 'P01', 2);
COMMIT;

-- Detalle de Venta IDVEN 1
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (301, 1, 'P04', 4);
COMMIT;

-- Detalle de Venta IDVEN 2
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (302, 2, 'P06', 12);
COMMIT;

-- Detalle de Venta IDVEN 2
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (303, 2, 'P08', 6);
COMMIT;

-- Detalle de Venta IDVEN 2
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (304, 2, 'P11', 16);
COMMIT;

-- Detalle de Venta IDVEN 3
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (305, 3, 'P15', 8);
COMMIT;

-- Detalle de Venta IDVEN 4
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (306, 4, 'P09', 5);
COMMIT;

-- Detalle de Venta IDVEN 4
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (307, 4, 'P14', 13);
COMMIT;

-- Detalle de Venta IDVEN 4
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (308, 4, 'P20', 10);
COMMIT;

-- Detalle de Venta IDVEN 4
INSERT INTO VENTA_DETALLE (IDVENDET, IDVEN, CODPROD, CANVENDET) VALUES (309, 4, 'P21', 13);
COMMIT;


-- 9. Actualizar el número de celular de Mario Rodríguez Martínez por el número 922881101.
UPDATE PERSONA
SET CELPER = '922881101'
WHERE IDPER = 209;
COMMIT;

-- 10. El cliente de DNI 53298147 ya cuenta con número de celular: 977226604
UPDATE PERSONA
SET CELPER = '977226604'
WHERE DNIPER = '53298147';
COMMIT;

-- 11. Eliminar lógicamente los clientes cuyo DNI son: 11453265, 15487922 y 49985471
UPDATE PERSONA
SET ESTPER = 'I'
WHERE DNIPER IN ('11453265', '15487922', '49985471');
COMMIT;

-- 12. Los clientes cuyos DNI son: 87952514, 55869321 y 74142505 han perdido su celular por tanto debe estar en blanco.
UPDATE PERSONA
SET CELPER = NULL
WHERE DNIPER IN ('87952514', '55869321', '74142505');
COMMIT;

UPDATE PERSONA
SET ESTPER = 'A',
    EMAPER = 'oscar.quiroz@yahoo.es'
WHERE IDPER = 217;
COMMIT;

-- Insertar el registro de Gustavo Tadeo
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (219, '88225463', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', NULL, 'V', 'A','13/10/2001');
COMMIT;

-- Insertar el registro de Daniela
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (220, '15753595', 'Daniela', 'Solis Vargas', 'daniela.solis@outlook.com', NULL, 'C', 'A','09/11/1993');
COMMIT;

-- Insertar el registro de Milton Gregorio
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (221, '76314895', 'Milton Gregorio', 'Vásquez Iturrizaga', 'milton.gregorio@yahoo.es', '974815233', 'C', 'A','22/06/2004');
COMMIT;

-- Insertar el registro de Verónica
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (222, '84725001', 'Verónica', 'Ancajima Araujo', 'veronica.ancajima@yahoo.com', NULL, 'C', 'A','07/11/1980');
COMMIT;

-- Insertar el registro de Felicita
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (223, '11228514', 'Felicita', 'Marroquin Candela', 'felicita.marroquin@outlook.com', '966001472', 'V', 'A', '06/06/2006');
COMMIT;

-- Insertar el registro de Luhana
INSERT INTO PERSONA (IDPER, DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, ESTPER, FECNACPER)
VALUES (224, '51436952', 'Luhana', 'Ortiz Rodriguez', 'luhana.ortiz@outlook.com', '960405017', 'C', 'A', '25/11/1980');
COMMIT;


-- 15. Actualiza el precio del producto "Maicena Universal 180GR" (código P31) a 3.50.
UPDATE PRODUCTO
SET PREPRO = 3.50
WHERE CODPROD = 'P31';
COMMIT;

-- 16. Actualiza el nombre del producto de "Detergente Opal" a "Detergente Opal 1/2KG." (código P05).
UPDATE PRODUCTO
SET NOMPRO = 'Detergente Opal 1/2KG.'
WHERE CODPROD = 'P05';
COMMIT;

-- 17. Elimina físicamente los productos "Apanado de pollo" y "Sopa de carne".
DELETE FROM PRODUCTO
WHERE NOMPRO IN ('Apanado de pollo', 'Sopa de carne');
COMMIT;



-- 1️⃣ Eliminar de VENTA_DETALLE los registros que hacen referencia a P13, P16, P19
DELETE FROM VENTA_DETALLE
WHERE CODPROD IN ('P13', 'P16', 'P19');

-- 2️⃣ Eliminar de VENTA_DETALLE los registros con productos cuyo precio sea <= 10
DELETE FROM VENTA_DETALLE
WHERE CODPROD IN (
    SELECT CODPROD
    FROM PRODUCTO
    WHERE PREPRO <= 10
);
-- 18. Elimina físicamente los productos con los códigos P13, P16 y P19.
DELETE FROM PRODUCTO
WHERE CODPROD IN ('P13', 'P16', 'P19');
COMMIT;

-- 19. Elimina físicamente todos los productos cuyo precio es menor o igual a 10.

DELETE FROM PRODUCTO
WHERE PREPRO <= 10;

COMMIT;

-- 20. Elimina físicamente la categoría "Electrodomesticos".
DELETE FROM CATEGORIA
WHERE NOMCAT = 'Electrodomesticos';
COMMIT;

-- 20. Elimina físicamente la categoría "Electrodomesticos".
DELETE FROM CATEGORIA
WHERE NOMCAT = 'Electrodomesticos';
COMMIT;


-- Muestra todos los datos de la tabla PERSONA, ordenados por el ID de la persona de forma ascendente (de menor a mayor).
SELECT *
FROM PERSONA
ORDER BY IDPER ASC;

-- Muestra solo el ID y el nombre de la categoría de la tabla CATEGORIA.
SELECT IDCAT, NOMCAT FROM CATEGORIA;

-- Muestra todos los datos de la tabla PRODUCTO.
SELECT * FROM PRODUCTO;

-- Muestra todos los datos de la tabla VENTA, ordenados por el ID de la venta.
SELECT *
FROM VENTA
ORDER BY IDVEN;

-- Muestra todos los datos de la tabla VENTA_DETALLE.
SELECT * FROM VENTA_DETALLE;