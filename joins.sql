CREATE DATABASE hospital;

USE hospital;

CREATE TABLE doctors(
doctor_id INT PRIMARY KEY,
doctor_name VARCHAR(50),
specialization VARCHAR(50),
salary DECIMAL(10,2)
);

INSERT INTO doctors
VALUES
(101,'Dr. Ravi','Cardiology',120000),
(102,'Dr. Sita','Neurology',140000),
(103,'Dr. Arjun','Orthopedic',110000),
(104,'Dr. Priya','Pediatrics',100000),
(105,'Dr. Rahul','Dermatology',90000),
(106,'Dr. Kiran','ENT',95000);

CREATE TABLE patients(
patient_id INT PRIMARY KEY,
patient_name VARCHAR(50),
age INT,
disease VARCHAR(50),
doctor_id INT
);

INSERT INTO patients
VALUES
(1,'Amit',25,'Heart Problem',101),
(2,'Ramesh',30,'Brain Tumor',102),
(3,'Anjali',18,'Fracture',103),
(4,'Sneha',10,'Fever',104),
(5,'Mahesh',40,'Skin Allergy',105),
(6,'Deepa',35,'Ear Pain',106),
(7,'Kumar',55,'Heart Problem',101),
(8,'Swathi',22,'Fracture',103),
(9,'Rani',15,'Fever',104),
(10,'Vijay',28,'Skin Allergy',105);


SELECT * 
FROM doctors as d
LEFT JOIN patients as p
ON d.doctor_id = p.doctor_id;


SELECT * 
FROM doctors as d
RIGHT JOIN patients as p
ON d.doctor_id = p.doctor_id;





SELECT * 
FROM doctors as d
LEFT JOIN patients as p
ON d.doctor_id = p.doctor_id
UNION
SELECT * 
FROM doctors as d
RIGHT JOIN patients as p
ON d.doctor_id = p.doctor_id;


SELECT * 
FROM doctors as d
LEFT JOIN patients as p
ON d.doctor_id = p.doctor_id
WHERE age>25
UNION
SELECT * 
FROM doctors as d
RIGHT JOIN patients as p
ON d.doctor_id = p.doctor_id 
WHERE age>25;


SELECT d.doctor_id,p.patient_id
FROM doctors as d
LEFT JOIN patients as p
ON d.doctor_id = p.doctor_id
WHERE age>25
UNION
SELECT d.doctor_id,p.patient_id 
FROM doctors as d
RIGHT JOIN patients as p
ON d.doctor_id = p.doctor_id 
WHERE age>25;

SELECT d.doctor_name,p.patient_name,
FROM doctors as d
LEFT JOIN patients as p
ON d.doctor_id = p.doctor_id
WHERE age>25
UNION
SELECT d.doctor_name,p.patient_name 
FROM doctors as d
RIGHT JOIN patients as p
ON d.doctor_id = p.doctor_id 
WHERE age>25;

