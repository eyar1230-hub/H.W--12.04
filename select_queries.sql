--1--
SELECT *
FROM students;

--2--
SELECT name, grade 
from students;

--2--
SELECT *
FROM students
WHERE grade > 90;

--4--
SELECT *
FROM students
WHERE name like 'm%';

--5--
SELECT name, grade as '1-max, 2-min'
FROM students
WHERE grade = (SELECT max(grade) FROM students) OR grade = (SELECT min(grade) FROM students);

SELECT avg(grade) as 'avg grade'
FROM students;

--6--
SELECT *
FROM students
WHERE grade > (SELECT avg(grade) FROM students);

