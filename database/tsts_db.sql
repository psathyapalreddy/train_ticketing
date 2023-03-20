
CREATE DATABASE tsts_db;

CREATE TABLE tsts_db.prices (
  id int(30) NOT NULL,
  station_from int(30) NOT NULL,
  station_to int(30) NOT NULL,
  adult_price float NOT NULL,
  student_price float NOT NULL,
  senior_price float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tsts_db.prices (id, station_from, station_to, adult_price, student_price, senior_price) VALUES
(1, 1, 2, 15, 10, 15),
(2, 1, 3, 20, 15, 20),
(3, 1, 4, 25, 20, 25),
(4, 1, 5, 30, 25, 30),
(5, 1, 6, 35, 30, 35),
(6, 2, 1, 15, 10, 15),
(7, 2, 3, 20, 15, 20),
(8, 2, 4, 20, 20, 20),
(9, 2, 5, 25, 20, 25),
(10, 2, 6, 30, 25, 30),
(11, 3, 1, 20, 15, 20),
(12, 3, 2, 25, 20, 25),
(13, 3, 4, 25, 20, 25),
(14, 3, 5, 20, 20, 20),
(15, 3, 6, 25, 20, 25),
(16, 4, 1, 15,10, 15),
(17, 4, 2, 20, 15, 20),
(18, 4, 3, 25, 20, 25),
(19, 4, 5, 15, 10, 15),
(20, 4, 6, 20, 15, 20),
(21, 5, 1, 30, 25, 25),
(22, 5, 2, 25, 20, 25),
(23, 5, 3, 20, 15, 15),
(24, 5, 4, 15, 10, 15),
(25, 5, 6, 20, 10, 20),
(26, 6, 1, 35, 30, 35),
(27, 6, 2, 30, 25, 30),
(28, 6, 3, 25, 20, 25),
(29, 6, 4, 20, 15, 20),
(30, 6, 5, 15, 10, 15);




CREATE TABLE tsts_db.stations (
  id int(30) NOT NULL,
  station varchar(200) NOT NULL,
  address text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tsts_db.stations (id, station, address) VALUES
(1, 'Station 1', 'Hyderabad'),
(2, 'Station 2', 'Gurugram'),
(3, 'Station 3', 'Bengaluru'),
(4, 'Station 4', 'Chennai'),
(5, 'Station 5', 'Ahmedabad'),
(6, 'Station 6', 'Pune');



CREATE TABLE tsts_db.system_settings (
  id int(30) NOT NULL,
  name text NOT NULL,
  email varchar(200) NOT NULL,
  contact varchar(20) NOT NULL,
  cover_img text NOT NULL,
  about_content text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO tsts_db.system_settings (id, name, email, contact, cover_img, about_content) VALUES
(1, 'Train Station Ticketing System', '', '', '', '');

CREATE TABLE tsts_db.tickets (
  id int(30) NOT NULL,
  ticket_no int(30) NOT NULL,
  station_from int(30) NOT NULL,
  station_to int(30) NOT NULL,
  price float NOT NULL,
  passenger_type tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= Adult,2=Student,3=Senior',
  processed_by int(30) NOT NULL,
  date_created datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO tsts_db.tickets (id, ticket_no, station_from, station_to, price, passenger_type, processed_by, date_created) VALUES
(1, 2147483647, 3, 2, 15, 1, 1, '2023-11-03 14:21:12'),
(2, 2147483647, 3, 2, 15, 1, 1, '2023-11-03 14:21:12'),
(3, 2147483647, 3, 2, 15, 1, 1, '2023-11-03 14:21:12'),
(4, 2147483647, 3, 2, 15, 1, 1, '2023-11-03 14:21:12'),
(5, 2147483647, 3, 6, 25, 1, 1, '2023-11-03 14:47:20'),
(6, 2147483647, 3, 6, 23, 2, 1, '2023-11-03 14:47:20'),
(7, 2147483647, 3, 6, 23, 2, 1, '2023-11-03 14:47:20'),
(8, 2147483647, 3, 6, 23, 3, 1, '2023-11-03 14:47:20'),
(9, 2147483647, 3, 1, 20, 1, 1, '2023-11-03 14:50:41'),
(10, 2147483647, 3, 1, 20, 1, 1, '2023-11-03 14:50:41'),
(11, 2147483647, 3, 1, 18, 2, 1, '2023-11-03 14:50:41'),
(12, 2147483647, 3, 1, 18, 2, 1, '2023-11-03 14:50:41'),
(13, 2147483647, 1, 3, 20, 1, 2, '2023-11-03 15:45:13'),
(14, 2147483647, 1, 3, 20, 1, 2, '2023-11-03 15:45:13'),
(15, 2147483647, 1, 6, 35, 1, 2, '2023-11-03 15:46:38'),
(16, 2147483647, 1, 6, 33, 2, 2, '2023-11-03 15:46:38'),
(17, 2147483647, 1, 6, 33, 2, 2, '2023-11-03 15:46:38'),
(18, 2147483647, 1, 6, 33, 3, 2, '2023-11-03 15:46:38'),
(19, 2147483647, 1, 6, 33, 3, 2, '2023-11-03 15:46:38');



CREATE TABLE tsts_db.users (
  id int(30) NOT NULL,
  name text NOT NULL,
  username varchar(200) NOT NULL,
  password text NOT NULL,
  type tinyint(1) NOT NULL COMMENT '1=Admin,2=Staff',
  station_id int(30) NOT NULL COMMENT 'for staff only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO tsts_db.users (id, name, username, password, type, station_id) VALUES
(1, 'SathyapalReddy', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(2, 'Vamshi', 's1staff', '0d66dc2d5419f0252b94dc25b432b258', 2, 1),
(3, 'Venkatesh', 's2staff', '8452ceee4febd49448f5f26c7299d56f', 2, 2);




ALTER TABLE tsts_db.prices
  ADD PRIMARY KEY (id);

ALTER TABLE tsts_db.stations
  ADD PRIMARY KEY (id);


ALTER TABLE tsts_db.system_settings
  ADD PRIMARY KEY (id);


ALTER TABLE tsts_db.tickets
  ADD PRIMARY KEY (id);


ALTER TABLE tsts_db.users
  ADD PRIMARY KEY (id);


ALTER TABLE tsts_db.prices
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE tsts_db.stations
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE tsts_db.system_settings
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE tsts_db.tickets
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;


ALTER TABLE tsts_db.users
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


