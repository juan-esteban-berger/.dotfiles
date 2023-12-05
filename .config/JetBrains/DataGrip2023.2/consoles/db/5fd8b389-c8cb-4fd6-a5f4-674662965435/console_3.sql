USE fitness;

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

SHOW COLUMNS FROM dim_strength;

DESCRIBE dim_strength;