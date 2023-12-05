SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_00_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_00_DISRESALV' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_00_DISRESALV.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SB0_CR_ACCESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_CR_ACCESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
SELECT ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_GT_NEWERA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_ACCESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_PA_ACCESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_PA_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team, U_SellItem,
				CreateDate, UpdateDate
        FROM SBO_PA_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA';