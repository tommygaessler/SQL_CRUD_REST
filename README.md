# CRUD => SQL Queries
As you've probably noticed already, you'll see a lot of parallels in programming. We just discussed the different CRUD operations. Now we will map them to some SQL operations. Think about the following SQL operators and guess which CRUD operations they would map to.

- INSERT
- SELECT
- UPDATE
- DELETE

# Same Same, but Different
Think about when we used an http server and the `fs` module to read and write data to and from a file.

![CRUD_REST_SQL](./CRUD_SQL_REST.jpg)

Now we are reading and writing to an actual DB.


# Exercise
Build a schema for students, teachers, and "classes", in g30. Create a new file called `schema.sql`. Add the code to create the necessary tables shown in the ERD, then complete each step.

 ![ERD](./erd.png)


## Steps
- INSERT
  - A statement to insert all current students and teachers have been added for you in `students.sql`
  - Add a new student who has applied to 10 jobs
  - Add a new instructor
  - Add at least 3 different classes
- UPDATE
  - Change the number of jobs you've applied to 3.
  UPDATE students SET jobs_applied=3 WHERE first_name='Tommy';

  - Change the number of jobs a classmate has applied to 5.  
  UPDATE students SET jobs_applied=3 WHERE first_name='Tommy';

  - Change who's teaching one of the classes.
  UPDATE classes
  SET teacher_id = (SELECT id FROM teachers WHERE last_name='Herman') WHERE subject='business';

  SET teacher_id = (SELECT id FROM teachers WHERE last_name = 'Herman') WHERE subject = 'business';
- SELECT
  - Select all students who have applied to at least 1 job.
  SELECT * FROM students WHERE jobs_applied > 1;

  - Select all teachers whose last names are Herman or Hassara.
  SELECT * FROM teachers WHERE last_name IN ('Herman', 'Hassara');

  - Select all classes taught by teachers whose last names are Reid or Hajek.

  SELECT * FROM classes
  WHERE teacher_id = (SELECT id FROM teachers WHERE last_name = 'Reid') OR teacher_id=(SELECT id FROM teachers WHERE last_name = 'Hajek');



- DELETE
  - Remove all students who have applied to more than 5 jobs.

  DELETE FROM students WHERE jobs_applied > 5;

  - Remove the class with your least favorite subject.

  DELETE FROM classes WHERE subject='Janky Python';

  - Finally, you're hired! Remove yourself from the students table!

  DELETE FROM students WHERE first_name='Tommy';
