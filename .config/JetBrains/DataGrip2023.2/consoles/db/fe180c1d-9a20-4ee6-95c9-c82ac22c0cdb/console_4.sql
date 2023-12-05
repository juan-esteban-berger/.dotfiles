-- Set the search path to the Disresa schema
SET search_path TO DISRESA;

-- Create Skechers Parent Table with date columns
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

-- Create New Era Parent Table with date columns
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

SELECT * FROM disresa.skechers;

SELECT COUNT(ItemCode) FROM DISRESA.skechers;

SELECT * FROM disresa.newera;