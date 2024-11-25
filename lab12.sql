-- Lines starting with double dash are ignored by the DB
SELECT * 
FROM courses

- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--Exercise 1
SELECT concat(course_name, ' - ', semester)
FROM courses;

--Exercise 2
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%'
--Initally I used Not NULL to find out I needed to use LIKE 'Fri%'

--Exercise 3
SELECT course_id, title, due_date
FROM assignments
WHERE due_date > '2024-11-24';

--Exercise 4
SELECT status, COUNT(*)
FROM assignments
GROUP BY status

--Exercise 5
SELECT course_id, course_name
FROM courses
ORDER BY LENGTH(course_name)DESC
--Descending filter is used to sort by the longest name
LIMIT 1
--Limit to the top result because it's going to be the longest due to the above filter


-Exercise 6
SELECT upper(course_name)
from courses

--Exercise 7
SELECT course_id, title, due_date
FROM assignments
WHERE due_date LIKE '%-09-%';

-Exercise 8
SELECT course_id, title, due_date
FROM assignments
WHERE due_date IS NULL;


