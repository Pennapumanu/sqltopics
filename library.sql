DROP DATABASE IF EXISTS library_management;
CREATE DATABASE library_management;
USE library_management;

CREATE TABLE Books (
book_id INT PRIMARY KEY, title VARCHAR(150) NOT NULL, author VARCHAR(100),
publisher VARCHAR(100), category VARCHAR(50), price DECIMAL(10,2),
availability_status VARCHAR(20), added_date DATE);


CREATE TABLE Members (
member_id INT PRIMARY KEY, name VARCHAR(100) NOT NULL, email VARCHAR(100) UNIQUE,
phone VARCHAR(15), address VARCHAR(255), membership_date DATE);


CREATE TABLE Librarians (
librarian_id INT PRIMARY KEY, name VARCHAR(100), phone VARCHAR(15),
joining_date DATE, role VARCHAR(50));




CREATE TABLE Borrow_Records (
borrow_id INT PRIMARY KEY, member_id INT, book_id INT, librarian_id INT,
borrow_date DATE, return_date DATE, status VARCHAR(20),
FOREIGN KEY (member_id) REFERENCES Members(member_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
FOREIGN KEY (librarian_id) REFERENCES Librarians(librarian_id));


CREATE TABLE Reservations (
reservation_id INT PRIMARY KEY, member_id INT, book_id INT, reservation_date DATE,
FOREIGN KEY (member_id) REFERENCES Members(member_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id));

-- 100 BOOKS
INSERT INTO Books (book_id,title,author,publisher,category,price,availability_status,added_date) VALUES
(1,'The Alchemist','Paulo Coelho','Penguin','Fiction',323.00,'Available','2023-01-04'),
(2,'Atomic Habits','James Clear','O''Reilly Media',
'Programming',396.00,'Borrowed','2025-02-07'),
(3,'Clean Code','Robert C. Martin','Pearson','Self Help',469.00,'Available','2022-03-10'),
(4,'Python Crash Course','Eric Matthes','McGraw Hill','Finance',542.00,'Borrowed','2024-04-13'),
(5,'Rich Dad Poor Dad','Robert Kiyosaki','HarperCollins','Technology',615.00,'Available','2021-05-16'),
(6,'The Psychology of Money','Morgan Housel','Penguin','History',688.00,'Available','2023-06-19'),
(7,'Ikigai','Hector Garcia','OReilly Media','Science',761.00,'Borrowed','2025-07-22'),
(8,'Deep Work','Cal Newport','Pearson','Biography',834.00,'Available','2022-08-25'),
(9,'The Pragmatic Programmer','Andrew Hunt','McGraw Hill','Mystery',907.00,'Available','2024-09-01'),
(10,'The Hobbit','J.R.R. Tolkien','HarperCollins','Fiction',980.00,'Available','2021-10-04'),
(11,'The Alchemist - Edition 1','Paulo Coelho','Penguin','Programming',302.00,'Available','2023-11-07'),
(12,'Atomic Habits - Edition 1','James Clear','OReilly Media','Self Help',375.00,'Borrowed','2025-12-10'),
(13,'Clean Code - Edition 1','Robert C. Martin','Pearson','Finance',448.00,'Available','2022-01-13'),
(14,'Python Crash Course - Edition 1','Eric Matthes','McGraw Hill','Technology',521.00,'Available','2024-02-16'),
(15,'Rich Dad Poor Dad - Edition 1','Robert Kiyosaki','HarperCollins','History',594.00,'Available','2021-03-19'),
(16,'The Psychology of Money - Edition 1','Morgan Housel','Penguin','Science',667.00,'Available','2023-04-22'),
(17,'Ikigai - Edition 1','Hector Garcia','OReilly Media','Biography',740.00,'Available','2025-05-25'),
(18,'Deep Work - Edition 1','Cal Newport','Pearson','Mystery',813.00,'Available','2022-06-01'),
(19,'The Pragmatic Programmer - Edition 1','Andrew Hunt','McGraw Hill','Fiction',886.00,'Available','2024-07-04'),
(20,'The Hobbit - Edition 2','J.R.R. Tolkien','HarperCollins','Programming',959.00,'Available','2021-08-07'),
(21,'The Alchemist - Edition 2','Paulo Coelho','Penguin','Self Help',281.00,'Borrowed','2023-09-10'),
(22,'Atomic Habits - Edition 2','James Clear','O''Reilly Media','Finance',354.00,'Available','2025-10-13'),
(23,'Clean Code - Edition 2','Robert C. Martin','Pearson','Technology',427.00,'Available','2022-11-16'),
(24,'Python Crash Course - Edition 2','Eric Matthes','McGraw Hill','History',500.00,'Available','2024-12-19'),
(25,'Rich Dad Poor Dad - Edition 2','Robert Kiyosaki','HarperCollins','Science',573.00,'Borrowed','2021-01-22'),
(26,'The Psychology of Money - Edition 2','Morgan Housel','Penguin','Biography',646.00,'Available','2023-02-25'),
(27,'Ikigai - Edition 2','Hector Garcia','O''Reilly Media','Mystery',719.00,'Available','2025-03-01'),
(28,'Deep Work - Edition 2','Cal Newport','Pearson','Fiction',792.00,'Available','2022-04-04'),
(29,'The Pragmatic Programmer - Edition 2','Andrew Hunt','McGraw Hill','Programming',865.00,'Available','2024-05-07'),
(30,'The Hobbit - Edition 3','J.R.R. Tolkien','HarperCollins','Self Help',938.00,'Available','2021-06-10'),
(31,'The Alchemist - Edition 3','Paulo Coelho','Penguin','Finance',260.00,'Available','2023-07-13'),
(32,'Atomic Habits - Edition 3','James Clear','O''Reilly Media','Technology',333.00,'Available','2025-08-16'),
(33,'Clean Code - Edition 3','Robert C. Martin','Pearson','History',406.00,'Available','2022-09-19'),
(34,'Python Crash Course - Edition 3','Eric Matthes','McGraw Hill','Science',479.00,'Borrowed','2024-10-22'),
(35,'Rich Dad Poor Dad - Edition 3','Robert Kiyosaki','HarperCollins','Biography',552.00,'Available','2021-11-25'),
(36,'The Psychology of Money - Edition 3','Morgan Housel','Penguin','Mystery',625.00,'Available','2023-12-01'),
(37,'Ikigai - Edition 3','Hector Garcia','O''Reilly Media','Fiction',698.00,'Available','2025-01-04'),
(38,'Deep Work - Edition 3','Cal Newport','Pearson','Programming',771.00,'Available','2022-02-07'),
(39,'The Pragmatic Programmer - Edition 3','Andrew Hunt','McGraw Hill','Self Help',844.00,'Available','2024-03-10'),
(40,'The Hobbit - Edition 4','J.R.R. Tolkien','HarperCollins','Finance',917.00,'Available','2021-04-13'),
(41,'The Alchemist - Edition 4','Paulo Coelho','Penguin','Technology',990.00,'Available','2023-05-16'),
(42,'Atomic Habits - Edition 4','James Clear','O''Reilly Media','History',312.00,'Available','2025-06-19'),
(43,'Clean Code - Edition 4','Robert C. Martin','Pearson','Science',385.00,'Available','2022-07-22'),
(44,'Python Crash Course - Edition 4','Eric Matthes','McGraw Hill','Biography',458.00,'Available','2024-08-25'),
(45,'Rich Dad Poor Dad - Edition 4','Robert Kiyosaki','HarperCollins','Mystery',531.00,'Available','2021-09-01'),
(46,'The Psychology of Money - Edition 4','Morgan Housel','Penguin','Fiction',604.00,'Available','2023-10-04'),
(47,'Ikigai - Edition 4','Hector Garcia','O''Reilly Media','Programming',677.00,'Borrowed','2025-11-07'),
(48,'Deep Work - Edition 4','Cal Newport','Pearson','Self Help',750.00,'Available','2022-12-10'),
(49,'The Pragmatic Programmer - Edition 4','Andrew Hunt','McGraw Hill','Finance',823.00,'Available','2024-01-13'),
(50,'The Hobbit - Edition 5','J.R.R. Tolkien','HarperCollins','Technology',896.00,'Available','2021-02-16'),
(51,'The Alchemist - Edition 5','Paulo Coelho','Penguin','History',969.00,'Borrowed','2023-03-19'),
(52,'Atomic Habits - Edition 5','James Clear','O''Reilly Media','Science',291.00,'Available','2025-04-22'),
(53,'Clean Code - Edition 5','Robert C. Martin','Pearson','Biography',364.00,'Available','2022-05-25'),
(54,'Python Crash Course - Edition 5','Eric Matthes','McGraw Hill','Mystery',437.00,'Available','2024-06-01'),
(55,'Rich Dad Poor Dad - Edition 5','Robert Kiyosaki','HarperCollins','Fiction',510.00,'Available','2021-07-04'),
(56,'The Psychology of Money - Edition 5','Morgan Housel','Penguin','Programming',583.00,'Available','2023-08-07'),
(57,'Ikigai - Edition 5','Hector Garcia','O''Reilly Media','Self Help',656.00,'Available','2025-09-10'),
(58,'Deep Work - Edition 5','Cal Newport','Pearson','Finance',729.00,'Available','2022-10-13'),
(59,'The Pragmatic Programmer - Edition 5','Andrew Hunt','McGraw Hill','Technology',802.00,'Available','2024-11-16'),
(60,'The Hobbit - Edition 6','J.R.R. Tolkien','HarperCollins','History',875.00,'Available','2021-12-19'),
(61,'The Alchemist - Edition 6','Paulo Coelho','Penguin','Science',948.00,'Borrowed','2023-01-22'),
(62,'Atomic Habits - Edition 6','James Clear','O''Reilly Media','Biography',270.00,'Available','2025-02-25'),
(63,'Clean Code - Edition 6','Robert C. Martin','Pearson','Mystery',343.00,'Available','2022-03-01'),
(64,'Python Crash Course - Edition 6','Eric Matthes','McGraw Hill','Fiction',416.00,'Borrowed','2024-04-04'),
(65,'Rich Dad Poor Dad - Edition 6','Robert Kiyosaki','HarperCollins','Programming',489.00,'Available','2021-05-07'),
(66,'The Psychology of Money - Edition 6','Morgan Housel','Penguin','Self Help',562.00,'Available','2023-06-10'),
(67,'Ikigai - Edition 6','Hector Garcia','O''Reilly Media','Finance',635.00,'Available','2025-07-13'),
(68,'Deep Work - Edition 6','Cal Newport','Pearson','Technology',708.00,'Available','2022-08-16'),
(69,'The Pragmatic Programmer - Edition 6','Andrew Hunt','McGraw Hill','History',781.00,'Available','2024-09-19'),
(70,'The Hobbit - Edition 7','J.R.R. Tolkien','HarperCollins','Science',854.00,'Available','2021-10-22'),
(71,'The Alchemist - Edition 7','Paulo Coelho','Penguin','Biography',927.00,'Borrowed','2023-11-25'),
(72,'Atomic Habits - Edition 7','James Clear','O''Reilly Media','Mystery',1000.00,'Available','2025-12-01'),
(73,'Clean Code - Edition 7','Robert C. Martin','Pearson','Fiction',322.00,'Available','2022-01-04'),
(74,'Python Crash Course - Edition 7','Eric Matthes','McGraw Hill','Programming',395.00,'Borrowed','2024-02-07'),
(75,'Rich Dad Poor Dad - Edition 7','Robert Kiyosaki','HarperCollins','Self Help',468.00,'Available','2021-03-10'),
(76,'The Psychology of Money - Edition 7','Morgan Housel','Penguin','Finance',541.00,'Available','2023-04-13'),
(77,'Ikigai - Edition 7','Hector Garcia','O''Reilly Media','Technology',614.00,'Available','2025-05-16'),
(78,'Deep Work - Edition 7','Cal Newport','Pearson','History',687.00,'Available','2022-06-19'),
(79,'The Pragmatic Programmer - Edition 7','Andrew Hunt','McGraw Hill','Science',760.00,'Available','2024-07-22'),
(80,'The Hobbit - Edition 8','J.R.R. Tolkien','HarperCollins','Biography',833.00,'Available','2021-08-25'),
(81,'The Alchemist - Edition 8','Paulo Coelho','Penguin','Mystery',906.00,'Borrowed','2023-09-01'),
(82,'Atomic Habits - Edition 8','James Clear','O''Reilly Media','Fiction',979.00,'Available','2025-10-04'),
(83,'Clean Code - Edition 8','Robert C. Martin','Pearson','Programming',301.00,'Available','2022-11-07'),
(84,'Python Crash Course - Edition 8','Eric Matthes','McGraw Hill','Self Help',374.00,'Borrowed','2024-12-10'),
(85,'Rich Dad Poor Dad - Edition 8','Robert Kiyosaki','HarperCollins','Finance',447.00,'Available','2021-01-13'),
(86,'The Psychology of Money - Edition 8','Morgan Housel','Penguin','Technology',520.00,'Available','2023-02-16'),
(87,'Ikigai - Edition 8','Hector Garcia','O''Reilly Media','History',593.00,'Available','2025-03-19'),
(88,'Deep Work - Edition 8','Cal Newport','Pearson','Science',666.00,'Available','2022-04-22'),
(89,'The Pragmatic Programmer - Edition 8','Andrew Hunt','McGraw Hill','Biography',739.00,'Available','2024-05-25'),
(90,'The Hobbit - Edition 9','J.R.R. Tolkien','HarperCollins','Mystery',812.00,'Available','2021-06-01'),
(91,'The Alchemist - Edition 9','Paulo Coelho','Penguin','Fiction',885.00,'Borrowed','2023-07-04'),
(92,'Atomic Habits - Edition 9','James Clear','O''Reilly Media','Programming',958.00,'Borrowed','2025-08-07'),
(93,'Clean Code - Edition 9','Robert C. Martin','Pearson','Self Help',280.00,'Available','2022-09-10'),
(94,'Python Crash Course - Edition 9','Eric Matthes','McGraw Hill','Finance',353.00,'Available','2024-10-13'),
(95,'Rich Dad Poor Dad - Edition 9','Robert Kiyosaki','HarperCollins','Technology',426.00,'Borrowed','2021-11-16'),
(96,'The Psychology of Money - Edition 9','Morgan Housel','Penguin','History',499.00,'Available','2023-12-19'),
(97,'Ikigai - Edition 9','Hector Garcia','O''Reilly Media','Science',572.00,'Borrowed','2025-01-22'),
(98,'Deep Work - Edition 9','Cal Newport','Pearson','Biography',645.00,'Available','2022-02-25'),
(99,'The Pragmatic Programmer - Edition 9','Andrew Hunt','McGraw Hill','Mystery',718.00,'Available','2024-03-01'),
(100,'The Hobbit - Edition 10','J.R.R. Tolkien','HarperCollins','Fiction',791.00,'Available','2021-04-04');

-- 50 MEMBERS
INSERT INTO Members (member_id,name,email,phone,address,membership_date) VALUES
(101,'Manohar Kumar','member101@gmail.com','9700000000','Hyderabad','2025-01-01'),
(102,'Sandeep Kumar','member102@gmail.com','9700000001','Bengaluru','2025-01-10'),
(103,'Sanjay Kumar','member103@gmail.com','9700000002','Chennai','2025-01-19'),
(104,'Arjun Kumar','member104@gmail.com','9700000003','Hyderabad','2025-01-28'),
(105,'Ravi Kumar','member105@gmail.com','9700000004','Bengaluru','2025-02-06'),
(106,'Priya Kumar','member106@gmail.com','9700000005','Chennai','2025-02-15'),
(107,'Anjali Kumar','member107@gmail.com','9700000006','Hyderabad','2025-02-24'),
(108,'Rahul Kumar','member108@gmail.com','9700000007','Bengaluru','2025-03-05'),
(109,'Kiran Kumar','member109@gmail.com','9700000008','Chennai','2025-03-14'),
(110,'Sneha Kumar','member110@gmail.com','9700000009','Hyderabad','2025-03-23'),
(111,'Manohar Reddy','member111@gmail.com','9700000010','Bengaluru','2025-04-01'),
(112,'Sandeep Reddy','member112@gmail.com','9700000011','Chennai','2025-04-10'),
(113,'Sanjay Reddy','member113@gmail.com','9700000012','Hyderabad','2025-04-19'),
(114,'Arjun Reddy','member114@gmail.com','9700000013','Bengaluru','2025-04-28'),
(115,'Ravi Reddy','member115@gmail.com','9700000014','Chennai','2025-05-07'),
(116,'Priya Reddy','member116@gmail.com','9700000015','Hyderabad','2025-05-16'),
(117,'Anjali Reddy','member117@gmail.com','9700000016','Bengaluru','2025-05-25'),
(118,'Rahul Reddy','member118@gmail.com','9700000017','Chennai','2025-06-03'),
(119,'Kiran Reddy','member119@gmail.com','9700000018','Hyderabad','2025-06-12'),
(120,'Sneha Reddy','member120@gmail.com','9700000019','Bengaluru','2025-06-21'),
(121,'Manohar Sharma','member121@gmail.com','9700000020','Chennai','2025-06-30'),
(122,'Sandeep Sharma','member122@gmail.com','9700000021','Hyderabad','2025-07-09'),
(123,'Sanjay Sharma','member123@gmail.com','9700000022','Bengaluru','2025-07-18'),
(124,'Arjun Sharma','member124@gmail.com','9700000023','Chennai','2025-07-27'),
(125,'Ravi Sharma','member125@gmail.com','9700000024','Hyderabad','2025-08-05'),
(126,'Priya Sharma','member126@gmail.com','9700000025','Bengaluru','2025-08-14'),
(127,'Anjali Sharma','member127@gmail.com','9700000026','Chennai','2025-08-23'),
(128,'Rahul Sharma','member128@gmail.com','9700000027','Hyderabad','2025-09-01'),
(129,'Kiran Sharma','member129@gmail.com','9700000028','Bengaluru','2025-09-10'),
(130,'Sneha Sharma','member130@gmail.com','9700000029','Chennai','2025-09-19'),
(131,'Manohar Patel','member131@gmail.com','9700000030','Hyderabad','2025-09-28'),
(132,'Sandeep Patel','member132@gmail.com','9700000031','Bengaluru','2025-10-07'),
(133,'Sanjay Patel','member133@gmail.com','9700000032','Chennai','2025-10-16'),
(134,'Arjun Patel','member134@gmail.com','9700000033','Hyderabad','2025-10-25'),
(135,'Ravi Patel','member135@gmail.com','9700000034','Bengaluru','2025-11-03'),
(136,'Priya Patel','member136@gmail.com','9700000035','Chennai','2025-11-12'),
(137,'Anjali Patel','member137@gmail.com','9700000036','Hyderabad','2025-11-21'),
(138,'Rahul Patel','member138@gmail.com','9700000037','Bengaluru','2025-11-30'),
(139,'Kiran Patel','member139@gmail.com','9700000038','Chennai','2025-12-09'),
(140,'Sneha Patel','member140@gmail.com','9700000039','Hyderabad','2025-12-18'),
(141,'Manohar Verma','member141@gmail.com','9700000040','Bengaluru','2025-12-27'),
(142,'Sandeep Verma','member142@gmail.com','9700000041','Chennai','2026-01-05'),
(143,'Sanjay Verma','member143@gmail.com','9700000042','Hyderabad','2026-01-14'),
(144,'Arjun Verma','member144@gmail.com','9700000043','Bengaluru','2026-01-23'),
(145,'Ravi Verma','member145@gmail.com','9700000044','Chennai','2026-02-01'),
(146,'Priya Verma','member146@gmail.com','9700000045','Hyderabad','2026-02-10'),
(147,'Anjali Verma','member147@gmail.com','9700000046','Bengaluru','2026-02-19'),
(148,'Rahul Verma','member148@gmail.com','9700000047','Chennai','2026-02-28'),
(149,'Kiran Verma','member149@gmail.com','9700000048','Hyderabad','2026-03-09'),
(150,'Sneha Verma','member150@gmail.com','9700000049','Bengaluru','2026-03-18');

-- 10 LIBRARIANS
INSERT INTO Librarians (librarian_id,name,phone,joining_date,role) VALUES
(201,'Librarian 1','91100000000','2023-01-10','Head Librarian'),
(202,'Librarian 2','91100000001','2023-03-31','Senior Librarian'),
(203,'Librarian 3','91100000002','2023-06-19','Senior Librarian'),
(204,'Librarian 4','91100000003','2023-09-07','Librarian'),
(205,'Librarian 5','91100000004','2023-11-26','Librarian'),
(206,'Librarian 6','91100000005','2024-02-14','Librarian'),
(207,'Librarian 7','91100000006','2024-05-04','Assistant Librarian'),
(208,'Librarian 8','91100000007','2024-07-23','Assistant Librarian'),
(209,'Librarian 9','91100000008','2024-10-11','Assistant Librarian'),
(210,'Librarian 10','91100000009','2024-12-30','Assistant Librarian');

-- 120 BORROW RECORDS
INSERT INTO Borrow_Records (borrow_id,member_id,book_id,librarian_id,borrow_date,return_date,status) VALUES
(1,108,12,201,'2026-01-03','2026-01-09','Returned'),
(2,115,34,202,'2026-01-05','2026-01-12','Returned'),
(3,122,61,203,'2026-01-07','2026-01-15','Returned'),
(4,129,74,204,'2026-01-09',NULL,'Borrowed'),
(5,136,91,205,'2026-01-11','2026-01-21','Returned'),
(6,143,97,206,'2026-01-13','2026-01-24','Returned'),
(7,150,7,207,'2026-01-15','2026-01-27','Returned'),
(8,107,25,208,'2026-01-17',NULL,'Borrowed'),
(9,114,51,209,'2026-01-19','2026-02-02','Returned'),
(10,122,71,210,'2026-01-21','2026-02-05','Returned'),
(11,129,84,201,'2026-01-23','2026-02-08','Returned'),
(12,136,95,202,'2026-01-25',NULL,'Borrowed'),
(13,143,4,203,'2026-01-27','2026-02-14','Returned'),
(14,150,21,204,'2026-01-29','2026-02-17','Returned'),
(15,107,47,205,'2026-01-31','2026-02-20','Returned'),
(16,114,64,206,'2026-02-02',NULL,'Borrowed'),
(17,121,84,207,'2026-02-04','2026-02-26','Returned'),
(18,128,95,208,'2026-02-06','2026-02-11','Returned'),
(19,135,4,209,'2026-02-08','2026-02-14','Returned'),
(20,143,21,210,'2026-02-10',NULL,'Borrowed'),
(21,150,47,201,'2026-02-12','2026-02-20','Returned'),
(22,107,64,202,'2026-02-14','2026-02-23','Returned'),
(23,114,81,203,'2026-02-16','2026-02-26','Returned'),
(24,121,92,204,'2026-02-18',NULL,'Borrowed'),
(25,128,2,205,'2026-02-20','2026-03-04','Returned'),
(26,135,12,206,'2026-02-22','2026-03-07','Returned'),
(27,142,34,207,'2026-02-24','2026-03-10','Returned'),
(28,149,61,208,'2026-02-26',NULL,'Borrowed'),
(29,106,74,209,'2026-02-28','2026-03-16','Returned'),
(30,114,91,210,'2026-03-02','2026-03-19','Returned'),
(31,121,97,201,'2026-03-04','2026-03-22','Returned'),
(32,128,7,202,'2026-03-06',NULL,'Borrowed'),
(33,135,25,203,'2026-03-08','2026-03-28','Returned'),
(34,142,61,204,'2026-03-10','2026-03-31','Returned'),
(35,149,74,205,'2026-03-12','2026-04-03','Returned'),
(36,106,91,206,'2026-03-14',NULL,'Borrowed'),
(37,113,97,207,'2026-03-16','2026-03-22','Returned'),
(38,120,7,208,'2026-03-18','2026-03-25','Returned'),
(39,127,25,209,'2026-03-20','2026-03-28','Returned'),
(40,135,51,210,'2026-03-22',NULL,'Borrowed'),
(41,142,71,201,'2026-03-24','2026-04-03','Returned'),
(42,149,84,202,'2026-03-26','2026-04-06','Returned'),
(43,106,95,203,'2026-03-28','2026-04-09','Returned'),
(44,113,4,204,'2026-03-30',NULL,'Borrowed'),
(45,120,21,205,'2026-04-01','2026-04-15','Returned'),
(46,127,47,206,'2026-04-03','2026-04-18','Returned'),
(47,134,64,207,'2026-04-05','2026-04-21','Returned'),
(48,141,81,208,'2026-04-07',NULL,'Borrowed'),
(49,148,92,209,'2026-04-09','2026-04-27','Returned'),
(50,106,2,210,'2026-04-11','2026-04-30','Returned'),
(51,113,21,201,'2026-04-13','2026-05-03','Returned'),
(52,120,47,202,'2026-04-15',NULL,'Borrowed'),
(53,127,64,203,'2026-04-17','2026-05-09','Returned'),
(54,134,81,204,'2026-04-19','2026-04-24','Returned'),
(55,141,92,205,'2026-04-21','2026-04-27','Returned'),
(56,148,2,206,'2026-04-23',NULL,'Borrowed'),
(57,105,12,207,'2026-04-25','2026-05-03','Returned'),
(58,112,34,208,'2026-04-27','2026-05-06','Returned'),
(59,119,61,209,'2026-04-29','2026-05-09','Returned'),
(60,127,74,210,'2026-05-01',NULL,'Borrowed'),
(61,134,91,201,'2026-05-03','2026-05-15','Returned'),
(62,141,97,202,'2026-05-05','2026-05-18','Returned'),
(63,148,7,203,'2026-05-07','2026-05-21','Returned'),
(64,105,25,204,'2026-05-09',NULL,'Borrowed'),
(65,112,51,205,'2026-05-11','2026-05-27','Returned'),
(66,119,71,206,'2026-05-13','2026-05-30','Returned'),
(67,126,84,207,'2026-05-15','2026-06-02','Returned'),
(68,133,97,208,'2026-05-17',NULL,'Borrowed'),
(69,140,7,209,'2026-05-19','2026-06-08','Returned'),
(70,148,25,210,'2026-05-21','2026-06-11','Returned'),
(71,105,51,201,'2026-05-23','2026-06-14','Returned'),
(72,112,71,202,'2026-05-25',NULL,'Borrowed'),
(73,119,84,203,'2026-05-27','2026-06-02','Returned'),
(74,126,95,204,'2026-05-29','2026-06-05','Returned'),
(75,133,4,205,'2026-05-31','2026-06-08','Returned'),
(76,140,21,206,'2026-06-02',NULL,'Borrowed'),
(77,147,47,207,'2026-06-04','2026-06-14','Returned'),
(78,104,64,208,'2026-06-06','2026-06-17','Returned'),
(79,111,81,209,'2026-06-08','2026-06-20','Returned'),
(80,119,92,210,'2026-06-10',NULL,'Borrowed'),
(81,126,2,201,'2026-06-12','2026-06-26','Returned'),
(82,133,12,202,'2026-06-14','2026-06-29','Returned'),
(83,140,34,203,'2026-06-16','2026-07-02','Returned'),
(84,147,61,204,'2026-06-18',NULL,'Borrowed'),
(85,104,81,205,'2026-06-20','2026-07-08','Returned'),
(86,111,92,206,'2026-06-22','2026-07-11','Returned'),
(87,118,2,207,'2026-06-24','2026-07-14','Returned'),
(88,125,12,208,'2026-06-26',NULL,'Borrowed'),
(89,132,34,209,'2026-06-28','2026-07-20','Returned'),
(90,140,61,210,'2026-06-30','2026-07-05','Returned'),
(91,147,74,201,'2026-07-02','2026-07-08','Returned'),
(92,104,91,202,'2026-07-04',NULL,'Borrowed'),
(93,111,97,203,'2026-07-06','2026-07-14','Returned'),
(94,118,7,204,'2026-07-08','2026-07-17','Returned'),
(95,125,25,205,'2026-07-10','2026-07-20','Returned'),
(96,132,51,206,'2026-07-12',NULL,'Borrowed'),
(97,139,71,207,'2026-07-14','2026-07-26','Returned'),
(98,146,84,208,'2026-07-16','2026-07-29','Returned'),
(99,103,95,209,'2026-07-18','2026-08-01','Returned'),
(100,111,4,210,'2026-07-20',NULL,'Borrowed'),
(101,118,21,201,'2026-07-22','2026-08-07','Returned'),
(102,125,51,202,'2026-07-24','2026-08-10','Returned'),
(103,132,71,203,'2026-07-26','2026-08-13','Returned'),
(104,139,84,204,'2026-07-28',NULL,'Borrowed'),
(105,146,95,205,'2026-07-30','2026-08-19','Returned'),
(106,103,4,206,'2026-08-01','2026-08-22','Returned'),
(107,110,21,207,'2026-08-03','2026-08-25','Returned'),
(108,117,47,208,'2026-08-05',NULL,'Borrowed'),
(109,124,64,209,'2026-08-07','2026-08-13','Returned'),
(110,132,81,210,'2026-08-09','2026-08-16','Returned'),
(111,139,92,201,'2026-08-11','2026-08-19','Returned'),
(112,146,2,202,'2026-08-13',NULL,'Borrowed'),
(113,103,12,203,'2026-08-15','2026-08-25','Returned'),
(114,110,34,204,'2026-08-17','2026-08-28','Returned'),
(115,117,61,205,'2026-08-19','2026-08-31','Returned'),
(116,124,74,206,'2026-08-21',NULL,'Borrowed'),
(117,131,91,207,'2026-08-23','2026-09-06','Returned'),
(118,138,97,208,'2026-08-25','2026-09-09','Returned'),
(119,145,12,209,'2026-08-27','2026-09-12','Returned'),
(120,103,34,210,'2026-08-29',NULL,'Borrowed');

-- 20 RESERVATIONS
INSERT INTO Reservations (reservation_id,member_id,book_id,reservation_date) VALUES
(1,108,2,'2026-01-22'),
(2,113,4,'2026-02-03'),
(3,118,7,'2026-02-15'),
(4,123,12,'2026-02-27'),
(5,128,21,'2026-03-11'),
(6,133,25,'2026-03-23'),
(7,138,34,'2026-04-04'),
(8,143,47,'2026-04-16'),
(9,148,51,'2026-04-28'),
(10,105,61,'2026-05-10'),
(11,110,64,'2026-05-22'),
(12,115,71,'2026-06-03'),
(13,120,74,'2026-06-15'),
(14,125,81,'2026-06-27'),
(15,130,84,'2026-07-09'),
(16,135,91,'2026-07-21'),
(17,140,92,'2026-08-02'),
(18,145,95,'2026-08-14'),
(19,150,97,'2026-08-26'),
(20,107,2,'2026-09-07');

-- BASIC QUERIES
SELECT * FROM Books WHERE price > 500;
SELECT * FROM Members WHERE address = 'Hyderabad';
SELECT * FROM Books WHERE category = 'Fiction';
SELECT * FROM Books WHERE added_date > '2023-12-31';

-- JOINS
SELECT m.name,b.title FROM Members m
JOIN Borrow_Records br ON m.member_id=br.member_id
JOIN Books b ON br.book_id=b.book_id;
SELECT b.title,br.status FROM Books b
JOIN Borrow_Records br ON b.book_id=br.book_id;
SELECT br.borrow_id,m.name,br.book_id,br.borrow_date,br.return_date,br.status
FROM Borrow_Records br JOIN Members m ON br.member_id=m.member_id;
SELECT b.title,l.name AS librarian_name
FROM Books b JOIN Borrow_Records br ON b.book_id=br.book_id
JOIN Librarians l ON br.librarian_id=l.librarian_id;
SELECT m.name,b.title FROM Members m
JOIN Borrow_Records br ON m.member_id=br.member_id
JOIN Books b ON br.book_id=b.book_id;

-- AGGREGATES
SELECT COUNT(*) AS total_books FROM Books;
SELECT AVG(price) AS average_price FROM Books;
SELECT COUNT(borrow_id) AS total_books_borrowed FROM Borrow_Records;
SELECT COUNT(*) AS total_borrow_records FROM Borrow_Records;
SELECT title,price FROM Books WHERE price=(SELECT MAX(price) FROM Books);

-- SUBQUERIES
SELECT * FROM Members WHERE member_id NOT IN (SELECT member_id FROM Borrow_Records);
SELECT * FROM Books WHERE book_id NOT IN (SELECT book_id FROM Borrow_Records);
SELECT title,price FROM Books WHERE price>(SELECT AVG(price) FROM Books);
SELECT member_id,COUNT(book_id) AS borrowed_books FROM Borrow_Records
GROUP BY member_id
HAVING COUNT(book_id)>(SELECT AVG(borrowed_books) FROM
(SELECT member_id,COUNT(book_id) AS borrowed_books FROM Borrow_Records GROUP BY member_id)x);
SELECT * FROM Borrow_Records WHERE return_date IS NOT NULL
AND DATEDIFF(return_date,borrow_date)>(SELECT AVG(DATEDIFF(return_date,borrow_date))
FROM Borrow_Records WHERE return_date IS NOT NULL);

-- VIEWS
CREATE OR REPLACE VIEW member_borrow_records AS
SELECT m.member_id,m.name AS member_name,br.borrow_id,br.book_id,br.borrow_date,br.return_date,br.status
FROM Members m JOIN Borrow_Records br ON m.member_id=br.member_id;
CREATE OR REPLACE VIEW book_details AS SELECT * FROM Books;
CREATE OR REPLACE VIEW borrow_details AS
SELECT br.borrow_id,m.name AS member_name,b.title AS book_title,br.borrow_date,br.return_date,br.status
FROM Borrow_Records br JOIN Members m ON br.member_id=m.member_id JOIN Books b ON br.book_id=b.book_id;
CREATE OR REPLACE VIEW member_borrow_count AS
SELECT m.member_id,m.name AS member_name,COUNT(br.book_id) AS total_books_borrowed
FROM Members m LEFT JOIN Borrow_Records br ON m.member_id=br.member_id
GROUP BY m.member_id,m.name;
CREATE OR REPLACE VIEW most_borrowed_books AS
SELECT b.book_id,b.title AS book_title,COUNT(br.borrow_id) AS times_borrowed
FROM Books b JOIN Borrow_Records br ON b.book_id=br.book_id
GROUP BY b.book_id,b.title ORDER BY times_borrowed DESC;

-- STORED PROCEDURES
DELIMITER //
CREATE PROCEDURE AddMember(IN p_member_id INT,IN p_name VARCHAR(100),IN p_email VARCHAR(100),
IN p_phone VARCHAR(15),IN p_address VARCHAR(255),IN p_membership_date DATE)
BEGIN INSERT INTO Members VALUES(p_member_id,p_name,p_email,p_phone,p_address,p_membership_date); END //
CREATE PROCEDURE UpdateBookPrice(IN p_book_id INT,IN p_new_price DECIMAL(10,2))
BEGIN UPDATE Books SET price=p_new_price WHERE book_id=p_book_id; END //
CREATE PROCEDURE GetMemberBorrowRecords(IN p_member_id INT)
BEGIN SELECT * FROM Borrow_Records WHERE member_id=p_member_id; END //
CREATE PROCEDURE TotalBorrowedBooks()
BEGIN SELECT COUNT(*) AS total_borrowed_books FROM Borrow_Records; END //
CREATE PROCEDURE ListBooksByCategory(IN p_category VARCHAR(50))
BEGIN SELECT * FROM Books WHERE category=p_category; END //
DELIMITER ;

-- RESERVATION QUERY
SELECT r.reservation_id,m.name AS member_name,b.title AS book_title,r.reservation_date
FROM Reservations r JOIN Members m ON r.member_id=m.member_id JOIN Books b ON r.book_id=b.book_id;

-- REPORTS
SELECT b.book_id,b.title,COUNT(br.borrow_id) AS times_borrowed
FROM Books b JOIN Borrow_Records br ON b.book_id=br.book_id
GROUP BY b.book_id,b.title ORDER BY times_borrowed DESC LIMIT 5;
SELECT m.member_id,m.name,COUNT(br.borrow_id) AS total_books_borrowed
FROM Members m LEFT JOIN Borrow_Records br ON m.member_id=br.member_id
GROUP BY m.member_id,m.name ORDER BY total_books_borrowed DESC;
SELECT YEAR(borrow_date) AS borrow_year,MONTH(borrow_date) AS borrow_month,COUNT(borrow_id) AS total_borrowed
FROM Borrow_Records GROUP BY YEAR(borrow_date),MONTH(borrow_date)
ORDER BY borrow_year,borrow_month;
SELECT b.category,COUNT(br.borrow_id) AS total_borrowed
FROM Books b JOIN Borrow_Records br ON b.book_id=br.book_id
GROUP BY b.category ORDER BY total_borrowed DESC LIMIT 1;
SELECT m.member_id,m.name,COUNT(br.borrow_id) AS total_books_borrowed
FROM Members m LEFT JOIN Borrow_Records br ON m.member_id=br.member_id
GROUP BY m.member_id,m.name ORDER BY total_books_borrowed DESC;
SELECT b.book_id,b.title,COUNT(DISTINCT br.borrow_id) AS borrow_count,
COUNT(DISTINCT r.reservation_id) AS reservation_count,
COUNT(DISTINCT br.borrow_id)+COUNT(DISTINCT r.reservation_id) AS demand_score
FROM Books b LEFT JOIN Borrow_Records br ON b.book_id=br.book_id
LEFT JOIN Reservations r ON b.book_id=r.book_id
GROUP BY b.book_id,b.title ORDER BY demand_score DESC LIMIT 5;

-- INDEXES
CREATE INDEX idx_books_category ON Books(category);
CREATE INDEX idx_borrow_member ON Borrow_Records(member_id);
CREATE INDEX idx_borrow_book ON Borrow_Records(book_id);
CREATE INDEX idx_borrow_date ON Borrow_Records(borrow_date);

-- OPTIONAL TESTS
-- CALL TotalBorrowedBooks();
-- CALL ListBooksByCategory('Fiction');

SELECT * FROM Books;

-- Prathi member enni books borrow chesado display cheyyali.
-- Member name tho paatu, borrowed books count kuda kavali.



SELECT 
    m.member_id,
    m.name,
    COUNT(br.borrow_id) AS TotalBooksBorrowed
FROM Members AS m
LEFT JOIN Borrow_Records AS br
    ON m.member_id = br.member_id
GROUP BY m.member_id, m.name;


SELECT *
FROM Borrow_Records
LIMIT 10;

-- Find all books whose price is greater than 500.
SELECT title
FROM Books
WHERE price>500;

-- Display the member name and the title of the book borrowed by that member.

SELECT m.name,b.title
FROM Members AS m
JOIN Borrow_Records AS br
ON br.member_id = m.member_id
JOIN Books as b
ON b.book_id = br.book_id;

-- Find the number of books borrowed by each member.

SELECT m.name,COUNT(borrow_id)
FROM Members AS m
JOIN Borrow_Records AS br
ON br.member_id = m.member_id
GROUP BY m.name;

-- Find all books whose price is higher than the average price of all books.

SELECT title
FROM Books
WHERE price > (

SELECT AVG(price)
FROM Books);


-- Find members who have borrowed more books than the average number of books borrowed by all members.

SELECT 
    m.member_id,
    m.name,
    COUNT(br.book_id) AS borrowed_books
FROM Members AS m
JOIN Borrow_Records AS br
    ON m.member_id = br.member_id
GROUP BY m.member_id, m.name
HAVING COUNT(br.book_id) > (
    SELECT AVG(borrowed_books)
    FROM (
        SELECT 
            member_id,
            COUNT(book_id) AS borrowed_books
        FROM Borrow_Records
        GROUP BY member_id
    ) AS x
);

-- Find the total number of books borrowed by each librarian.


SELECT 
    l.name,
    COUNT(br.book_id) AS total_books_borrowed
FROM Librarians AS l
LEFT JOIN Borrow_Records AS br
    ON br.librarian_id = l.librarian_id
GROUP BY l.librarian_id, l.name;

-- Find librarians who have borrowed more than 10 books.


SELECT 
    l.librarian_id,
    l.name,
    COUNT(br.book_id) AS total_books
FROM Librarians AS l
LEFT JOIN Borrow_Records AS br
    ON br.librarian_id = l.librarian_id
GROUP BY l.librarian_id, l.name
HAVING COUNT(br.book_id) > 10;


-- Find all books whose price is higher than the average price of books in the library.

SELECT title,price
FROM Books
WHERE price > (
SELECT AVG(price) 
FROM Books);

-- Find the top 3 most borrowed books and display the book title along with the number of times each book was borrowed.


SELECT 
    b.title,
    COUNT(br.borrow_id) AS times_borrowed
FROM Books AS b
JOIN Borrow_Records AS br
    ON b.book_id = br.book_id
GROUP BY b.book_id, b.title
ORDER BY times_borrowed DESC
LIMIT 3;

-- Find members who have never borrowed any books.

SELECT m.name
FROM Members AS m
LEFT JOIN Borrow_Records AS br
    ON br.member_id = m.member_id
WHERE br.borrow_id IS NULL;

-- Find the total number of books in each category, and display only categories having more than 10 books.

SELECT category,COUNT(*) AS total_books
FROM Books
GROUP BY category 
HAVING COUNT(*) > 10
ORDER BY COUNT(*) ASC;

-- Display all members, including members who have never borrowed a book, along with the number of books they borrowed.


SELECT 
    m.member_id,
    m.name,
    COUNT(br.book_id) AS total_books_borrowed
FROM Members AS m
LEFT JOIN Borrow_Records AS br
    ON m.member_id = br.member_id
GROUP BY m.member_id, m.name;


-- Find the books whose price is lower than the average price of all books.

SELECT title
FROM Books
WHERE price < (
SELECT AVG(price) 
FROM Books);

-- Return the top 5 members based on the number of books they have borrowed, showing the member name and borrowing count.

SELECT 
      m.member_id,
      m.name,
      COUNT(br.borrow_id) AS Total_count
FROM Members AS m
JOIN Borrow_records AS br
     ON m.member_id = br.member_id
GROUP BY m.name,m.member_id
ORDER BY COUNT(br.borrow_id) DESC
LIMIT 5;

-- Find librarians who have not handled any borrowing records.

SELECT l.name
FROM Librarians AS l
LEFT JOIN Borrow_Records AS br
ON l.librarian_id = br.librarian_id
WHERE l.librarian_id IS NULL;

-- Display every member's name and the total number of books they have borrowed. 
-- Members who have never borrowed a book should also be displayed with a count of 0.

SELECT 
      m.name,
      COUNT(br.borrow_id)
FROM Members AS m
LEFT JOIN Borrow_Records AS br
      ON m.member_id = br.member_id
GROUP BY m.name;

-- Find the members who have borrowed at least 3 books. 
-- Display the member name and the total number of books they have borrowed.


SELECT 
    m.name,
    COUNT(br.book_id) AS total_borrowed_books
FROM Members AS m
JOIN Borrow_Records AS br
    ON m.member_id = br.member_id
GROUP BY m.member_id, m.name
HAVING COUNT(br.book_id) >= 3;

-- “Find the top 3 most borrowed books from the Library. 
-- Display the book title and how many times each book was borrowed.”

SELECT 
    b.title,
    COUNT(br.borrow_id) AS times_borrowed
FROM Books AS b
JOIN Borrow_Records AS br
    ON br.book_id = b.book_id
GROUP BY b.book_id, b.title
ORDER BY times_borrowed DESC
LIMIT 3;

-- Find all members who have never borrowed any book from the library. 
--  their member ID and member name.

SELECT m.member_id,m.name
FROM Members AS m
LEFT JOIN Borrow_Records AS br
ON br.member_id = m.member_id
WHERE br.borrow_id IS NULL;

-- Find the librarians who have handled more than 10 borrowing transactions. 
-- Display librarian name and total transactions handled

SELECT 
    l.librarian_id,
    l.name,
    COUNT(br.borrow_id) AS total_transactions
FROM Librarians AS l
JOIN Borrow_Records AS br
    ON l.librarian_id = br.librarian_id
GROUP BY l.librarian_id, l.name
HAVING total_transactions > 10;

-- “Find the books whose price is higher than the average price of all books. 
-- Display the book title and its price

SELECT title, price AS higher_than_avg_price
FROM Books
WHERE price > (
SELECT AVG(price) 
FROM Books);

-- Find each category and the total number of books in that category. 
-- Display only categories having more than 10 books.

SELECT category,COUNT(book_id)
FROM Books
GROUP BY category
HAVING COUNT(book_id) > 10;

-- Display every member's name and the number of books they have borrowed. 
-- Members who never borrowed a book should also appear with count 0

SELECT
      m.member_id,
      m.name,
      COUNT(br.borrow_id) AS Total_borrow_books
FROM Members AS m
LEFT JOIN Borrow_Records AS br
      ON m.member_id = br.member_id
GROUP BY  m.member_id ,m.name;

-- Find the books whose price is lower than the average price of all books. Display:

SELECT title,category,price
FROM Books
WHERE price <(
SELECT AVG(price)
FROM Books);

-- Find the top 3 members who have borrowed the highest number of books. Display:
-- member name
-- total number of books borrowed

SELECT 
      m.name,
      COUNT(br.book_id) AS total_books
FROM Members AS m
JOIN Borrow_Records AS br
ON m.member_id = br.member_id
GROUP BY m.name,m.member_id
ORDER BY total_books DESC
LIMIT 3;

-- “Find the members whose total number of borrowed books is greater than the average number of books borrowed per member. Display:
-- member name
-- total books borrowed”

SELECT
    m.name,
    COUNT(br.book_id) AS total_books
FROM Members AS m
JOIN Borrow_Records AS br
    ON m.member_id = br.member_id
GROUP BY m.member_id, m.name
HAVING COUNT(br.book_id) > (
    SELECT AVG(total_books)
    FROM (
        SELECT
            member_id,
            COUNT(book_id) AS total_books
        FROM Borrow_Records
        GROUP BY member_id
    ) AS x
);



SELECT
    title,
    price,
    ROW_NUMBER() OVER (
        ORDER BY price DESC
    ) AS price_rank
FROM Books;

-- Display every book's title, price, and assign a unique row number based on price from highest to lowest.

SELECT 
      title,
      price,
      ROW_NUMBER() OVER (
          ORDER BY price DESC
	) AS Unique_row_number
FROM Books;

-- Display every book's title, category, and price. 
-- Assign a unique row number based on price from highest to lowest. 
-- If two books have the same price, sort those books alphabetically by title.

    
    SELECT
    librarian_id,
    borrow_id,
    borrow_date,
    ROW_NUMBER() OVER (
        PARTITION BY librarian_id
        ORDER BY borrow_date DESC
    ) AS row_num
FROM Borrow_Records;
     
-- For each member, assign a unique row number to their borrowed books based on borrow_date from oldest to newest.”
-- member_id
-- book_id
-- borrow_date
-- row_num

SELECT 
      member_id,
      book_id,
      borrow_date,
      ROW_NUMBER() OVER (
         PARTITION BY member_id
         ORDER BY borrow_date ASC
	) AS row_num
FROM Borrow_Records;

-- For each category, assign a unique row number to books based on their price from highest to lowest.

SELECT 
      category,
      title,
      price,
      ROW_NUMBER() OVER(
      PARTITION BY category
      ORDER BY price DESC
      ) AS row_num
      
FROM Books;

-- For each book category, assign a unique row number to the books based on their price from lowest to highest.
-- category
-- title
-- price
-- row_num

SELECT 
     category,
     title,
     price,
     ROW_NUMBER() OVER (
        PARTITION BY category
        ORDER BY price ASC
	) AS row_num
FROM Books;
