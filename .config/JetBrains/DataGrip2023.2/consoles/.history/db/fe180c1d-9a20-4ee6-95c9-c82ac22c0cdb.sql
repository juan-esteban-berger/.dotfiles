SELECT datname FROM pg_database;
;-- -. . -..- - / . -. - .-. -.--
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';
;-- -. . -..- - / . -. - .-. -.--
SELECT schema_name FROM information_schema.schemata;
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE SKECHERS;
;-- -. . -..- - / . -. - .-. -.--
CREATE SCHEMA DISRESA;
;-- -. . -..- - / . -. - .-. -.--
USE DISRESA;
;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),             -- assuming names up to 255 characters
    ItemCode VARCHAR(255),             -- assuming codes up to 255 characters
    U_Estilo VARCHAR(255),             -- assuming estilo up to 255 characters
    U_Segmentacion_SK VARCHAR(255),    -- assuming segmentacion up to 255 characters
    U_Genero VARCHAR(255),              -- assuming genero up to 50 characters
    U_Division VARCHAR(255),           -- assuming division up to 100 characters
    U_Suela VARCHAR(255),              -- assuming suela up to 100 characters
    U_SellItem VARCHAR(255)             -- assuming sell item indication up to 50 characters
);
;-- -. . -..- - / . -. - .-. -.--
use disresa;
;-- -. . -..- - / . -. - .-. -.--
SET SEARCH_PATH TO DISRESA;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
		Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmentacion_SK VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Division VARCHAR(255),
    U_Suela VARCHAR(255),
    U_SellItem BOOLEAN,
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate DATE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
		Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Liga VARCHAR(255),
    U_SellItem BOOLEAN,
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate DATE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SKECHERS;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DISRESA.skechers;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmentacion_SK VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Division VARCHAR(255),
    U_Suela VARCHAR(255),
    U_SellItem NUMERIC, -- Changed from BOOLEAN to NUMERIC
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate DATE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Liga VARCHAR(255),
    U_SellItem NUMERIC, -- Changed from BOOLEAN to NUMERIC
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate DATE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmentacion_SK VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Division VARCHAR(255),
    U_Suela VARCHAR(255),
    U_SellItem NUMERIC, -- Changed from BOOLEAN to NUMERIC
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate TIMESTAMP WITH TIME ZONE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Liga VARCHAR(255),
    U_SellItem NUMERIC, -- Changed from BOOLEAN to NUMERIC
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate TIMESTAMP WITH TIME ZONE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(ItemCode) FROM DISRESA.skechers;
;-- -. . -..- - / . -. - .-. -.--
DROP disresa.skechers;
DROP disresa.newera;;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmentacion_SK VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Division VARCHAR(255),
    U_Suela VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate TIMESTAMP WITH TIME ZONE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Liga VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP WITH TIME ZONE,
    UpdateDate TIMESTAMP WITH TIME ZONE,
    SnapDate TIMESTAMP WITH TIME ZONE
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE disresa.skechers;
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE disresa.newera;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmentacion_SK VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Division VARCHAR(255),
    U_Suela VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP,
    UpdateDate TIMESTAMP,
    SnapDate TIMESTAMP
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Liga VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP,
    UpdateDate TIMESTAMP,
    SnapDate TIMESTAMP
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM disresa.newera;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM disresa.skechers;
;-- -. . -..- - / . -. - .-. -.--
SELECT nmsp_parent.nspname AS parent_schema,
       parent.relname      AS parent,
       nmsp_child.nspname  AS child_schema,
       child.relname       AS child
FROM pg_inherits
JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
JOIN pg_class child             ON pg_inherits.inhrelid = child.oid
JOIN pg_namespace nmsp_parent   ON parent.relnamespace = nmsp_parent.oid
JOIN pg_namespace nmsp_child    ON child.relnamespace = nmsp_child.oid
WHERE parent.relname = 'disresa.u_marca';
;-- -. . -..- - / . -. - .-. -.--
SELECT nmsp_parent.nspname AS parent_schema,
       parent.relname      AS parent,
       nmsp_child.nspname  AS child_schema,
       child.relname       AS child
FROM pg_inherits
JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
JOIN pg_class child             ON pg_inherits.inhrelid = child.oid
JOIN pg_namespace nmsp_parent   ON parent.relnamespace = nmsp_parent.oid
JOIN pg_namespace nmsp_child    ON child.relnamespace = nmsp_child.oid
WHERE parent.relname = 'disresa.skechers';
;-- -. . -..- - / . -. - .-. -.--
SELECT nmsp_parent.nspname AS parent_schema,
       parent.relname      AS parent,
       nmsp_child.nspname  AS child_schema,
       child.relname       AS child
FROM pg_inherits
JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
JOIN pg_class child             ON pg_inherits.inhrelid = child.oid
JOIN pg_namespace nmsp_parent   ON parent.relnamespace = nmsp_parent.oid
JOIN pg_namespace nmsp_child    ON child.relnamespace = nmsp_child.oid
WHERE parent.relname = skechers;
;-- -. . -..- - / . -. - .-. -.--
SELECT nmsp_parent.nspname AS parent_schema,
       parent.relname      AS parent,
       nmsp_child.nspname  AS child_schema,
       child.relname       AS child
FROM pg_inherits
JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
JOIN pg_class child             ON pg_inherits.inhrelid = child.oid
JOIN pg_namespace nmsp_parent   ON parent.relnamespace = nmsp_parent.oid
JOIN pg_namespace nmsp_child    ON child.relnamespace = nmsp_child.oid
WHERE parent.relname = disresa.skechers;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    nmsp_parent.nspname AS parent_schema,
    parent.relname      AS parent,
    nmsp_child.nspname  AS child_schema,
    child.relname       AS child
FROM pg_inherits
    JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
    JOIN pg_class child             ON pg_inherits.inhrelid   = child.oid
    JOIN pg_namespace nmsp_parent   ON nmsp_parent.oid  = parent.relnamespace
    JOIN pg_namespace nmsp_child    ON nmsp_child.oid   = child.relnamespace
WHERE parent.relname='disresa.u_marca';
;-- -. . -..- - / . -. - .-. -.--
SET SEARCH_PATH TO disresa;
;-- -. . -..- - / . -. - .-. -.--
 
;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    inhrelid::regclass AS partition_name
FROM
    pg_inherits
WHERE
    inhparent = 'parent_table_name'::regclass;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    inhrelid::regclass AS partition_name
FROM
    pg_inherits
WHERE
inhparent = 'disresa.skechers'::regclass;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    inhrelid::regclass AS partition_name
FROM
    pg_inherits
WHERE
inhparent = 'disresa.u_marca'::regclass;
;-- -. . -..- - / . -. - .-. -.--
SELECT inhrelid::regclass AS partition_name FROM pg_inherits WHERE inhparent = 'disresa.{table}'::regclass;
;-- -. . -..- - / . -. - .-. -.--
SELECT inhrelid::regclass AS partition_name FROM pg_inherits WHERE inhparent = 'disresa.u_marca'::regclass;
;-- -. . -..- - / . -. - .-. -.--
;;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM disresa.u_marca_20231115_143019;
;-- -. . -..- - / . -. - .-. -.--
SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'disresa'
  AND table_name   = 'U_Marca';
;-- -. . -..- - / . -. - .-. -.--
SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'disresa'
  AND table_name   = 'u_marca';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM disresa.u_marca_20231115_143019 LIMIT 5;
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_00_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_00_DISRESALV' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_00_DISRESALV.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SB0_CR_ACCESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_CR_ACCESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA';
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_00_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA';
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Liga VARCHAR(255),
    U_Team VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP,
    UpdateDate TIMESTAMP,
    SnapDate TIMESTAMP
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
SET search_path TO DISRESA;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE U_SellItem (
    Empresa VARCHAR(255),
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    U_Marca VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP,
    UpdateDate TIMESTAMP,
    INV1_ItemCode VARCHAR(255),
    SnapDate TIMESTAMP
) PARTITION BY LIST (SnapDate);