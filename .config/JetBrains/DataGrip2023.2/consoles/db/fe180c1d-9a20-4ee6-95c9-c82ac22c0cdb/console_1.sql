-- Create DISRESA Schema
CREATE SCHEMA DISRESA;

-- USE Disresa Schema
SET search_path TO DISRESA;

-- Create Skechers Table
CREATE TABLE SKECHERS (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmentacion_SK VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Division VARCHAR(255),
    U_Suela VARCHAR(255),
    U_SellItem VARCHAR(255)
);

