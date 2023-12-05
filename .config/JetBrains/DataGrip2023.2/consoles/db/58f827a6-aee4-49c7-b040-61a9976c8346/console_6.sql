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
            WHERE U_Marca = 'SKECHERS';