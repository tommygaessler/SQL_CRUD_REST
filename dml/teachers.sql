-- delete existing rows
TRUNCATE teachers CASCADE;

-- create teachers
INSERT INTO teachers (first_name, last_name)
VALUES
  ('Michael', 'Herman'),
  ('Wes', 'Reid'),
  ('Robby', 'Hajek'),
  ('Ben', 'Hassara');
