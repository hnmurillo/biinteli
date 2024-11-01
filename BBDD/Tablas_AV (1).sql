CREATE DATABASE prueba_biinteli;

USE prueba_biinteli;

CREATE TABLE journey(
    id INT AUTO_INCREMENT PRIMARY KEY,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2)
);

CREATE TABLE transport(
    id INT AUTO_INCREMENT PRIMARY KEY,
    flight_carrier VARCHAR(50) NOT NULL,
    flight_number VARCHAR(50) NOT NULL
);

CREATE TABLE flight(
    id INT AUTO_INCREMENT PRIMARY KEY,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    transport_id INT,
    FOREIGN KEY (transport_id) REFERENCES transport(id)
);

CREATE TABLE journey_flights(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    journey_id INT,
    flight_id INT,
    FOREIGN KEY (journey_id) REFERENCES journey(id),
    FOREIGN KEY (flight_id) REFERENCES flight(id)
);

SHOW TABLES;

INSERT INTO transport (flight_carrier, flight_number) VALUES ('AV', '8020'),
('AV', '8030'),
('AV', '8040'),
('AV', '8050'),
('AV', '8060'),
('AV', '8070'),
('AV', '8080'),
('AV', '8090'),
('AV', '9000'),
('AV', '9010'),
('AV', '9020'),
('AV', '9030'),
('AV', '9040'),
('AV', '9050'),
('AV', '9060'),
('AV', '9070'),
('AV', '9080');

INSERT INTO flight (origin, destination, price, transport_id) VALUES ('BGA', 'BTA', 1000.0, 1),
('BTA', 'CTG', 2000.0, 2),
('CAL', 'MED', 1500.0, 3),
('MED', 'STA', 4000.0, 4),
('BGA', 'MED', 1000.0, 5),
('MED', 'CTG', 1000.0, 6),
('CAL', 'CTG', 1000.0, 7),
('BTA', 'MED', 1000.0, 8),
('MED', 'CAL', 1000.0, 9),
('CAL', 'BGA', 800.0, 10),
('BTA', 'BGA', 1200.0, 11),
('BTA', 'CAL', 600.0, 12),
('CAL', 'BTA', 800.0, 13),
('STA', 'BTA', 1000.0, 14),
('STA', 'BGA', 1200.0, 15),
('BTA', 'CUC', 1200.0, 16),
('CUC', 'STA', 1200.0, 17),
('CTG', 'MED', 1200.0, 17),
('CTG', 'CUC', 1200.0, 17),
('CTG', 'BGA', 1200.0, 17);

INSERT INTO journey (origin,destination,price) VALUES ('BGA','BTA',1000.0),
('BGA', 'MED', 1000.0),
('BTA', 'CTG', 2000.0),
('BTA', 'MED', 1000.0),
('BTA', 'BGA', 1200.0),
('BTA', 'CAL', 600.0),
('BTA', 'CUC', 1200.0),
('CAL', 'MED', 1500.0),
('CAL', 'CTG', 1000.0),
('CAL', 'BGA', 800.0),
('CAL', 'BTA', 800.0),
('MED', 'STA', 4000.0),
('MED', 'CTG', 1000.0),
('MED', 'CAL', 1000.0),
('STA', 'BTA', 1000.0),
('STA', 'BGA', 1200.0),
('CUC', 'STA', 1200.0),
('CTG', 'MED', 1200.0),
('CTG', 'CUC', 1200.0),
('CTG', 'BGA', 1200.0),  
('BGA', 'MED', 2000.0), 
('BGA', 'CTG', 3000.0), 
('BGA', 'CTG', 2000.0),
('BTA', 'CUC', 3200.0),
('BTA', 'BGA', 3200.0),
('BTA', 'MED', 3200.0),
('CAL', 'STA', 5500.0),
('CAL', 'MED', 2200.0),
('CAL', 'CTG', 2500.0),
('CAL', 'CUC', 2000.0),
('CAL', 'BTA', 2000.0),
('CAL', 'BGA', 2000.0),
('MED', 'CUC', 2200.0),
('MED', 'BGA', 5200.0),
('MED', 'BTA', 1800.0),
('MED', 'BTA', 5000.0),
('CUC', 'BTA', 2200.0),
('CUC', 'BGA', 2400.0),
('CTG', 'STA', 5200.0),
('CTG', 'STA', 2400.0),
('CTG', 'BTA', 2200.0),
('CTG', 'CAL', 2200.0),
('CTG', 'MED', 2200.0),
('STA', 'BGA', 2200.0),
('STA', 'MED', 2200.0),
('STA', 'CAL', 1600.0),
('STA', 'CUC', 2200.0),
('STA', 'CTG', 3000.0),
('STA', 'MED', 2000.0);

INSERT INTO journey_flights (journey_id, flight_id) VALUES (1,1),
(2,5),
(3,2),
(4,8),
(5,11),
(6,12),
(7,16),
(8,3),
(9,7),
(10,10),
(11,13),
(12,4),
(13,6),
(14,9),
(15,14),
(16,15),
(17,17),
(18,18),
(19,19),
(20,20),
(21,1),
(21,8),
(22,1),
(22,2),
(23,5),
(23,6),
(24,2),
(24,19),
(25,2),
(25,20),
(26,2),
(26,18),
(27,13),
(27,4),
(28,7),
(28,18),
(29,3),
(29,6),
(30,13),
(30,16),
(31,10),
(31,1),
(32,13),
(32,11),
(33,6),
(33,19),
(34,4),
(34,15),
(35,9),
(35,13),
(36,4),
(36,14),
(37,17),
(37,14),
(38,17),
(38,15),
(39,18),
(39,4),
(40,19),
(40,17),
(41,20),
(41,1),
(42,18),
(42,9),
(43,20),
(43,5),
(44,14),
(44,11),
(45,15),
(45,5),
(46,14),
(46,12),
(47,14),
(47,16),
(48,14),
(48,2),
(49,14),
(49,8);

 