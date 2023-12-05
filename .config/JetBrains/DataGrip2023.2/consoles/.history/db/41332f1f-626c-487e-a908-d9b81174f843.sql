USE fitness;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE nutrition ADD COLUMN Food AFTER Meal;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE nutrition ADD COLUMN Food VARCHAR(255) AFTER Meal;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM nutrition;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM nutrition;
;-- -. . -..- - / . -. - .-. -.--
CREATE table strength (
	Date date,
	Start_Time timestamp,
	End_Time timestamp,
	Gym varchar(255),
	Exercise varchar(255),
	Equipment varchar(255),
	Set_Number int,
	Full_Reps int,
	Half_Reps int,
	Duration_Full decimal,
	Duration_Half decimal,
	Static int,
	Width varchar(255)
);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO strength (Date, Start_Time, End_Time, Gym,
                      Exercise, Equipment, Set_Number, Full_Reps,
                      Half_Reps, Duration_Full, Duration_Half, Static,
                      Width)
VALUES ('2023-11-27', '2023-11-27 19:58:00', '2023-11-27 20:32:00', 'Fitness One Cayala',
        'Pull Ups', 'Straight Bar', 1, 10,
        0, 0, 0, 0,
        'Normal');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO strength (Date, Start_Time, End_Time, Gym,
                      Exercise, Equipment, Set_Number, Full_Reps,
                      Half_Reps, Duration_Full, Duration_Half, Static,
                      Width)
VALUES ('2023-11-27', '2023-11-27 19:58:00', '2023-11-27 20:32:00', 'Fitness One Cayala',
        'Push Ups', 'Floor', 1, 30,
        0, 0, 0, 0,
        'Normal');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO strength (Date, Start_Time, End_Time, Gym,
                      Exercise, Equipment, Set_Number, Full_Reps,
                      Half_Reps, Duration_Full, Duration_Half, Static,
                      Width)
VALUES ('2023-11-27', '2023-11-27 19:58:00', '2023-11-27 20:32:00', 'Fitness One Cayala',
        'Advanced Tuck Front Lever Hold', 'Straight Bar', 1, 0,
        0, 7, 0, 1,
        'Normal');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO strength (Date, Start_Time, End_Time, Gym,
                      Exercise, Equipment, Set_Number, Full_Reps,
                      Half_Reps, Duration_Full, Duration_Half, Static,
                      Width)
VALUES ('2023-11-27', '2023-11-27 19:58:00', '2023-11-27 20:32:00', 'Fitness One Cayala',
        'Dips', 'Assisted Pull Ups Machine', 1, 15,
        0, 0, 0, 0,
        'Normal');
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE strength;
;-- -. . -..- - / . -. - .-. -.--
CREATE table strength (
	Date date,
	Start_Time timestamp,
	End_Time timestamp,
	Gym varchar(255),
	Exercise varchar(255),
	Equipment varchar(255),
	Set_Number int,
	Full_Reps int,
	Half_Reps int,
	Duration_Full decimal,
	Duration_Half decimal,
	Static int,
	Width varchar(255),
    Body_Pos varchar(255)
);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM strength;
;-- -. . -..- - / . -. - .-. -.--
DESCRIBE nutrition;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE daily_metrics (
  Date DATE,
  Weight DECIMAL,
  Caloric_Input INT,
  Caloric_Output INT,
  Carbs INT,
  Fat INT,
  Protein INT,
  Swim_m DECIMAL,
  Bike_km DECIMAL,
  Run_km DECIMAL
);
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE daily_metrics;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE daily_metrics (
  Date DATE,
  Weight DECIMAL,
  Caloric_Input INT,
  Cardio_Calories INT,
  Carbs INT,
  Fat INT,
  Protein INT,
  Swim_m DECIMAL,
  Bike_km DECIMAL,
  Run_km DECIMAL
);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO daily_metrics (Date, Weight, Caloric_Input, Cardio_Calories,
                             Carbs, Fat, Protein,
                             Swim_m,Bike_km, Run_km)
VALUES ('2023-11-27', 128.2, 665, 86,
        107, 17, 34,
        0, 0, 2.27);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM daily_metrics;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE triathlon (
  Date DATE NOT NULL,
  Start_Time DATETIME NOT NULL,
  End_Time DATETIME NOT NULL,
  Gym VARCHAR(255),
  Sport VARCHAR(255) NOT NULL,
  Subsport VARCHAR(255) NOT NULL,
  Environment VARCHAR(255) NOT NULL,
  Indoor INT NOT NULL,
  Set_Number INT NOT NULL,
  Set_Duration_Hours INT NOT NULL,
  Set_Duration_Mins INT NOT NULL,
  Set_Duration_Seconds DECIMAL(10,2) NOT NULL,
  Set_Avg_Speed DECIMAL(10,2) NOT NULL,
  Set_Avg_Power DECIMAL(10,2) NOT NULL,
  Set_Avg_Incline DECIMAL(10,2) NOT NULL,
  Equipment VARCHAR(255)
);
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE triathlon (
  Date DATE,
  Start_Time DATETIME,
  End_Time DATETIME,
  Gym VARCHAR(255),
  Sport VARCHAR(255),
  Subsport VARCHAR(255),
  Environment VARCHAR(255),
  Indoor INT,
  Set_Number INT,
  Set_Duration_Hours INT,
  Set_Duration_Mins INT,
  Set_Duration_Seconds DECIMAL(10,2),
  Set_Avg_Speed_kmh DECIMAL(10,2),
  Set_Avg_Power DECIMAL(10,2),
  Set_Avg_Incline DECIMAL(10,2),
  Equipment VARCHAR(255)
);
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE Triathlon;
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE triathlon;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO triathlon (Date, Start_Time, End_Time,
                       Sport, Subsport, Environment, Indoor,
                       Set_Number, Set_Duration_Hours, Set_Duration_Mins, Set_Duration_Seconds,
                       Set_Avg_Speed_kmh, Set_Avg_Power, Set_Avg_Incline)
VALUES ('2023-11-27', '2023-11-27 19:22:00', '2023-11-27 19:52:00',
        'Running', 'Walking', 'Treadmill', 1,
        1, 0, 30, 7,
            4.51, NULL, 0.0);
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM triathlon;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE triathlon (
  Date DATE,
  Start_Time DATETIME,
  End_Time DATETIME,
  Gym VARCHAR(255),
  Sport VARCHAR(255),
  Subsport VARCHAR(255),
  Environment VARCHAR(255),
  Indoor INT,
  Set_Number INT,
  Set_Duration_Hours INT,
  Set_Duration_Mins INT,
  Set_Duration_Seconds DECIMAL,
  Set_Avg_Speed_kmh DECIMAL,
  Set_Avg_Power DECIMAL,
  Set_Avg_Incline DECIMAL,
  Equipment VARCHAR(255)
);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO triathlon (Date, Start_Time, End_Time, Gym,
                       Sport, Subsport, Environment, Indoor,
                       Set_Number, Set_Duration_Hours, Set_Duration_Mins, Set_Duration_Seconds,
                       Set_Avg_Speed_kmh, Set_Avg_Power, Set_Avg_Incline)
VALUES ('2023-11-27', '2023-11-27 19:22:00', '2023-11-27 19:52:00', 'Fitness One Cayala',
        'Running', 'Walking', 'Treadmill', 1,
        1, 0, 30, 7,
            4.51, NULL, 0.0);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM triathlon;