-- Comment
SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

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
SELECT title, due_date
FROM assignments
WHERE course_id LIKE 'COMP1234';
--Using 'like isn't needed if specific course id is used

--Exercise 2
SELECT MIN(due_date)
FROM assignments;

--Exercise 3
SELECT MAX(due_date)
FROM assignments;

--Exercise 4 
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08'

--Exercise 5
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-Exercise 6
SELECT MAX(due_date)
FROM assignments
WHERE status = 'Completed';
