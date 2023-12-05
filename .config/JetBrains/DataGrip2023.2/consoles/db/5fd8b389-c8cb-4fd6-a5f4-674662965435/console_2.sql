USE fitness;
SHOW TABLES;

ALTER TABLE strong
MODIFY COLUMN Date DATETIME;

ALTER TABLE strong
CHANGE Duration Duration_min VARCHAR(255),
CHANGE Weight Weight_lbs FLOAT;

DROP table myfitnesspal;

CREATE TABLE myfitnesspal (
    Date DATE,
    Meal INT,
    FOODS VARCHAR(255),
    Calories INT,
    Carbs_g FLOAT,
    Fat_g FLOAT,
    Protein_g FLOAT,
    Cholest_mg FLOAT,
    Sodium_mg FLOAT,
    Sugar_g FLOAT,
    Fiber_g FLOAT
);
DELETE FROM myfitnesspal;

SELECT DISTINCT(DATE) FROM myfitnesspal;
