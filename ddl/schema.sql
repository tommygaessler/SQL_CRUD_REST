-- restart database
DROP DATABASE if EXISTS galvanize;
CREATE DATABASE galvanize;
\connect galvanize;

-- create table
CREATE TABLE students (
  id serial primary key,
  first_name varchar(225) NOT NULL,
  last_name varchar(225) NOT NULL,
  jobs_applied int DEFAULT 0
);

-- template type thing
CREATE TABLE teachers (
  id serial primary key,
  first_name varchar(225) NOT NULL,
  last_name varchar(225) NOT NULL
);

CREATE TABLE classes (
  id serial primary key,
  subject varchar(225) NOT NULL
);

-- add teacher/class references
ALTER TABLE classes ADD teacher_id integer REFERENCES teachers(id);

CREATE TABLE classes_students (
  class_id integer REFERENCES classes(id),
  student_id integer REFERENCES students(id)
)
