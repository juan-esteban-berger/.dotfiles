CREATE DATABASE fitness;
;-- -. . -..- - / . -. - .-. -.--
USE fitness;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE daily_metrics (
    date DATE,
    weight DECIMAL(12, 6),
    input_calories DECIMAL(12, 6),
    cardio_calories DECIMAL(12, 6),
    protein_grams DECIMAL(12, 6),
    carbs_grams DECIMAL(12, 6),
    fat_grams DECIMAL(12, 6),
    swim_kms DECIMAL(12, 6),
    bike_kms DECIMAL(12, 6),
    run_kms DECIMAL(12, 6),
    calisthenics BOOLEAN,
    flips BOOLEAN,
    upper_weights BOOLEAN,
    lower_weights BOOLEAN
);