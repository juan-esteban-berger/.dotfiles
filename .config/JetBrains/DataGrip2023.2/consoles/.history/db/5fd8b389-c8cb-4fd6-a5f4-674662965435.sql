CREATE TABLE strong (
    Date DATE,
    Workout_Name VARCHAR(255),
    Duration TIME,
    Exercise_Name VARCHAR(255),
    Set_Order INT,
    Weight FLOAT,
    Reps INT,
    Distance INT,
    Seconds INT,
    Notes TEXT,
    Workout_Notes TEXT,
    RPE FLOAT
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE myfitnesspal (
    Date DATE,
    Workout_Name VARCHAR(255),
    Duration VARCHAR(255),
    Exercise_Name FLOAT,
    Set_Order FLOAT,
    Weight FLOAT,
    Reps FLOAT,
    Distance FLOAT,
    Seconds FLOAT,
    Notes VARCHAR(255),
    Workout_Notes VARCHAR(255)
);
;-- -. . -..- - / . -. - .-. -.--
L;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE strong
MODIFY COLUMN Date DATETIME;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE strong
CHANGE Duration Duration_min VARCHAR(255),
CHANGE Weight Weight_lbs FLOAT;
;-- -. . -..- - / . -. - .-. -.--
DROP table myfitnesspal;
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM myfitnesspal;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(DATE) FROM myfitnesspal;
;-- -. . -..- - / . -. - .-. -.--
CREATE DATABASE finance;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE fact_workout (
    date DATE,
    workout_start_time TIMESTAMP,
    workout_end_time TIMESTAMP,
    location VARCHAR(255),
    bodybuilding INT, -- 1 for yes, 0 for no
    calisthenics INT, -- 1 for yes, 0 for no
    swimming INT, -- 1 for yes, 0 for no
    cycling INT, -- 1 for yes, 0 for no
    running INT -- 1 for yes, 0 for no
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_strength (
    workout_start_time TIMESTAMP,
    exercise_name VARCHAR(255),
    equipment VARCHAR(255),
    exercise_group VARCHAR(255), -- Options: 'Horizontal Push', 'Horizontal Pull', 'Vertical Push', 'Vertical Pull', 'Leg Extension', 'Flips', 'Abs', 'Obliques'
    set_number INT,
    rep_number INT,
    range_of_motion VARCHAR(255), -- Options: 'Full', 'Half', 'Mini'
    exercise_type VARCHAR(255), -- Options: 'Dynamic', 'Negatives', 'Static'
    duration INT, -- 'Duration in seconds for isometric workouts and negatives',
    warm_up INT, -- 1 for yes, 0 for no
    failed_to_lift INT, -- 1 for yes, 0 for no
    body_position VARCHAR(255), -- Options: 'Straight', 'Banana', 'Half-Lever', 'Scorpion', 'Flat Tuck', 'Tuck'
    grip_stance VARCHAR(255) -- Options: 'Closer', 'Shoulder Width', 'Wide'
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_cardio (
    workout_start_time TIMESTAMP,
    sport VARCHAR(255), -- Options: 'Swim', 'Bike', 'Run'
    sub_sport VARCHAR(255), -- Options: 'Road Run', 'Trail Run', 'Track Run', 'Treadmill Run', 'Outdoor Bike', 'Indoor Bike', '25yd Swim', '25m Swim', '50m Swim', 'Open Water Swim', 'Road Bike', 'Triathlon Bike', 'Stationary Bike', 'Mountain Bike'
    stroke VARCHAR(255), -- Options: 'Freestyle', 'Backstroke', 'Breastroke', 'Butterfly', 'IM', 'Run', 'Walk'
    indoor_outdoor VARCHAR(255), -- Options: 'Indoor', 'Outdoor'
    set_number INT,
    rep_number INT,
    rep_duration INT -- 'Duration in seconds',
    rep_distance FLOAT--  'Distance in meters or yards',
    rep_avg_power INT -- 'Average power in watts',
    rep_avg_speed FLOAT -- 'Average speed in m/s or km/h',
    rep_avg_inclination FLOAT -- 'Average inclination in degrees or percentage'
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_cardio (
    workout_start_time TIMESTAMP,
    sport VARCHAR(255), -- Options: 'Swim', 'Bike', 'Run'
    sub_sport VARCHAR(255), -- Options: 'Road Run', 'Trail Run', 'Track Run', 'Treadmill Run', 'Outdoor Bike', 'Indoor Bike', '25yd Swim', '25m Swim', '50m Swim', 'Open Water Swim', 'Road Bike', 'Triathlon Bike', 'Stationary Bike', 'Mountain Bike'
    stroke VARCHAR(255), -- Options: 'Freestyle', 'Backstroke', 'Breastroke', 'Butterfly', 'IM', 'Run', 'Walk'
    indoor_outdoor VARCHAR(255), -- Options: 'Indoor', 'Outdoor'
    set_number INT,
    rep_number INT,
    rep_duration INT, -- 'Duration in seconds',
    rep_distance FLOAT,--  'Distance in meters or yards',
    rep_avg_power INT, -- 'Average power in watts',
    rep_avg_speed FLOAT, -- 'Average speed in m/s or km/h',
    rep_avg_inclination FLOAT, -- 'Average inclination in degrees or percentage'
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_cardio (
    workout_start_time TIMESTAMP,
    sport VARCHAR(255), -- Options: 'Swim', 'Bike', 'Run'
    sub_sport VARCHAR(255), -- Options: 'Road Run', 'Trail Run', 'Track Run', 'Treadmill Run', 'Outdoor Bike', 'Indoor Bike', '25yd Swim', '25m Swim', '50m Swim', 'Open Water Swim', 'Road Bike', 'Triathlon Bike', 'Stationary Bike', 'Mountain Bike'
    stroke VARCHAR(255), -- Options: 'Freestyle', 'Backstroke', 'Breastroke', 'Butterfly', 'IM', 'Run', 'Walk'
    indoor_outdoor VARCHAR(255), -- Options: 'Indoor', 'Outdoor'
    set_number INT,
    rep_number INT,
    rep_duration INT, -- 'Duration in seconds',
    rep_distance FLOAT,--  'Distance in meters or yards',
    rep_avg_power INT, -- 'Average power in watts',
    rep_avg_speed FLOAT, -- 'Average speed in m/s or km/h',
    rep_avg_inclination FLOAT -- 'Average inclination in degrees or percentage'
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_weight (
    date DATE,
    weight FLOAT -- 'Weight in kilograms or pounds'
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_nutrition (
    date DATE,
    meal INT, -- Meal number (e.g., 1 for breakfast, 2 for lunch, etc.)
    food VARCHAR(255), -- Description of the food item
    calories INT, -- Calories in the meal
    carbs INT, -- Carbohydrates in grams
    fat INT, -- Fat in grams
    protein INT, -- Protein in grams
    cholest INT, -- Cholesterol in milligrams (mg)
    sodium INT, -- Sodium in milligrams (mg)
    sugar INT, -- Sugar in grams
    fiber INT -- Fiber in grams
);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO dim_weight (date, weight) VALUES ('2023-11-20', 128.4);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO dim_weight (date, weight) VALUES ('2023-11-21', 128.8);
;-- -. . -..- - / . -. - .-. -.--
USE fitness;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE dim_strength (
    workout_start_time TIMESTAMP,
    exercise_name VARCHAR(255),
    equipment VARCHAR(255),
    exercise_group VARCHAR(255), -- Options: 'Horizontal Push', 'Horizontal Pull', 'Vertical Push', 'Vertical Pull', 'Leg Extension', 'Flips', 'Abs', 'Obliques'
    set_number INT,
    rep_number INT,
    range_of_motion VARCHAR(255), -- Options: 'Full', 'Half', 'Mini'
    side VARCHAR(255), -- Options: Right_Side, Left_Side, Bilateral
    exercise_type VARCHAR(255), -- Options: 'Dynamic', 'Negatives', 'Static'
    duration INT, -- 'Duration in seconds for isometric workouts and negatives',
    warm_up INT, -- 1 for yes, 0 for no
    failed_to_lift INT, -- 1 for yes, 0 for no
    body_position VARCHAR(255), -- Options: 'Straight', 'Banana', 'Half-Lever', 'Scorpion', 'Flat Tuck', 'Tuck'
    grip_stance VARCHAR(255) -- Options: 'Closer', 'Shoulder Width', 'Wide'
);
;-- -. . -..- - / . -. - .-. -.--
SHOW COLUMNS FROM dim_strength;
;-- -. . -..- - / . -. - .-. -.--
DESCRIBE dim_strength;