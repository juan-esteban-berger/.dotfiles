SET search_path TO DISRESA;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE PSYCHOBUNNY (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Genero VARCHAR(255),
    U_Cod_Color NUMERIC,
    U_Descrip_Color VARCHAR(255),
    U_Prenda VARCHAR(255),
    U_SubPrenda VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP,
    UpdateDate TIMESTAMP,
    SnapDate TIMESTAMP
) PARTITION BY LIST (SnapDate);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera.newera_20231201_100238;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera_20231201_100238
WHERE U_Estilo;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera_20231201_100238
WHERE 'U_Estilo';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera_20231201_100238
WHERE 'U_Estilo' = NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera_20231201_100238
WHERE 'u_estilo' = NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM newera_20231201_100238;