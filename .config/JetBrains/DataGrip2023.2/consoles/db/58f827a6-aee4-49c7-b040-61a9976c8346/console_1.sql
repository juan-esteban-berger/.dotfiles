-- Select Column Names
SELECT COLUMN_NAME
FROM SBO_00_DISRESA.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'OITM'
ORDER BY ORDINAL_POSITION;

SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem
FROM SBO_00_DISRESA.dbo.OITM;

SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem
FROM SBO_00_DISRESA.dbo.OITM
WHERE LOWER(ItemName) LIKE '%jogger%';

SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%';

SELECT ItemName, CreateDate, UpdateDate FROM SBO_00_DISRESA.dbo.OITM;