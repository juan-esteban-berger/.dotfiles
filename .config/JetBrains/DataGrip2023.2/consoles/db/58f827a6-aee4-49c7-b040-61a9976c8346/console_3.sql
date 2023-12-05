SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
             FROM SBO_00_DISRESA.dbo.OITM
             WHERE U_Marca = 'SKECHERS'
UNION
SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
            FROM SBO_00_DISRESALV.dbo.OITM
            WHERE U_Marca = 'SKECHERS'
UNION
SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
              U_Genero, U_Division, U_Suela, U_SellItem,
              CreateDate, UpdateDate
            FROM SBO_RD_DISREGRD.dbo.OITM
            WHERE U_Marca = 'SKECHERS';
-----------------------------------------------------------

SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_00_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_00_DISRESALV' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_00_DISRESALV.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SB0_CR_ACCESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_CR_ACCESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
SELECT ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_GT_NEWERA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_ACCESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_PA_ACCESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_PA_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
        FROM SBO_PA_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA';


-----------------------------------------------------------



SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
       U_Genero, U_Division, U_Suela, U_SellItem,
       CreateDate, UpdateDate
FROM SBO_00_DISRESA.dbo.OITM
UNION


----------------------------------------------------------------------
SELECT TOP 10 ItemName, ItemCode, U_Estilo, U_Segmento, U_Coleccion_NE,
              U_Silueta, U_Genero, U_Liga, U_SellItem,
              CreateDate, UpdateDate
              FROM SBO_GT_NEWERA.dbo.OITM;

SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_00_DISRESALV' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_CR_ACCESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_CR_ACCESA.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_GT_DMTRADING' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_DMTRADING.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_NEWERA.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_PA_ACCESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_ACCESA.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_DISRESA.dbo.OITM
UNION
SELECT ItemName, ItemCode, 'SBO_RD_DISREGRD' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_RD_DISREGRD.dbo.OITM;

