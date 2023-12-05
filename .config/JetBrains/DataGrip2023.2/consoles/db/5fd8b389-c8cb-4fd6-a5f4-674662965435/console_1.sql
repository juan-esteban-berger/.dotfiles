USE fitness;


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
