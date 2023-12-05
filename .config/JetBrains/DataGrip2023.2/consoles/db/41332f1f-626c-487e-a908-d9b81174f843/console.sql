USE fitness;

SELECT * FROM nutrition;

ALTER TABLE nutrition ADD COLUMN Food VARCHAR(255) AFTER Meal;

DESCRIBE nutrition;

CREATE table strength (
	Date date,
	Start_Time timestamp,
	End_Time timestamp,
	Gym varchar(255),
    Exercise_Group varchar(255),
    Direction varchar(255),
    Equipment varchar(255),
	Exercise varchar(255),
    Static int,
    Body_Pos varchar(255),
    Width varchar(255),
    Side varchar(255),
	Set_Number int,
    Weight_lbs int,
	Full_Reps int,
	Half_Reps int,
	Duration_Full decimal,
	Duration_Half decimal
);

DROP TABLE strength;

SELECT * FROM strength;

DROP TABLE daily_metrics;

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

INSERT INTO daily_metrics (Date, Weight, Caloric_Input, Cardio_Calories,
                             Carbs, Fat, Protein,
                             Swim_m,Bike_km, Run_km)
VALUES ('2023-11-27', 128.2, 665, 86,
        107, 17, 34,
        0, 0, 2.27);

SELECT * FROM daily_metrics;

DROP TABLE triathlon;

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

INSERT INTO triathlon (Date, Start_Time, End_Time, Gym,
                       Sport, Subsport, Environment, Indoor,
                       Set_Number, Set_Duration_Hours, Set_Duration_Mins, Set_Duration_Seconds,
                       Set_Avg_Speed_kmh, Set_Avg_Power, Set_Avg_Incline)
VALUES ('2023-11-27', '2023-11-27 19:22:00', '2023-11-27 19:52:00', 'Fitness One Cayala',
        'Running', 'Walking', 'Treadmill', 1,
        1, 0, 30, 7,
            4.51, NULL, 0.0);

SELECT * FROM triathlon;