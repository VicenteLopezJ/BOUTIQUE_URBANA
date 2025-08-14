-- 1️⃣ Eliminar el TABLESPACE si existe (incluye sus datos y datafiles)
DROP TABLESPACE TBSURBANA INCLUDING CONTENTS AND DATAFILES;

-- 2️⃣ Eliminar el usuario si existe, junto con sus objetos (CASCADE)
DROP USER urbana CASCADE;

-- 3️⃣ Crear nuevamente el TABLESPACE TBSURBANA con tamaño inicial 300MB
CREATE TABLESPACE TBSURBANA
DATAFILE 'TBSURBANA.dbf'
SIZE 300M;

-- 4️⃣ Permitir creación de usuario común en CDB/PDB (solo en entornos multitenant)
ALTER SESSION SET "_oracle_script" = TRUE;

-- 5️⃣ Crear usuario URBANA con tablespace por defecto TBSURBANA
CREATE USER urbana
IDENTIFIED BY ORCL1234
DEFAULT TABLESPACE TBSURBANA
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON TBSURBANA;

-- 6️⃣ Otorgar privilegios necesarios al usuario
GRANT CREATE SESSION TO urbana;     
GRANT CREATE TABLE TO urbana;       
GRANT CREATE VIEW TO urbana;         
GRANT CREATE PROCEDURE TO urbana;  
GRANT CREATE TRIGGER TO urbana;     
GRANT CREATE SEQUENCE TO urbana;     
GRANT CREATE JOB TO urbana;          
GRANT UNLIMITED TABLESPACE TO urbana;

-- 7️⃣ Establecer el esquema actual a URBANA
ALTER SESSION SET CURRENT_SCHEMA = urbana;

-- 8️⃣ Eliminar tablas si ya existían (manejo con bloque PL/SQL para evitar errores)
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE VENTA_DETALLE CASCADE CONSTRAINTS';
    EXECUTE IMMEDIATE 'DROP TABLE VENTA CASCADE CONSTRAINTS';
    EXECUTE IMMEDIATE 'DROP TABLE PRODUCTO CASCADE CONSTRAINTS';
    EXECUTE IMMEDIATE 'DROP TABLE PERSONA CASCADE CONSTRAINTS';
    EXECUTE IMMEDIATE 'DROP TABLE CATEGORIA CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL;  -- Ignorar errores si las tablas no existen
END;
/

-- 9️⃣ Crear tablas según el diagrama físico

-- Tabla de categorías de productos
CREATE TABLE CATEGORIA (
    IDCAT INTEGER PRIMARY KEY,
    NOMCAT VARCHAR2(60)
);

-- Tabla de personas (clientes y vendedores)
CREATE TABLE PERSONA (
    IDPER INTEGER PRIMARY KEY,
    DNIPER CHAR(8),
    NOMPER VARCHAR2(60),
    APEPER VARCHAR2(60),
    EMAPER VARCHAR2(60),
    CELPER CHAR(9),
    TIPPER CHAR(1),
    FECNACPER DATE,
    ESTPER CHAR(1) DEFAULT 'A'
);

-- Tabla de productos
CREATE TABLE PRODUCTO (
    CODPROD CHAR(3) PRIMARY KEY,
    NOMPRO VARCHAR2(50),
    IDCAT INTEGER,
    PREPRO NUMBER(8,2),
    STOCKPRO INTEGER,
    ESTPRO CHAR(1)DEFAULT 'A', 
    CONSTRAINT FK_PRODUCTO_CATEGORIA FOREIGN KEY (IDCAT) REFERENCES CATEGORIA(IDCAT)
);

-- Tabla de ventas
CREATE TABLE VENTA (
    IDVEN INTEGER PRIMARY KEY,
    FECHVEN DATE,
    IDCLI INTEGER, 
    IDVEND INTEGER, 
    TIPPAVEN CHAR(1), 
    ESTVEN CHAR(1)DEFAULT 'A',   
    CONSTRAINT FK_VENTA_CLIENTE FOREIGN KEY (IDCLI) REFERENCES PERSONA(IDPER),
    CONSTRAINT FK_VENTA_VENDEDOR FOREIGN KEY (IDVEND) REFERENCES PERSONA(IDPER)
);

-- Tabla de detalle de ventas
CREATE TABLE VENTA_DETALLE (
    IDVENDET INTEGER PRIMARY KEY,
    IDVEN INTEGER,
    CODPROD CHAR(3),
    CANVENDET INTEGER,
    CONSTRAINT FK_DETALLE_VENTA FOREIGN KEY (IDVEN) REFERENCES VENTA(IDVEN),
    CONSTRAINT FK_DETALLE_PRODUCTO FOREIGN KEY (CODPROD) REFERENCES PRODUCTO(CODPROD)
);

-- 🔍 Consulta 1: Mostrar todas las relaciones (FOREIGN KEYS) del usuario URBANA
SELECT
    ac1.table_name   AS tabla_origen,
    acc1.column_name AS columna_origen,
    ac2.table_name   AS tabla_destino,
    acc2.column_name AS columna_destino
FROM all_constraints ac1
JOIN all_cons_columns acc1
    ON ac1.constraint_name = acc1.constraint_name
    AND ac1.owner = acc1.owner
JOIN all_constraints ac2
    ON ac1.r_constraint_name = ac2.constraint_name
    AND ac1.r_owner = ac2.owner
JOIN all_cons_columns acc2
    ON ac2.constraint_name = acc2.constraint_name
    AND ac2.owner = acc2.owner
WHERE ac1.constraint_type = 'R'
  AND ac1.owner = 'URBANA'
ORDER BY tabla_origen, columna_origen;

-- 🔍 Consulta 2: Verificar existencia del tablespace TBSURBANA
SELECT TABLESPACE_NAME, STATUS, CONTENTS
FROM DBA_TABLESPACES
WHERE TABLESPACE_NAME = 'TBSURBANA';

-- 🔍 Consulta 3: Verificar existencia del usuario URBANA
SELECT USERNAME, ACCOUNT_STATUS
FROM DBA_USERS
WHERE USERNAME = 'URBANA';

-- 🔍 Consulta 4: Listar tablas creadas por el usuario URBANA
SELECT TABLE_NAME
FROM ALL_TABLES
WHERE OWNER = 'URBANA';
