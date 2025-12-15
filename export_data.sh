#!/bin/bash

DB="f1_2025"

# Prompt once for MySQL password
read -s -p "MySQL password: " MYSQL_PWD
echo
export MYSQL_PWD

mkdir -p data

# Driver Championship
mysql -u root -N "$DB" -e "
SELECT d.name, SUM(r.points) AS total_points
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
GROUP BY d.name
ORDER BY total_points DESC;
" > data/driver_championship.dat

# Constructor Championship
mysql -u root -N "$DB" -e "
SELECT c.team, SUM(r.points) AS total_points
FROM race_results r
JOIN constructors c ON r.constructor_id = c.constructor_id
GROUP BY c.team
ORDER BY total_points DESC;
" > data/constructor_championship.dat

# George Russell finishing positions
mysql -u root -N "$DB" -e "
SELECT g.race_date, g.name, r.position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE d.name = 'George Russell'
ORDER BY g.race_date;
" > data/george_russell_positions.dat

# Lando Norris finishing positions
mysql -u root -N "$DB" -e "
SELECT g.race_date, g.name, r.position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE d.name = 'Lando Norris'
ORDER BY g.race_date;
" > data/lando_norris_positions.dat

# Alex Albon finishing positions
mysql -u root -N "$DB" -e "
SELECT g.race_date, g.name, r.position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE d.name = 'Alexander Albon'
ORDER BY g.race_date;
" > data/alex_albon_positions.dat

# DNFs per Race
mysql -u root -N "$DB" -e "
SELECT g.race_date, g.name, COUNT(*) AS dnfs
FROM race_results r
JOIN grand_prix g ON r.gp_id = g.gp_id
WHERE r.position = 0
GROUP BY g.race_date, g.name
ORDER BY g.race_date;
" > data/dnfs_per_race.dat

# Points per Team per Race
mysql -u root -N "$DB" -e "
SELECT g.race_date, g.name, c.team, SUM(r.points) AS points
FROM race_results r
JOIN constructors c ON r.constructor_id = c.constructor_id
JOIN grand_prix g ON r.gp_id = g.gp_id
GROUP BY g.race_date, g.name, c.team
ORDER BY g.race_date, g.name, c.team;
" > data/team_points_per_race.dat

# Constructor reliability (DNFs per team)
mysql -u root -N "$DB" -e "
SELECT c.team, COUNT(*) AS dnfs
FROM race_results r
JOIN constructors c ON r.constructor_id = c.constructor_id
WHERE r.position = 0
GROUP BY c.team
ORDER BY dnfs DESC;
" > data/dnfs_per_team.dat

# Average Finishing Position per Driver
mysql -u root -N "$DB" -e "
SELECT d.name, FLOOR(AVG(r.position)) AS avg_position
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
WHERE r.position != 0
GROUP BY d.name
ORDER BY avg_position;
" > data/avg_finishing_position.dat

# Podiums per Driver
mysql -u root -N "$DB" -e "
SELECT d.name, COUNT(*) AS podiums
FROM race_results r
JOIN drivers d ON r.driver_id = d.driver_id
WHERE r.position BETWEEN 1 AND 3
GROUP BY d.name
ORDER BY podiums DESC;
" > data/podiums_per_driver.dat

# Fastest Lap Speed per Race
mysql -u root -N "$DB" -e "
SELECT g.race_date, g.name, COALESCE(MAX(r.kmh),0) AS fastest_speed
FROM grand_prix g
LEFT JOIN race_results r ON r.gp_id = g.gp_id
GROUP BY g.race_date, g.name
ORDER BY g.race_date;
" > data/fastest_lap_speed_per_race.dat

echo "All datasets exported successfully."
