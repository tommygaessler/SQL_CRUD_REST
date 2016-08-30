-- remove existing rows
TRUNCATE classes CASCADE;

INSERT INTO classes (subject, teacher_id)
  VALUES
  ('Janky Python', (SELECT id FROM teachers WHERE last_name = 'Herman')),
  ('Promises', (SELECT id FROM teachers WHERE last_name = 'Reid')),
  ('Basic Queries', (SELECT id FROM teachers WHERE last_name = 'Hajek')),
  ('Defence Against the Dark Queries', (SELECT id FROM teachers WHERE last_name = 'Hassara'));

  -- SELECT * FROM classes -- finds eveything in classes
  -- -- that the teacher _id is the teacher id in teacher with last_name of 'Reid'
  -- WHERE teacher_id = (SELECT id FROM teachers WHERE last_name = 'Reid') OR teacher_id=(SELECT id FROM teachers WHERE last_name = 'Hajek');
