-- Set the search path to the Disresa schema
SET search_path TO DISRESA;

-- Create Skechers Parent Table with date columns
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
) PARTITION BY LIST (SnapDate);