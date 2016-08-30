-- delete existing rows
TRUNCATE students CASCADE;

-- create students
INSERT INTO students (first_name, last_name)
VALUES
  ('Adam', 'Franzen'),
  ('Akiko', 'Okabe'),
  ('Alex', 'Glassford'),
  ('Alex', 'Nye'),
  ('Alias', 'Montoya'),
  ('Allen', 'Fordham'),
  ('Austin', 'Mahan'),
  ('Brandon', 'Blair'),
  ('Derek', 'Styer'),
  ('George', 'Vickstrom'),
  ('Gina', 'DeBell'),
  ('Isaac', 'Collier'),
  ('Isaac', 'Miller'),
  ('John', 'Berger'),
  ('Jordon', 'Hoshor'),
  ('Kristjan', 'Gannon'),
  ('Mark', 'Dickinson'),
  ('Nathan', 'Dennis'),
  ('Phil', 'Benz'),
  ('Ryan', 'Harings'),
  ('Ryan', 'Pando'),
  ('Sam', 'Goldsmith'),
  ('Shane', 'Pittman'),
  ('Tommy', 'Gaessler'),
  ('Tyler', 'Maier');
