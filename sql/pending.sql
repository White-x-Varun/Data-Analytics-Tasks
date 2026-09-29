create database school;
use school;
create table  student
(   studentid INT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(20),
	marks Int
);

INSERT INTO students(studentid, name, course,marks)
VALUES
(1, 'VArun', 'MCA',35),
(2, 'Aman', 'BCA',92),
(3, 'Aram', 'BBA',74);

select name,marks,
CASE
	when marks >=90 then 'Exellent'
    when marks >=75 then 'Good'
    when marks >=50 then 'Average'
    else 'Fail'
End as Grade
from  students_details;

