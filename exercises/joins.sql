-- Return a table that shows the first and last name of all teachers, their ids, and the subject of the class they teach

SELECT first_name, last_name, t.id AS teacher_id, c.subject
FROM teachers t
JOIN classes c ON t.id = c.teacher_id;

-- Modify the above query so that the first name and last name appear combined as a single column called "name"

SELECT CONCAT(first_name, ' ', last_name) AS name, t.id AS teacher_id, c.subject
FROM teachers t
JOIN classes c ON t.id = c.teacher_id;

-- Return a table that shows the id, first, and last name of students who are in any class at all; there will likely be duplicates in the list

SELECT students.id, students.first_name, students.last_name
FROM classes_students
JOIN students ON students.id = classes_students.student_id;

-- Modify the above query so that there are no duplicates and it's ordered by the students first name

SELECT DISTINCT students.id, students.first_name, students.last_name
FROM classes_students
JOIN students ON students.id = classes_students.student_id ORDER BY first_name;

-- Modify the above query to only show those students who do not appear in the above list. That is, the have not signed up for any classes. An inner join will not work here!

SELECT students.id, students.first_name, students.last_name
FROM classes_students
FULL OUTER JOIN students ON students.id = classes_students.student_id WHERE classes_students.student_id IS NULL
ORDER BY first_name;

-- Starting the with classes_students table, join all information from both associated tables and order by the class id

SELECT * FROM classes_students
JOIN students ON classes_students.student_id = students.id
JOIN classes ON classes_students.class_id = classes.id;

-- Modify the above statement so that it only returns the class id, the class subject, and the number of students in the class

SELECT classes.id, classes.subject, COUNT(classes.id) FROM classes_students
JOIN students ON classes_students.student_id = students.id
JOIN classes ON classes_students.class_id = classes.id
GROUP BY classes.id, classes.subject;




-- SELECT * FROM a
-- INNER JOIN b
-- ON a.name = b.name;
-- insersection, duplicates


-- SELECT * FROM a LEFT JOIN b
-- ON a.name = b.name;

-- everything in a and what matches in b


-- SELECT * FROM a LEFT JOIN b
-- ON a.name = b.name WHERE b.id IS NULL;

-- everything that doesnt match b. The ones only in a


-- SELECT * FROM a FULL OUTER JOIN b
-- ON a.name = b.name;

-- full join


-- SELECT * FROM a FULL OUTER JOIN b
-- ON a.name = b.name WHERE a.id IS NULL OR b.id IS NULL;

-- full join of just nulls
