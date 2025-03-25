

-- create students relation
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- insert data to students relation
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
('John', 'Doe', 20, 'A+', 'Physics', 'john.doe@example.com', '2004-05-15', 'O+', 'USA'),
('Emma', 'Smith', 22, 'B', 'Mathematics', 'emma.smith@example.com', '2002-09-10', 'A-', 'Canada'),
('Liam', 'Brown', 19, 'A', 'Computer Science', 'liam.brown@example.com', '2005-01-25', 'B+', 'UK'),
('Sophia', 'Davis', 21, 'C+', 'Biology', 'sophia.davis@example.com', '2003-07-08', 'AB-', 'Australia'),
('Noah', 'Wilson', 23, 'B-', 'Chemistry', 'noah.wilson@example.com', '2001-12-20', 'O-', 'Germany');


-- see all data from students relation
SELECT * from students;

-- see email as rifat sarker
-- SELECT email as "rifat sarker" from students;
SELECT email as "rifat sarker" from students;