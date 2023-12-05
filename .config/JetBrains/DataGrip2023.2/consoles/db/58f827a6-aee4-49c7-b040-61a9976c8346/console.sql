USE DB_INFORMACION;

EXEC DB_INFORMACION.dbo.spVentas 4,'2023-10-01','2023-10-15',4,1;

OINV -- Ventas
INV1 -- Ventas Detalle
OSLP --
OITM -- Productos
OWHS -- Bodega

USE SBO_00_DISRESALV;
SELECT TOP 50 ItemName, ItemCode, U_Division FROM SBO_00_DISRESA.dbo.OITM;