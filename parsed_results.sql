USE f1_2025;
INSERT IGNORE INTO grand_prix (gp_id, name, race_date) VALUES
('12627', 'Australia Grand Prix', '2025-03-16'),
('12628', 'China Grand Prix', '2025-03-23'),
('12629', 'Japan Grand Prix', '2025-04-06'),
('12630', 'Bahrain Grand Prix', '2025-04-13'),
('12631', 'Saudi Arabia Grand Prix', '2025-04-20'),
('12632', 'Miami Grand Prix', '2025-05-04'),
('12633', 'Imola Grand Prix', '2025-05-18'),
('12634', 'Monaco Grand Prix', '2025-05-25'),
('12635', 'Spain Grand Prix', '2025-06-01'),
('12636', 'Canada Grand Prix', '2025-06-15'),
('12637', 'Austria Grand Prix', '2025-06-29'),
('12638', 'Silverstone Grand Prix', '2025-07-06'),
('12639', 'Belgium Grand Prix', '2025-07-27'),
('12640', 'Hungary Grand Prix', '2025-08-03'),
('12641', 'Zandvoort Grand Prix', '2025-08-31'),
('12642', 'Monza Grand Prix', '2025-09-07'),
('12643', 'Baku Grand Prix', '2025-09-21'),
('12644', 'Singapore Grand Prix', '2025-10-05'),
('12645', 'Austin Grand Prix', '2025-10-19'),
('12646', 'Mexico Grand Prix', '2025-10-26'),
('12647', 'Brazil Grand Prix', '2025-11-09'),
('12648', 'Las Vegas Grand Prix', '2025-11-22'),
('12649', 'Qatar Grand Prix', '2025-11-30'),
('12650', 'Abu Dhabi Grand Prix', '2025-12-07')
ON DUPLICATE KEY UPDATE
  name = VALUES(name),
  race_date = VALUES(race_date);

INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12627');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 57, '1:42''06.304', '0', '176.786', 5, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  2, 57, '1:42''07.199', '0.895', '176.760', 5, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  3, 57, '1:42''14.785', '8.481', '176.541', 5, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  4, 57, '1:42''16.439', '10.135', '176.494', 5, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  5, 57, '1:42''19.077', '12.773', '176.418', 5, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  6, 57, '1:42''23.717', '17.413', '176.285', 5, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  7, 57, '1:42''24.727', '18.423', '176.256', 5, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 57, '1:42''26.130', '19.826', '176.215', 5, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  9, 57, '1:42''26.752', '20.448', '176.198', 5, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  10, 57, '1:42''28.777', '22.473', '176.140', 5, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  11, 57, '1:42''32.806', '26.502', '176.024', 5, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  12, 57, '1:42''36.188', '29.884', '175.927', 5, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  13, 57, '1:42''39.465', '33.161', '175.834', 5, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  14, 57, '1:42''46.655', '40.351', '175.629', 5, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  0, 46, '1:22''10.450', '11', '177.273', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 45, '1:20''55.632', '12', '176.091', 5, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  0, 32, '55''44.463', '25', '181.800', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Jack Doohan', '7', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='7'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12627',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12628');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 56, '1:30''55.026', '0', '201.325', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 56, '1:31''04.774', '9.748', '200.966', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  3, 56, '1:31''06.123', '11.097', '200.917', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  4, 56, '1:31''11.682', '16.656', '200.712', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  0, 56, '1:31''18.237', '23.211', '200.472', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  0, 56, '1:31''20.407', '25.381', '200.393', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  5, 56, '1:31''44.995', '49.969', '199.498', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 56, '1:31''48.774', '53.748', '199.361', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  7, 56, '1:31''51.347', '56.321', '199.268', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  8, 56, '1:31''56.329', '101.303', '199.088', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  0, 56, '1:32''02.221', '107.195', '198.876', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  9, 56, '1:32''05.230', '110.204', '198.767', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  10, 56, '1:32''11.413', '116.387', '198.545', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  11, 56, '1:32''13.901', '118.875', '198.456', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  12, 56, '1:32''16.173', '121.147', '198.374', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Jack Doohan', '7', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='7'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 56, '1:32''23.427', '128.401', '198.115', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  14, 55, '1:31''05.782', '1', '197.339', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  15, 55, '1:31''15.252', '1', '196.998', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  16, 55, '1:31''18.537', '1', '196.879', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12628',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  0, 4, '7''25.574', '52', '174.629', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12629');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 53, '1:22''06.983', '0', '224.659', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 53, '1:22''08.406', '1.423', '224.595', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 53, '1:22''09.112', '2.129', '224.562', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 53, '1:22''23.080', '16.097', '223.928', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 53, '1:22''24.345', '17.362', '223.871', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 53, '1:22''25.654', '18.671', '223.811', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  7, 53, '1:22''36.165', '29.182', '223.337', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  8, 53, '1:22''44.117', '37.134', '222.979', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  9, 53, '1:22''47.350', '40.367', '222.834', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  10, 53, '1:23''01.512', '54.529', '222.200', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  11, 53, '1:23''04.316', '57.333', '222.075', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  12, 53, '1:23''05.384', '58.401', '222.028', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 53, '1:23''09.105', '102.122', '221.862', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  14, 53, '1:23''21.112', '114.129', '221.329', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Jack Doohan', '7', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='7'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 53, '1:23''28.297', '121.314', '221.012', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  16, 53, '1:23''28.940', '121.957', '220.984', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  17, 53, '1:23''29.717', '122.734', '220.949', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  18, 53, '1:23''30.421', '123.438', '220.918', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  19, 53, '1:23''30.880', '123.897', '220.898', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12629',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  20, 52, '1:22''19.912', '1', '219.840', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12630');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 57, '1:35''39.435', '0', '193.339', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  2, 57, '1:35''54.934', '15.499', '192.818', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 57, '1:35''55.708', '16.273', '192.792', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 57, '1:35''59.114', '19.679', '192.678', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  5, 57, '1:36''07.428', '27.993', '192.400', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  6, 57, '1:36''13.830', '34.395', '192.187', 2, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  7, 57, '1:36''15.437', '36.002', '192.133', 2, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  8, 57, '1:36''23.679', '44.244', '191.860', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  9, 57, '1:36''24.496', '45.061', '191.832', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  10, 57, '1:36''27.029', '47.594', '191.748', 2, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  11, 57, '1:36''27.451', '48.016', '191.734', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  12, 57, '1:36''28.274', '48.839', '191.707', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 57, '1:36''32.907', '53.472', '191.554', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  13, 57, '1:36''35.749', '56.314', '191.460', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Jack Doohan', '7', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='7'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  14, 57, '1:36''37.241', '57.806', '191.411', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  15, 57, '1:36''39.775', '100.340', '191.327', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  16, 57, '1:36''43.870', '104.435', '191.192', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  17, 57, '1:36''44.924', '105.489', '191.157', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  18, 57, '1:36''46.307', '106.872', '191.112', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12630',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 45, '1:17''36.543', '12', '188.091', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12631');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 50, '1:21''06.758', '0', '228.164', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  2, 50, '1:21''09.601', '2.843', '228.031', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  3, 50, '1:21''14.862', '8.104', '227.784', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  4, 50, '1:21''15.954', '9.196', '227.733', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 50, '1:21''33.994', '27.236', '226.894', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 50, '1:21''41.446', '34.688', '226.549', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  7, 50, '1:21''45.831', '39.073', '226.346', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  8, 50, '1:22''11.388', '104.630', '225.173', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  9, 50, '1:22''13.273', '106.515', '225.087', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  10, 50, '1:22''13.849', '107.091', '225.061', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  11, 50, '1:22''22.675', '115.917', '224.659', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  12, 50, '1:22''25.209', '118.451', '224.544', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  13, 50, '1:22''25.952', '119.194', '224.510', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  14, 50, '1:22''46.481', '139.723', '223.582', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  15, 49, '1:21''11.367', '1', '223.385', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  16, 49, '1:21''12.285', '1', '223.343', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Jack Doohan', '7', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='7'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  17, 49, '1:21''26.022', '1', '222.715', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  18, 49, '1:21''26.064', '1', '222.713', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  0, 1, '2''45.662', '49', '128.734', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12631',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12632');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 57, '1:28''51.587', '0', '208.188', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 57, '1:28''56.217', '4.630', '208.007', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  3, 57, '1:29''29.231', '37.644', '206.728', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  4, 57, '1:29''31.543', '39.956', '206.639', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  5, 57, '1:29''39.654', '48.067', '206.328', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 57, '1:29''47.089', '55.502', '206.043', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  7, 57, '1:29''48.623', '57.036', '205.984', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 57, '1:29''51.773', '100.186', '205.864', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  9, 57, '1:29''52.164', '100.577', '205.849', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  10, 57, '1:30''06.021', '114.434', '205.321', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  11, 57, '1:30''06.189', '114.602', '205.315', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  12, 57, '1:30''13.593', '122.006', '205.034', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 57, '1:30''22.032', '130.445', '204.715', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  14, 56, '1:28''52.742', '1', '204.489', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  15, 56, '1:29''12.566', '1', '203.732', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  16, 56, '1:29''16.749', '1', '203.573', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  0, 36, '59''06.511', '21', '197.610', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 30, '49''03.459', '27', '198.381', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  0, 27, '43''10.773', '30', '202.826', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Jack Doohan', '7', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12632',
  (SELECT driver_id FROM drivers WHERE car_num='7'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12633');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 63, '1:31''33.199', '0', '202.538', 0, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 63, '1:31''39.308', '6.109', '202.313', 0, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 63, '1:31''46.155', '12.956', '202.061', 0, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 63, '1:31''47.555', '14.356', '202.010', 0, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  5, 63, '1:31''51.144', '17.945', '201.878', 0, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  6, 63, '1:31''53.973', '20.774', '201.775', 0, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  7, 63, '1:31''55.233', '22.034', '201.729', 0, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  8, 63, '1:31''56.097', '22.898', '201.697', 0, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  9, 63, '1:31''56.785', '23.586', '201.672', 0, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  10, 63, '1:31''59.645', '26.446', '201.567', 0, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  11, 63, '1:32''00.449', '27.250', '201.538', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  12, 63, '1:32''03.495', '30.296', '201.427', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 63, '1:32''04.623', '31.424', '201.386', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  14, 63, '1:32''05.710', '32.511', '201.346', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  15, 63, '1:32''06.192', '32.993', '201.329', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  16, 63, '1:32''06.610', '33.411', '201.313', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  17, 63, '1:32''07.007', '33.808', '201.299', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  18, 63, '1:32''11.771', '38.572', '201.126', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  0, 44, '1:01''29.744', '19', '210.531', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12633',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  0, 27, '37''42.335', '36', '210.568', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12634');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 78, '1:40''33.843', '0', '155.295', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  2, 78, '1:40''36.974', '3.131', '155.215', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 78, '1:40''37.501', '3.658', '155.201', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  4, 78, '1:40''54.415', '20.572', '154.767', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  5, 78, '1:41''25.230', '51.387', '153.984', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  6, 77, '1:41''38.925', '1', '151.668', 2, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  7, 77, '1:41''39.872', '1', '151.645', 2, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  8, 77, '1:41''40.589', '1', '151.627', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  9, 76, '1:40''45.712', '2', '151.016', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  10, 76, '1:40''49.075', '2', '150.932', 2, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  11, 76, '1:41''07.687', '2', '150.469', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  12, 76, '1:41''28.536', '2', '149.954', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 76, '1:41''30.957', '2', '149.894', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  14, 76, '1:41''42.267', '2', '149.617', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  15, 76, '1:41''44.238', '2', '149.568', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  16, 76, '1:41''45.387', '2', '149.540', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  17, 76, '1:41''45.692', '2', '149.533', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  18, 75, '1:40''42.252', '3', '149.114', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  0, 36, '48''27.102', '42', '148.765', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12634',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  0, 7, '10''57.609', '71', '127.875', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12635');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 66, '1:32''57.375', '0', '198.310', 3, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 66, '1:32''59.846', '2.471', '198.222', 3, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  3, 66, '1:33''07.830', '10.455', '197.939', 3, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  4, 66, '1:33''08.734', '11.359', '197.907', 3, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  5, 66, '1:33''11.023', '13.648', '197.825', 3, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  6, 66, '1:33''12.883', '15.508', '197.760', 3, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  7, 66, '1:33''13.397', '16.022', '197.742', 3, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  8, 66, '1:33''15.257', '17.882', '197.676', 3, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  9, 66, '1:33''18.939', '21.564', '197.546', 3, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  10, 66, '1:33''19.201', '21.826', '197.537', 4, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  11, 66, '1:33''22.907', '25.532', '197.406', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  12, 66, '1:33''23.371', '25.996', '197.390', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  13, 66, '1:33''26.197', '28.822', '197.290', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  14, 66, '1:33''26.684', '29.309', '197.273', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 66, '1:33''28.756', '31.381', '197.200', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  16, 66, '1:33''29.572', '32.197', '197.171', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  17, 66, '1:33''34.440', '37.065', '197.000', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  0, 53, '1:12''29.932', '13', '204.164', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12635',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 27, '38''23.148', '39', '196.342', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12636');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  1, 70, '1:31''52.688', '0', '199.353', 5, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  2, 70, '1:31''52.916', '0.228', '199.344', 5, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  3, 70, '1:31''53.702', '1.014', '199.316', 5, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  4, 70, '1:31''54.797', '2.109', '199.276', 5, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  5, 70, '1:31''56.130', '3.442', '199.228', 5, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  6, 70, '1:32''03.401', '10.713', '198.966', 5, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 70, '1:32''03.660', '10.972', '198.957', 6, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  8, 70, '1:32''08.052', '15.364', '198.799', 5, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  9, 69, '1:31''54.161', '1', '196.452', 4, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  10, 69, '1:31''54.574', '1', '196.438', 4, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  11, 69, '1:31''56.405', '1', '196.372', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  12, 69, '1:31''58.144', '1', '196.311', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 69, '1:31''59.706', '1', '196.255', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  14, 69, '1:32''00.567', '1', '196.224', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 69, '1:32''00.638', '1', '196.222', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  16, 69, '1:32''01.425', '1', '196.194', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  17, 69, '1:32''01.751', '1', '196.182', 5, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  18, 66, '1:24''02.470', '4', '205.489', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  0, 53, '1:09''16.272', '17', '200.198', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12636',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 46, '1:00''03.080', '24', '200.434', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12637');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 70, '1:23''47.693', '0', '216.737', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 70, '1:23''50.388', '2.695', '216.621', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  3, 70, '1:24''07.513', '19.820', '215.886', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 70, '1:24''16.713', '29.020', '215.493', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 70, '1:24''50.089', '102.396', '214.080', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  6, 70, '1:24''55.447', '107.754', '213.855', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 69, '1:23''49.130', '1', '213.579', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  8, 69, '1:23''49.645', '1', '213.557', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  9, 69, '1:23''55.413', '1', '213.312', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  10, 69, '1:23''57.679', '1', '213.216', 2, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  11, 69, '1:24''12.547', '1', '212.589', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  12, 69, '1:24''15.650', '1', '212.458', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 69, '1:24''20.748', '1', '212.244', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  14, 69, '1:24''22.155', '1', '212.185', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 69, '1:24''30.385', '1', '211.841', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  16, 68, '1:23''50.672', '2', '210.418', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 15, '20''00.228', '55', '194.249', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12637',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12638');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 52, '1:37''15.735', '0', '0', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 52, '1:37''22.547', '6.812', '0', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  3, 52, '1:37''50.477', '34.742', '0', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 52, '1:37''55.547', '39.812', '0', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  5, 52, '1:38''12.516', '56.781', '0', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  6, 52, '1:38''15.592', '59.857', '0', 2, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 52, '1:38''16.338', '100.603', '0', 3, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  8, 52, '1:38''19.870', '104.135', '0', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  9, 52, '1:38''21.593', '105.858', '0', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  10, 52, '1:38''26.409', '110.674', '0', 2, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  11, 52, '1:38''27.830', '112.095', '0', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  12, 52, '1:38''32.327', '116.592', '0', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  13, 52, '1:38''33.036', '117.301', '0', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  14, 52, '1:38''40.212', '124.477', '0', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  15, 51, '1:37''47.985', '1', '0', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  0, 23, '49''59.124', '29', '0', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  0, 17, '36''03.387', '35', '0', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 3, '6''49.103', '49', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12638',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12639');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 44, '1:25''22.601', '0', '216.489', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 44, '1:25''26.016', '3.415', '216.344', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  3, 44, '1:25''42.786', '20.185', '215.639', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  4, 44, '1:25''44.332', '21.731', '215.574', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 44, '1:25''57.464', '34.863', '215.025', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  6, 44, '1:26''02.527', '39.926', '214.814', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  7, 44, '1:26''03.280', '40.679', '214.783', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  8, 44, '1:26''14.634', '52.033', '214.312', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  9, 44, '1:26''19.035', '56.434', '214.130', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  10, 44, '1:26''35.315', '112.714', '213.459', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  11, 44, '1:26''35.746', '113.145', '213.441', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  12, 44, '1:26''36.229', '113.628', '213.421', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  13, 44, '1:26''37.996', '115.395', '213.348', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  14, 44, '1:26''42.432', '119.831', '213.167', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  15, 44, '1:26''48.664', '126.063', '212.912', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  16, 44, '1:26''49.322', '126.721', '212.885', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  17, 44, '1:26''50.525', '127.924', '212.835', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  18, 44, '1:26''54.625', '132.024', '212.668', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  19, 44, '1:26''57.851', '135.250', '212.537', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12639',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  20, 43, '1:25''35.543', '1', '211.033', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12640');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 70, '1:35''21.231', '0', '192.942', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 70, '1:35''21.929', '0.698', '192.918', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  3, 70, '1:35''43.147', '21.916', '192.206', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 70, '1:36''03.791', '42.560', '191.517', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  5, 70, '1:36''20.271', '59.040', '190.971', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  6, 70, '1:36''27.400', '106.169', '190.736', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 70, '1:36''29.405', '108.174', '190.670', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  8, 70, '1:36''30.682', '109.451', '190.628', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  9, 70, '1:36''33.876', '112.645', '190.523', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  10, 69, '1:35''28.880', '1', '189.931', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  11, 69, '1:35''29.731', '1', '189.903', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  12, 69, '1:35''31.092', '1', '189.858', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  13, 69, '1:35''52.499', '1', '189.151', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  14, 69, '1:35''54.557', '1', '189.084', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  15, 69, '1:35''59.342', '1', '188.927', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  16, 69, '1:36''06.489', '1', '188.693', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  17, 69, '1:36''08.174', '1', '188.637', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  18, 69, '1:36''08.601', '1', '188.623', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  19, 69, '1:36''17.575', '1', '188.330', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12640',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  0, 48, '1:07''19.749', '22', '187.361', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12641');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 72, '1:38''29.849', '0', '186.758', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  2, 72, '1:38''31.120', '1.271', '186.718', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  3, 72, '1:38''33.082', '3.233', '186.656', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  4, 72, '1:38''35.503', '5.654', '186.579', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  5, 72, '1:38''36.176', '6.327', '186.558', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  6, 72, '1:38''38.893', '9.044', '186.472', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 72, '1:38''39.346', '9.497', '186.458', 2, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  8, 72, '1:38''41.558', '11.709', '186.388', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  9, 72, '1:38''43.446', '13.597', '186.329', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  10, 72, '1:38''43.912', '14.063', '186.314', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  11, 72, '1:38''44.360', '14.511', '186.300', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  12, 72, '1:38''46.912', '17.063', '186.220', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  13, 72, '1:38''47.225', '17.376', '186.210', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  14, 72, '1:38''49.574', '19.725', '186.137', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  15, 72, '1:38''51.414', '21.565', '186.079', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  16, 72, '1:38''51.878', '22.029', '186.064', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  17, 72, '1:38''53.478', '23.629', '186.014', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  18, 64, '1:26''08.487', '8', '189.814', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  0, 52, '1:08''17.018', '20', '194.547', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12641',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  0, 22, '28''05.478', '50', '199.998', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12642');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 53, '1:13''24.325', '0', '250.706', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 53, '1:13''43.532', '19.207', '249.617', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 53, '1:13''45.676', '21.351', '249.496', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 53, '1:13''49.949', '25.624', '249.256', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 53, '1:13''57.206', '32.881', '248.848', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  6, 53, '1:14''01.774', '37.449', '248.592', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  7, 53, '1:14''14.862', '50.537', '247.862', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  8, 53, '1:14''22.809', '58.484', '247.420', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  9, 53, '1:14''24.087', '59.762', '247.350', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  10, 53, '1:14''28.216', '103.891', '247.121', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  11, 53, '1:14''28.794', '104.469', '247.089', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  12, 53, '1:14''43.613', '119.288', '246.272', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  13, 53, '1:14''45.026', '120.701', '246.195', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  14, 53, '1:14''46.676', '122.351', '246.104', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  15, 52, '1:13''26.460', '1', '245.852', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  16, 52, '1:13''30.162', '1', '245.645', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  17, 52, '1:13''31.773', '1', '245.555', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  18, 52, '1:13''33.626', '1', '245.452', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  0, 24, '34''41.502', '29', '239.924', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12642',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12643');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 51, '1:33''26.408', '0', '196.520', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  2, 51, '1:33''41.017', '14.609', '196.010', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  3, 51, '1:33''45.607', '19.199', '195.850', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  4, 51, '1:33''48.168', '21.760', '195.761', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  5, 51, '1:33''59.698', '33.290', '195.360', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  6, 51, '1:34''00.216', '33.808', '195.342', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  7, 51, '1:34''00.635', '34.227', '195.328', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 51, '1:34''02.718', '36.310', '195.256', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  9, 51, '1:34''03.182', '36.774', '195.240', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  10, 51, '1:34''05.390', '38.982', '195.163', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  11, 51, '1:34''34.014', '107.606', '194.179', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  12, 51, '1:34''34.670', '108.262', '194.156', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  13, 51, '1:34''39.278', '112.870', '193.999', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  14, 51, '1:34''43.988', '117.580', '193.838', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  15, 51, '1:34''45.115', '118.707', '193.800', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  16, 51, '1:34''46.645', '120.237', '193.748', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  17, 51, '1:35''02.800', '136.392', '193.199', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  18, 50, '1:33''30.273', '1', '192.533', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  19, 50, '1:33''32.733', '1', '192.449', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12643',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12644');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  1, 62, '1:40''22.367', '0', '182.521', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  2, 62, '1:40''27.797', '5.430', '182.357', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 62, '1:40''28.433', '6.066', '182.338', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  4, 62, '1:40''30.513', '8.146', '182.275', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 62, '1:40''56.048', '33.681', '181.506', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  6, 62, '1:41''08.363', '45.996', '181.138', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 62, '1:41''43.034', '120.667', '180.109', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 62, '1:41''47.618', '125.251', '179.974', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  9, 62, '1:41''55.894', '133.527', '179.730', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  10, 61, '1:40''33.121', '1', '179.256', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  11, 61, '1:40''39.702', '1', '179.061', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  12, 61, '1:40''41.636', '1', '179.003', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  13, 61, '1:40''46.857', '1', '178.849', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  14, 61, '1:40''47.687', '1', '178.824', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  15, 61, '1:40''49.512', '1', '178.770', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  16, 61, '1:41''05.257', '1', '178.306', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  17, 61, '1:41''09.120', '1', '178.193', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  18, 61, '1:41''09.500', '1', '178.182', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  19, 61, '1:41''09.828', '1', '178.172', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12644',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  20, 61, '1:41''11.407', '1', '178.126', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12645');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 56, '1:34''00.161', '0', '196.848', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 56, '1:34''08.120', '7.959', '196.571', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  3, 56, '1:34''15.534', '15.373', '196.313', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 56, '1:34''28.697', '28.536', '195.857', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  5, 56, '1:34''29.839', '29.678', '195.818', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 56, '1:34''33.617', '33.456', '195.687', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  7, 56, '1:34''52.875', '52.714', '195.025', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  8, 56, '1:34''57.410', '57.249', '194.870', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  9, 56, '1:35''04.883', '104.722', '194.615', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  10, 56, '1:35''10.162', '110.001', '194.435', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  11, 56, '1:35''13.370', '113.209', '194.326', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  12, 56, '1:35''14.939', '114.778', '194.272', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  13, 56, '1:35''15.907', '115.746', '194.240', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  14, 56, '1:35''20.161', '120.000', '194.095', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  15, 56, '1:35''23.204', '123.043', '193.992', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  16, 56, '1:35''32.968', '132.807', '193.661', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  17, 55, '1:34''02.468', '1', '193.250', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  18, 55, '1:34''03.718', '1', '193.207', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  19, 55, '1:34''06.316', '1', '193.119', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12645',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 5, '8''29.440', '51', '192.507', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12646');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 71, '1:37''58.574', '0', '186.996', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  2, 71, '1:38''28.898', '30.324', '186.037', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  3, 71, '1:38''29.623', '31.049', '186.014', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  4, 71, '1:38''39.529', '40.955', '185.703', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  5, 71, '1:38''40.639', '42.065', '185.668', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 71, '1:38''46.411', '47.837', '185.487', 2, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  7, 71, '1:38''48.861', '50.287', '185.410', 2, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 71, '1:38''55.020', '56.446', '185.218', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  9, 71, '1:39''14.038', '115.464', '184.626', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  10, 71, '1:39''15.437', '116.863', '184.583', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  11, 71, '1:39''17.622', '119.048', '184.515', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  12, 70, '1:38''01.024', '1', '184.284', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  13, 70, '1:38''05.230', '1', '184.152', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  14, 70, '1:38''05.609', '1', '184.140', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 70, '1:38''42.654', '1', '182.988', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  16, 70, '1:38''42.950', '1', '182.979', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  17, 67, '1:33''34.132', '4', '184.765', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  0, 34, '48''06.703', '37', '182.208', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 25, '35''25.134', '46', '181.885', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12646',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  0, 5, '8''01.922', '66', '159.038', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12647');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  1, 71, '1:32''01.596', '0', '199.428', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  2, 71, '1:32''11.984', '10.388', '199.054', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  3, 71, '1:32''12.346', '10.750', '199.041', 3, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  4, 71, '1:32''16.863', '15.267', '198.878', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  5, 71, '1:32''17.345', '15.749', '198.861', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  6, 71, '1:32''31.226', '29.630', '198.364', 2, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  7, 71, '1:32''54.238', '52.642', '197.545', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  8, 71, '1:32''54.469', '52.873', '197.537', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  9, 71, '1:32''54.920', '53.324', '197.521', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  10, 71, '1:32''55.510', '53.914', '197.500', 2, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  11, 71, '1:32''55.780', '54.184', '197.490', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  12, 71, '1:32''56.292', '54.696', '197.472', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  13, 71, '1:32''57.016', '55.420', '197.446', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  14, 71, '1:32''57.362', '55.766', '197.434', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 71, '1:32''59.373', '57.777', '197.363', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  16, 71, '1:32''59.843', '58.247', '197.346', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  17, 71, '1:33''10.772', '109.176', '196.961', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  0, 37, '51''02.289', '34', '187.357', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  0, 5, '8''48.420', '66', '146.372', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12647',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12648');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 50, '1:21''08.429', '0', '229.201', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  0, 50, '1:21''29.170', '20.741', '228.228', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  2, 50, '1:21''31.975', '23.546', '228.097', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  0, 50, '1:21''36.079', '27.650', '227.906', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  3, 50, '1:21''38.917', '30.488', '227.774', 1, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 50, '1:21''39.107', '30.678', '227.765', 1, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  5, 50, '1:21''43.353', '34.924', '227.568', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  6, 50, '1:21''53.686', '45.257', '227.089', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  7, 50, '1:21''59.563', '51.134', '226.818', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 50, '1:22''07.798', '59.369', '226.439', 1, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  9, 50, '1:22''09.064', '100.635', '226.381', 1, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  10, 50, '1:22''18.978', '110.549', '225.927', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  11, 50, '1:22''33.737', '125.308', '225.253', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  12, 50, '1:22''35.403', '126.974', '225.178', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  13, 50, '1:22''40.131', '131.702', '224.963', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  14, 49, '1:21''11.720', '1', '224.463', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  15, 49, '1:21''18.888', '1', '224.134', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  0, 35, '59''28.001', '15', '218.888', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 2, '4''52.053', '48', '151.739', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12648',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  0, 0, '', '0', '0', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12649');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 57, '1:24''38.241', '0', '218.776', 2, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 57, '1:24''46.236', '7.995', '218.432', 2, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  3, 57, '1:25''00.906', '22.665', '217.804', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  4, 57, '1:25''01.556', '23.315', '217.776', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 57, '1:25''06.558', '28.317', '217.563', 2, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  6, 57, '1:25''26.840', '48.599', '216.702', 2, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  7, 57, '1:25''32.286', '54.045', '216.472', 2, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 57, '1:25''35.026', '56.785', '216.357', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  9, 57, '1:25''38.314', '100.073', '216.218', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  10, 57, '1:25''40.011', '101.770', '216.147', 2, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  11, 57, '1:25''45.172', '106.931', '215.930', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  12, 57, '1:25''55.971', '117.730', '215.478', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  13, 57, '1:26''03.053', '124.812', '215.182', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  14, 56, '1:24''41.524', '1', '214.796', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  15, 56, '1:24''42.494', '1', '214.755', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  16, 56, '1:24''43.182', '1', '214.725', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  17, 55, '1:23''35.203', '2', '213.746', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  18, 55, '1:23''52.324', '2', '213.019', 3, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  0, 41, '1:03''53.892', '16', '208.369', 4, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12649',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  0, 6, '8''56.488', '51', '216.353', 0, 0, 0, 0, 0
);
INSERT IGNORE INTO grand_prix (gp_id) VALUES ('12650');
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Max Verstappen', '1', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='1'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  1, 58, '1:26''07.469', '0', '213.307', 1, 0, 25, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oscar Piastri', '81', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='81'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  2, 58, '1:26''20.063', '12.594', '212.788', 1, 0, 18, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lando Norris', '4', 'McLaren');
INSERT IGNORE INTO constructors (team) VALUES ('McLaren');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='4'),
  (SELECT constructor_id FROM constructors WHERE team='McLaren'),
  3, 58, '1:26''24.041', '16.572', '212.625', 2, 0, 15, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Charles Leclerc', '16', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='16'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  4, 58, '1:26''30.748', '23.279', '212.350', 2, 0, 12, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('George Russell', '63', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='63'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  5, 58, '1:26''56.032', '48.563', '211.321', 1, 0, 10, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Fernando Alonso', '14', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='14'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  6, 58, '1:27''15.031', '107.562', '210.554', 1, 0, 8, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Esteban Ocon', '31', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='31'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  7, 58, '1:27''17.345', '109.876', '210.461', 1, 0, 6, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lewis Hamilton', '44', 'Ferrari');
INSERT IGNORE INTO constructors (team) VALUES ('Ferrari');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='44'),
  (SELECT constructor_id FROM constructors WHERE team='Ferrari'),
  8, 58, '1:27''20.139', '112.670', '210.349', 2, 0, 4, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Nicolas Hülkenberg', '27', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='27'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  9, 58, '1:27''26.483', '119.014', '210.094', 2, 0, 2, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Lance Stroll', '18', 'Aston Martin');
INSERT IGNORE INTO constructors (team) VALUES ('Aston Martin');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='18'),
  (SELECT constructor_id FROM constructors WHERE team='Aston Martin'),
  10, 58, '1:27''26.992', '119.523', '210.074', 1, 0, 1, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Gabriel Bortoleto', '5', 'Sauber');
INSERT IGNORE INTO constructors (team) VALUES ('Sauber');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='5'),
  (SELECT constructor_id FROM constructors WHERE team='Sauber'),
  11, 58, '1:27''28.512', '121.043', '210.013', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Oliver Bearman', '87', 'Haas');
INSERT IGNORE INTO constructors (team) VALUES ('Haas');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='87'),
  (SELECT constructor_id FROM constructors WHERE team='Haas'),
  12, 58, '1:27''28.635', '121.166', '210.008', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Carlos Sainz', '55', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='55'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  13, 58, '1:27''29.627', '122.158', '209.968', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Yuki Tsunoda', '22', 'Red Bull');
INSERT IGNORE INTO constructors (team) VALUES ('Red Bull');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='22'),
  (SELECT constructor_id FROM constructors WHERE team='Red Bull'),
  14, 58, '1:27''31.263', '123.794', '209.903', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Andrea Kimi', '12', 'Mercedes');
INSERT IGNORE INTO constructors (team) VALUES ('Mercedes');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='12'),
  (SELECT constructor_id FROM constructors WHERE team='Mercedes'),
  15, 58, '1:27''31.868', '124.399', '209.879', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Alexander Albon', '23', 'Williams');
INSERT IGNORE INTO constructors (team) VALUES ('Williams');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='23'),
  (SELECT constructor_id FROM constructors WHERE team='Williams'),
  16, 58, '1:27''37.796', '130.327', '209.642', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Isack Hadjar', '6', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='6'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  17, 57, '1:26''08.796', '1', '209.574', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Liam Lawson', '30', 'RB');
INSERT IGNORE INTO constructors (team) VALUES ('RB');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='30'),
  (SELECT constructor_id FROM constructors WHERE team='RB'),
  18, 57, '1:26''12.128', '1', '209.439', 1, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Pierre Gasly', '10', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='10'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  19, 57, '1:26''19.377', '1', '209.146', 2, 0, 0, 0, 0
);
INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('Franco Colapinto', '43', 'Alpine');
INSERT IGNORE INTO constructors (team) VALUES ('Alpine');
INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES (
  '12650',
  (SELECT driver_id FROM drivers WHERE car_num='43'),
  (SELECT constructor_id FROM constructors WHERE team='Alpine'),
  20, 57, '1:26''21.472', '1', '209.061', 2, 0, 0, 0, 0
);



