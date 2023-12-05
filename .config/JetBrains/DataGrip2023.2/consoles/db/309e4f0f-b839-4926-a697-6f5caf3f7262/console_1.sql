SELECT TOP 5 ItemCode FROM SBO_00_DISRESA.dbo.OITM;

SELECT ItemCode, ItemName, 'SBO_GT_NEWERA' AS Empresa,
        U_Estilo, U_Genero, U_Cod_Color, U_Descrip_Color,
        U_Prenda, U_SubPrenda,
        U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_NEWERA.dbo.OITM
WHERE U_Marca = 'PSYCHO BUNNY'
UNION
SELECT ItemCode, ItemName, 'SBO_RD_DISREGRD' AS Empresa,
        U_Estilo, U_Genero, U_Cod_Color, U_Descrip_Color,
        U_Prenda, U_SubPrenda,
        U_SellItem, CreateDate, UpdateDate
FROM SBO_RD_DISREGRD.dbo.OITM
WHERE U_Marca = 'PSYCHO BUNNY';