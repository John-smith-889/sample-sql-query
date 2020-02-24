------------------
-- Create tables -
------------------

CREATE TABLE students
(student_id int NOT NULL PRIMARY KEY,
name varchar(20) NOT NULL,
surname varchar(20) NOT NULL,
birth_date date NOT NULL,
faculty varchar(20) NOT NULL)

CREATE TABLE exam_results
(student_id int NOT NULL,
class_id int NOT NULL,
exam_date date NOT NULL,
grade numeric NOT NULL)

CREATE TABLE class_catalogue
(class_id int NOT NULL,
class_name varchar(20) NOT NULL,
professor_id int NOT NULL,
semester varchar(20) NOT NULL)

----------------
-- Insert data -
----------------

INSERT INTO students
  ( student_id, name, surname, birth_date, faculty)
VALUES
  (34577, 'John', 'Peters', '1993-02-15', 'Mathematics'), 
  (34578, 'Kate', 'Smith', '1992-10-29', 'Economy')

INSERT INTO exam_results
  ( student_id, class_id, exam_date, grade)
VALUES
  (34577, 6743, '2019-06-19', 2), 
  (34577, 2876, '2019-06-06', 3),
  (34578, 6743, '2019-06-19', 4.5)

INSERT INTO class_catalogue
  ( class_id, class_name, professor_id, semester)
VALUES
  (6743, 'algebra', 4352, '2019_summer'),
  (2876, 'calculus', 5325, '2019_summer'),
  (3466, 'statistics', 6253, '2019_winter')
