CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO students (name) VALUES ('Lois Lane'), ('Lex Luthor');


CREATE OR REPLACE PROCEDURE add_student(student_name VARCHAR(100))
LANGUAGE plpgsql
AS $$
BEGIN
INSERT INTO Students (name)
VALUES (student_name);
END;
$$;

CALL add_student('Clark Kent');