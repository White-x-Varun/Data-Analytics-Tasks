CREATE DATABASE College;

USE College;

-- STUDENTS TABLE
CREATE TABLE Students
(
    studentid INT PRIMARY KEY,
    studentname VARCHAR(100),
    courseid INT
);

-- COURSES TABLE
CREATE TABLE Courses
(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    fees INT
);

-- FACULTY TABLE
CREATE TABLE Faculty
(
    facultyid VARCHAR(20),
    name VARCHAR(100),
    subjectassigned VARCHAR(50),
    dateofjoining DATE
);

-- LIBRARY TABLE
CREATE TABLE Library
(
    noofbooks INT PRIMARY KEY,
    author VARCHAR(100),
    dateofissue DATE,
    dateofreturn DATE,
    book_name VARCHAR(150)
);

-- FEE TABLE
CREATE TABLE Fee
(
    fee_id INT PRIMARY KEY,
    studentid INT,
    Annualfee INT,
    paidamount INT,
    remainingfee INT
);

-- STUDENTS DATA
INSERT INTO Students(studentid, studentname, courseid)
VALUES
(1, 'Varun', 101),
(2, 'Aman', 102),
(3, 'Aram', 103),
(4, 'Rahul', 101),
(5, 'Shivam', 102);

-- COURSES DATA
INSERT INTO Courses(courseid, coursename, fees)
VALUES
(101, 'MCA', 65000),
(102, 'BCA', 50000),
(103, 'BBA', 55000);

-- FACULTY DATA
INSERT INTO Faculty
(facultyid, name, subjectassigned, dateofjoining)
VALUES
('F101', 'Aarav', 'DSA', '2025-04-19'),
('F102', 'Ishaan', 'Computer Network', '2026-03-15'),
('F103', 'Raman', 'Data Science', '2021-11-22'),
('F104', 'Shyam', 'C Fundamentals', '2023-09-27'),
('F105', 'Shivam', 'Operating System', '2024-07-12');

-- LIBRARY DATA
INSERT INTO Library
(noofbooks, author, dateofissue, dateofreturn, book_name)
VALUES
(25, 'R.K. Sharma', '2026-08-13', '2026-08-22', 'Database Management System'),
(50, 'A.P. Verma', '2025-11-20', '2026-12-02', 'Computer Networks'),
(100, 'S.K. Singh', '2026-05-18', '2026-06-09', 'Python Programming');

-- FEE DATA
INSERT INTO Fee
(fee_id, studentid, Annualfee, paidamount, remainingfee)
VALUES
(1001, 1, 65000, 20000, 45000),
(1002, 2, 50000, 30000, 20000),
(1003, 3, 120000, 75000, 45000),
(1004, 4, 35000, 17500, 17500),
(1005, 5, 45000, 35000, 10000);

-- VIEW TABLES
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Faculty;
SELECT * FROM Library;
SELECT * FROM Fee;

-- INNER JOIN
SELECT
    Students.studentid,
    Students.studentname,
    Courses.coursename,
    Courses.fees
FROM Students
INNER JOIN Courses
ON Students.courseid = Courses.courseid
WHERE Courses.coursename = 'MCA';

-- LEFT JOIN
SELECT
    Students.studentid,
    Students.studentname,
    Courses.coursename,
    Courses.fees
FROM Students
left JOIN Courses
ON Students.courseid = Courses.courseid;
