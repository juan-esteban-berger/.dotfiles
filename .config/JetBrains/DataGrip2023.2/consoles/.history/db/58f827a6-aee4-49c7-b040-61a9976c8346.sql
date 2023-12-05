EXEC DB_INFORMACION.dbo.spVentas 1,'2023-01-01','2023-10-15',4,1
;-- -. . -..- - / . -. - .-. -.--
EXEC DB_INFORMACION.dbo.spVentas 3,'2023-01-01','2023-10-15',4,1
;-- -. . -..- - / . -. - .-. -.--
EXEC DB_INFORMACION.dbo.spVentas 4,'2023-01-01','2023-10-15',4,1
;-- -. . -..- - / . -. - .-. -.--
EXEC DB_INFORMACION.dbo.spVentas 4,'2023-10-01','2023-10-15',4,1
;-- -. . -..- - / . -. - .-. -.--
USE DB_INFORMACION
;-- -. . -..- - / . -. - .-. -.--
USE SBO_00_DISRESALV
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 FROM SBO_00_DISRESA.dbo.OINV
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, U_Division FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 50 ItemName, ItemCode, U_Division FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 10 ItemName FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 1000 ItemCode, ItemName, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM WHERE U_Marca = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'SBO_00_DISRESA'
ORDER BY ORDINAL_POSITION
;-- -. . -..- - / . -. - .-. -.--
USE [SBO_DISRESA]
;-- -. . -..- - / . -. - .-. -.--
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'OITM'
ORDER BY ORDINAL_POSITION
;-- -. . -..- - / . -. - .-. -.--
SELECT COLUMN_NAME
FROM SBO_00_DISRESA.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'OITM'
ORDER BY ORDINAL_POSITION
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem
FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem
FROM SBO_00_DISRESA.dbo.OITM
WHERE LOWER(ItemName) LIKE '%jogger%'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_CR_ACCESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_GT_DMTRADING.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_GT_NEWERA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_GT_SERLOSA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_PA_ACCESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_PA_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Division, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Division, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESA.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_00_DISRESALV.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
UNION
SELECT U_Estilo, ItemCode, ItemName, U_Marca, U_Segmentacion_SK, U_Genero, U_Division, U_Suela, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM WHERE LOWER(ItemName) LIKE '%jogger%'
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, CreateDate, UpdateDate FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
             FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 10 ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
             FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 10 ItemName, ItemCode, U_Estilo, U_Segmento, U_Coleccion_NE,
              U_Silueta, U_Genero, U_Liga, U_SellItem,
              CreateDate, UpdateDate
              FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 3 ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
             FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT TOP 3 ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
            FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT TOP 3 ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
              U_Genero, U_Division, U_Suela, U_SellItem,
              CreateDate, UpdateDate
FROM SBO_RD_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
             FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
            FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT ItemName, ItemCode, U_Estilo, U_Segmentacion_SK,
              U_Genero, U_Division, U_Suela, U_SellItem,
              CreateDate, UpdateDate
            FROM SBO_RD_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, Empresa, U_Marca, U_SellItem,
       CreateDate, UpdateDate, SnapDate
FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_CR_ACCESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_DMTRADING.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_NEWERA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_ACCESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_DISRESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM RD_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_CR_ACCESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_DMTRADING.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_NEWERA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_ACCESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_DISRESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_RD_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 1 ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_00_DISRESALV' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_00_DISRESALV.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_CR_ACCESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_CR_ACCESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_GT_DMTRADING' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_DMTRADING.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_GT_NEWERA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_PA_ACCESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_ACCESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_PA_DISRESA.dbo.OITM
UNION
SELECT TOP 1 ItemName, ItemCode, 'SBO_RD_DISREGRD' AS Empresa, U_Marca, U_SellItem, CreateDate, UpdateDate
FROM SBO_RD_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
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
            WHERE U_Marca = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Equipo
FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Equipo,
FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Equipo FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
             WHERE U_Marca = 'NEW ERA'
             FROM SBO_GT_NEWERA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
             U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team
             FROM SBO_GT_NEWERA.dbo.OITM
             WHERE U_Marca = 'NEW ERA'
;-- -. . -..- - / . -. - .-. -.--
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
        WHERE U_Marca = 'NEW ERA'
SELECT ItemName, ItemCode, 'SBO_GT_NEWERA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_GT_NEWERA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_ACCESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_PA_ACCESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_PA_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
UNION
SELECT ItemName, ItemCode, 'SBO_PA_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_PA_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA';
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
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Estilo,
        U_Segmento, U_Silueta, U_Coleccion_NE, U_Liga, U_Team,
				CreateDate, UpdateDate
        FROM SBO_00_DISRESA.dbo.OITM
        WHERE U_Marca = 'NEW ERA'
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(ItemCode) FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(ItemCode), DISTINCT(ItemCode) AS 'INV1_ItemCode' FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(ItemCode) AS 'ItemCode', DISTINCT(ItemCode) AS 'INV1_ItemCode' FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(ItemCode) AS 'INV1_ItemCode' FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
SELECT 'SBO_PA_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_PA_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM(
         SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
         SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM
             ) AS table1
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT (ItemCode) FROM SBO_OO_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT (ItemCode) FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
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
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM)
;-- -. . -..- - / . -. - .-. -.--
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
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM) AS subqery
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM(
         SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
         SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM
             ) AS table1
LEFT JOIN (SELECT DISTINCT(ItemCode) FROM SBO_00_DISRESA.dbo.INV1) AS table2
ON table1.ItemCode = table2.ItemCode
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM(
         SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
         SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM
             ) AS table1
RIGHT JOIN (SELECT DISTINCT(ItemCode) FROM SBO_00_DISRESA.dbo.INV1) AS table2
ON table1.ItemCode = table2.ItemCode
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM(
         SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
         SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM
             ) AS table1
RIGHT JOIN (SELECT DISTINCT(ItemCode) AS INV1_ItemCode FROM SBO_00_DISRESA.dbo.INV1) AS table2
ON table1.ItemCode = table2.INV1_ItemCode
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM(
         SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_00_DISRESA.dbo.OITM
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
         SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_SellItem FROM SBO_RD_DISREGRD.dbo.OITM
             ) AS table1
LEFT JOIN (SELECT DISTINCT(ItemCode) AS INV1_ItemCode FROM SBO_00_DISRESA.dbo.INV1) AS table2
ON table1.ItemCode = table2.INV1_ItemCode
;-- -. . -..- - / . -. - .-. -.--
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
ON table1.ItemCode = table2.INV1_ItemCode
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
) PARTITION BY LIST (SnapDate)
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM SBO_00_DISRESA.dbo.OTIM WHERE U_Marca = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM SBO_00_DISRESA.dbo.OITM WHERE U_Marca = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SBO_00_DISRESA.dbo.OITM WHERE U_Marca = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM WHERE U_Marca = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'MUEBLES')
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM DB_INFORMACION.dbo.VENTAS_PBI
;-- -. . -..- - / . -. - .-. -.--
exec spVentas 1,'2022-01-01','2023-09-26',4,1
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'POP')
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM SBO_00_DISRESA.dbo.OINV
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 * FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 ItemCode, Quantity FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, Quantity FROM SBO_00_DISRESA.dbo.INV1
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 DocDate, DocNum, * FROM SBO_00_DISRESA.dbo.OINV
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 DocDate, DocNum, * FROM SBO_00_DISRESA.dbo.OINV ORDER BY DocNum DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 DocDate, DocNum FROM SBO_00_DISRESA.dbo.OINV ORDER BY DocNum DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT DocEntry, DocDate, Quantity FROM SBO_00_DISRESA.dbo.INV1 WHERE 640005920
;-- -. . -..- - / . -. - .-. -.--
SELECT DocEntry, DocDate, Quantity FROM SBO_00_DISRESA.dbo.INV1 WHERE DocNum = 640005920
;-- -. . -..- - / . -. - .-. -.--
SELECT DocEntry, DocDate, Quantity FROM SBO_00_DISRESA.dbo.INV1 WHERE DocEntry = 640005920
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP 5 DocDate, DocEntry, DocNum FROM SBO_00_DISRESA.dbo.OINV ORDER BY DocNum DESC
;-- -. . -..- - / . -. - .-. -.--
5
;-- -. . -..- - / . -. - .-. -.--
SELECT DocEntry, DocDate, Quantity FROM SBO_00_DISRESA.dbo.INV1 WHERE DocEntry = '669605'
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'NEW ERA')
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, SUM(Quantity) FROM SBO_00_DISRESA.dbo.INV1
GROUP BY ItemCode
;-- -. . -..- - / . -. - .-. -.--
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'USA STREETWEAR MENS')
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'SKECHERS')
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'USASTREETWEARMENS')
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'SKECHERS GIRLS')
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'COURT')
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = 'NO APLICA')
;-- -. . -..- - / . -. - .-. -.--
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
EXEC sp_columns SBO_00_DISRESA.dbo.OITM
;-- -. . -..- - / . -. - .-. -.--
SELECT
    name AS COLUMN_NAME,
    system_type_name AS DATA_TYPE
FROM
    sys.columns
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar = 'COURT';

SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar = 'USA';
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'USA';
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'COURT';
SELECT ItemCode, ItemName, U_Estilo, U_Marca, U_Division FROM SBO_00_DISRESA.dbo.OITM
WHERE (U_Marca = 'SKECHERS') AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'COURT';
DECLARE @u_marca_val nvarchar(50) = 'SKECHERS';
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'COURT';
DECLARE @u_marca_val nvarchar(50) = 'SKECHERS';
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'COURT';
DECLARE @u_marca_val nvarchar(50) = 'SKECHERS';
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'COURT';
DECLARE @u_marca_val nvarchar(50) = 'SKECHERS';
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
--DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

DECLARE @col_to_clean NVARCHAR(50) = 'U_Division'

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @col_to_clean)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

DECLARE @col_to_clean NVARCHAR(50) = 'U_Division'

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (@col_to_clean = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

DECLARE @col_to_clean NVARCHAR(50) = 'U_Division';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (@col_to_clean = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
--DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';
--DECLARE @u_div_val nvarchar(50) = 'NO APLICA';

;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_div_val nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
--DECLARE @u_div_val nvarchar(50) = 'POP';
--DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';
--DECLARE @u_div_val nvarchar(50) = 'MUEBLES';
DECLARE @u_div_val nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @u_div_val nvarchar(50) = 'COURT';
--DECLARE @u_div_val nvarchar(50) = 'SKECHERS';
--DECLARE @u_div_val nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @u_div_val nvarchar(50) = 'SPORT WOMENS';
DECLARE @u_div_val nvarchar(50) = 'POP';
--DECLARE @u_div_val nvarchar(50) = 'NEW ERA';
--DECLARE @u_div_val nvarchar(50) = 'OUTDOOR MENS';
--DECLARE @u_div_val nvarchar(50) = 'MUEBLES';
--DECLARE @u_div_val nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @u_div_val)
;-- -. . -..- - / . -. - .-. -.--
DECLARE @cal_to_change nvarchar(50) = 'NO APLICA'
;-- -. . -..- - / . -. - .-. -.--
DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS'
;-- -. . -..- - / . -. - .-. -.--
SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @val_to_change nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @val_to_change nvarchar(50) = 'COURT';
--DECLARE @val_to_change nvarchar(50) = 'SKECHERS';
--DECLARE @val_to_change nvarchar(50) = 'USASTREETWEARMENS';
--DECLARE @val_to_change nvarchar(50) = 'SPORT WOMENS';
--DECLARE @val_to_change nvarchar(50) = 'POP';
DECLARE @val_to_change nvarchar(50) = 'NEW ERA';
--DECLARE @val_to_change nvarchar(50) = 'OUTDOOR MENS';
--DECLARE @val_to_change nvarchar(50) = 'MUEBLES';
--DECLARE @val_to_change nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SBO_GT_NEWERA.dbo.OITM WHERE ItemCode = '0';_
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SBO_GT_NEWERA.dbo.OITM WHERE ItemCode = '0'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SBO_GT_NEWERA.dbo.OITM WHERE ItemCode = '301000683840653'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, * FROM SBO_GT_NEWERA.dbo.OITM WHERE ItemCode = '301000683840653'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, U_SellItem, * FROM SBO_GT_NEWERA.dbo.OITM WHERE ItemCode = '301000683840653'
;-- -. . -..- - / . -. - .-. -.--
SELECT U_Estilo, U_SellItem, * FROM SBO_GT_NEWERA.dbo.OITM WHERE ItemCode = '804001388133553'
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @val_to_change nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @val_to_change nvarchar(50) = 'COURT';
--DECLARE @val_to_change nvarchar(50) = 'SKECHERS';
--DECLARE @val_to_change nvarchar(50) = 'USASTREETWEARMENS';
DECLARE @val_to_change nvarchar(50) = 'SPORT WOMENS';
--DECLARE @val_to_change nvarchar(50) = 'POP';
DECLARE @val_to_change nvarchar(50) = 'NEW ERA';
--DECLARE @val_to_change nvarchar(50) = 'OUTDOOR MENS';
--DECLARE @val_to_change nvarchar(50) = 'MUEBLES';
--DECLARE @val_to_change nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change);
;-- -. . -..- - / . -. - .-. -.--
--DECLARE @val_to_change nvarchar(50) = 'SKECHERS GIRLS';
--DECLARE @val_to_change nvarchar(50) = 'COURT';
--DECLARE @val_to_change nvarchar(50) = 'SKECHERS';
--DECLARE @val_to_change nvarchar(50) = 'USASTREETWEARMENS';
DECLARE @val_to_change nvarchar(50) = 'SPORT WOMENS';
--DECLARE @val_to_change nvarchar(50) = 'POP';
--DECLARE @val_to_change nvarchar(50) = 'NEW ERA';
--DECLARE @val_to_change nvarchar(50) = 'OUTDOOR MENS';
--DECLARE @val_to_change nvarchar(50) = 'MUEBLES';
--DECLARE @val_to_change nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change);
;-- -. . -..- - / . -. - .-. -.--
DECLARE @val_to_change nvarchar(50) = 'NO APLICA';

DECLARE @u_marca_val NVARCHAR(50) = 'SKECHERS';

SELECT 'SBO_00_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
SELECT 'SBO_00_DISRESALV' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_00_DISRESALV.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
UNION
--SELECT 'SBO_CR_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_CR_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_DMTRADING' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_DMTRADING.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_GT_NEWERA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_GT_NEWERA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_ACCESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_ACCESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
--SELECT 'SBO_PA_DISRESA' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
--FROM SBO_PA_DISRESA.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change)
--UNION
SELECT 'SBO_RD_DISREGRD' AS Empresa, ItemCode, ItemName, U_Estilo, U_Marca, U_Division
FROM SBO_RD_DISREGRD.dbo.OITM WHERE (U_Marca = @u_marca_val) AND (U_Division = @val_to_change);
;-- -. . -..- - / . -. - .-. -.--
SELECT ItemName, ItemCode, 'SBO_00_DISRESA' AS Empresa, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
             FROM SBO_00_DISRESA.dbo.OITM
             WHERE U_Marca = 'SKECHERS'
UNION
SELECT ItemName, ItemCode, 'SBO_00_DISRESALV' AS Empresa, U_Estilo, U_Segmentacion_SK,
             U_Genero, U_Division, U_Suela, U_SellItem,
             CreateDate, UpdateDate
            FROM SBO_00_DISRESALV.dbo.OITM
            WHERE U_Marca = 'SKECHERS'
UNION
SELECT ItemName, ItemCode, 'SBO_RD_DISREGRD' AS Empresa, U_Estilo, U_Segmentacion_SK,
              U_Genero, U_Division, U_Suela, U_SellItem,
              CreateDate, UpdateDate
            FROM SBO_RD_DISREGRD.dbo.OITM
            WHERE U_Marca = 'SKECHERS'