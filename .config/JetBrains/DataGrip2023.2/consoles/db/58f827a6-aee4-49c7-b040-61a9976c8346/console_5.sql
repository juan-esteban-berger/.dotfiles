USE SBO_00_DISRESA;

SELECT * FROM(
         SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_00_DISRESA.dbo.OITM
         UNION
         SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_00_DISRESALV.dbo.OITM
         UNION
         SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_CR_ACCESA.dbo.OITM
         UNION
         SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_GT_DMTRADING.dbo.OITM
         UNION
         SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_GT_NEWERA.dbo.OITM
         UNION
         SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_PA_ACCESA.dbo.OITM
         UNION
         SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_PA_DISRESA.dbo.OITM
         UNION
         SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem, CreateDate, UpdateDate FROM SBO_RD_DISREGRD.dbo.OITM
             ) AS table1
LEFT JOIN (SELECT DISTINCT(ItemCode) AS INV1_ItemCode FROM SBO_00_DISRESA.dbo.INV1) AS table2
ON table1.ItemCode = table2.INV1_ItemCode;

-- Count
SELECT COUNT(Empresa) FROM (SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_CR_ACCESA.dbo.OITM
UNION
SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_GT_DMTRADING.dbo.OITM
UNION
SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_GT_NEWERA.dbo.OITM
UNION
SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_PA_ACCESA.dbo.OITM
UNION
SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_PA_DISRESA.dbo.OITM
UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM) AS subqery;

SELECT DISTINCT (ItemCode) FROM SBO_00_DISRESA.dbo.INV1;

-- Set the search path to the Disresa schema
SET search_path TO DISRESA;

-- Create Skechers Parent Table with date columns
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'NEW ERA')