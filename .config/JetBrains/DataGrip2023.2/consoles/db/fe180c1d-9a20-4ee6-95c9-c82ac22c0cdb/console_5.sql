SET SEARCH_PATH TO disresa;

SELECT
    inhrelid::regclass AS partition_name
FROM
    pg_inherits
WHERE
inhparent = 'disresa.u_marca'::regclass;
SELECT inhrelid::regclass AS partition_name FROM pg_inherits WHERE inhparent = 'disresa.u_marca'::regclass;
SELECT * FROM disresa.skechers;

SELECT nmsp_parent.nspname AS parent_schema,
       parent.relname      AS parent,
       nmsp_child.nspname  AS child_schema,
       child.relname       AS child
FROM pg_inherits
JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
JOIN pg_class child             ON pg_inherits.inhrelid = child.oid
JOIN pg_namespace nmsp_parent   ON parent.relnamespace = nmsp_parent.oid
JOIN pg_namespace nmsp_child    ON child.relnamespace = nmsp_child.oid
WHERE parent.relname = disresa.skechers;

SELECT * FROM disresa.u_marca_20231115_143019 LIMIT 5;

SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'disresa'
  AND table_name   = 'u_marca';

SELECT
    nmsp_parent.nspname AS parent_schema,
    parent.relname      AS parent,
    nmsp_child.nspname  AS child_schema,
    child.relname       AS child
FROM pg_inherits
    JOIN pg_class parent            ON pg_inherits.inhparent = parent.oid
    JOIN pg_class child             ON pg_inherits.inhrelid   = child.oid
    JOIN pg_namespace nmsp_parent   ON nmsp_parent.oid  = parent.relnamespace
    JOIN pg_namespace nmsp_child    ON nmsp_child.oid   = child.relnamespace
WHERE parent.relname='disresa.u_marca';

-- Set the search path to the Disresa schema
SET search_path TO DISRESA;

-- Create New Era Parent Table with date columns
CREATE TABLE NEWERA (
    ItemName VARCHAR(255),
    ItemCode VARCHAR(255),
    Empresa VARCHAR(255),
    U_Estilo VARCHAR(255),
    U_Segmento VARCHAR(255),
    U_Silueta VARCHAR(255),
    U_Coleccion_NE VARCHAR(255),
    U_Liga VARCHAR(255),
    U_Team VARCHAR(255),
    U_SellItem NUMERIC,
    CreateDate TIMESTAMP,
    UpdateDate TIMESTAMP,
    SnapDate TIMESTAMP
) PARTITION BY LIST (SnapDate);
