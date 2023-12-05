-- ACCESA GT
EXEC DB_INFORMACION.dbo.spVentas 2, '2017-01-01', '2023-12-31', 14, 1

-- DISRESAL SV
EXEC DB_INFORMACION.dbo.spVentas 3, '2017-01-01', '2023-12-31', 14, 1

-- DISREGRD RD
EXEC DB_INFORMACION.dbo.spVentas 4, '2017-01-01', '2023-12-31', 14, 1

-- ACCESA PA
EXEC DB_INFORMACION.dbo.spVentas 5, '2017-01-01', '2023-12-31', 14, 1

-- DISRESA PA
EXEC DB_INFORMACION.dbo.spVentas 6, '2017-01-01', '2023-12-31', 14, 1

-- ACCESA CR
EXEC DB_INFORMACION.dbo.spVentas 7, '2017-01-01', '2023-12-31', 14, 1

-- DM TRADING GT
EXEC DB_INFORMACION.dbo.spVentas 8, '2017-01-01', '2023-12-31', 14, 1

SELECT 'SBO_GT_NEWERA' AS Empresa, U_SellItem, ItemCode
FROM SBO_GT_NEWERA.dbo.OITM WHERE U_SellItem = '-1'
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, U_SellItem, ItemCode
FROM SBO_00_DISRESALV.dbo.OITM WHERE U_SellItem = '-1'
UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, U_SellItem, ItemCode
FROM SBO_RD_DISREGRD.dbo.OITM WHERE U_SellItem = '-1'
UNION
SELECT 'SBO_PA_ACCESA' AS Empresa, U_SellItem, ItemCode
FROM SBO_PA_ACCESA.dbo.OITM WHERE U_SellItem = '-1'
UNION
SELECT 'SBO_PA_DISRESA' AS Empresa, U_SellItem, ItemCode
FROM SBO_PA_DISRESA.dbo.OITM WHERE U_SellItem = '-1'
UNION
SELECT 'SBO_CR_ACCESA' AS Empresa, U_SellItem, ItemCode
FROM SBO_CR_ACCESA.dbo.OITM WHERE U_SellItem = '-1'
UNION
SELECT 'SBO_GT_DMTRADING' AS Empresa, U_SellItem, ItemCode
FROM SBO_GT_DMTRADING.dbo.OITM WHERE U_SellItem = '-1';