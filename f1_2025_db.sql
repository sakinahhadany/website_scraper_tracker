CREATE DATABASE f1_2025;
USE f1_2025;

CREATE TABLE grand_prix (
    gp_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100),
    race_date DATE
);

CREATE TABLE drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    car_num INT NOT NULL,
    team VARCHAR(100) NOT NULL,
    UNIQUE (car_num, name)
);

CREATE TABLE constructors (
    constructor_id INT AUTO_INCREMENT PRIMARY KEY,
    team VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE race_results (
    race_result_id INT AUTO_INCREMENT PRIMARY KEY,
    gp_id VARCHAR(10),
    driver_id INT,
    constructor_id INT,
    position INT NULL,
    laps INT NULL,
    time VARCHAR(20),
    gap VARCHAR(20),
    kmh DECIMAL(6,3),
    pits INT,
    retirement VARCHAR(50),
    points INT,
    pen INT,
    reprim INT,
    FOREIGN KEY (gp_id) REFERENCES grand_prix(gp_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id),
    UNIQUE (gp_id, driver_id)
);

-- Driver Championship
SELECT d.name, SUM(r.points) AS total_points
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
GROUP BY d.name
ORDER BY total_points DESC;

-- Constructor Championship
SELECT c.team, SUM(r.points) AS total_points
FROM race_results r
JOIN constructors c ON r.constructor_id = c.constructor_id
GROUP BY c.team
ORDER BY total_points DESC;

-- George Russell finishing positions
SELECT g.race_date, g.name AS grand_prix, r.position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE d.name = 'George Russell'
ORDER BY g.race_date;

-- Lando Norris finishing positions
SELECT g.race_date, g.name AS grand_prix, r.position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE d.name = 'Lando Norris'
ORDER BY g.race_date;

-- Alex Albon finishing positions
SELECT g.race_date, g.name AS grand_prix, r.position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE d.name = 'Alexander Albon'
ORDER BY g.race_date;

-- DNFs per Race
SELECT g.race_date, g.name AS grand_prix, COUNT(*) AS dnfs
FROM race_results r
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE r.position = 0
GROUP BY g.race_date, g.name
ORDER BY g.race_date;

-- Points per Team per Race
SELECT g.race_date, g.name AS grand_prix, c.team, SUM(r.points) AS points
FROM race_results r
JOIN constructors c ON r.constructor_id = c.constructor_id
JOIN grand_prix g ON r.gp_id = g.gp_id
GROUP BY g.race_date, g.name, c.team
ORDER BY g.race_date, g.name, c.team;

-- Constructor reliability (DNFs per team)
SELECT c.team, COUNT(*) AS dnfs
FROM race_results r
JOIN constructors c ON r.constructor_id = c.constructor_id
WHERE r.position = 0
GROUP BY c.team
ORDER BY dnfs DESC;

-- Average Finishing Position per Driver
SELECT d.name, FLOOR(AVG(r.position)) AS avg_position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
WHERE r.position != 0
GROUP BY d.name
ORDER BY avg_position;

-- Podiums per Driver (top 3)
SELECT d.name, COUNT(*) AS podiums
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
WHERE r.position BETWEEN 1 AND 3
GROUP BY d.name
ORDER BY podiums DESC;

-- Fastest Lap Speed
SELECT g.race_date, g.name, COALESCE(MAX(r.kmh),0) AS fastest_speed
FROM grand_prix g
LEFT JOIN race_results r ON r.gp_id = g.gp_id
GROUP BY g.race_date, g.name
ORDER BY g.race_date;







