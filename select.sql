

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
SELECT email as "rifat sarker" from students;




-- see all data and sort by first_name in ascending/dscending order
SELECT * from students ORDER BY first_name ASC;



-- see all data and sort by dob in ascending/dscending order
SELECT * from students ORDER BY dob DESC;




-- see all student by country
SELECT country from students;


-- see all student by unique country(duplicate country will not sow)
SELECT DISTINCT country from students;




--------------------------------
-- data filtering
---------------------------------

-- see all students whose country is USA
SELECT * from students
    WHERE country = 'USA';


-- see all students whose grade A+ and course is Physics 
SELECT * from students
    WHERE grade = 'A+' AND course = 'Physics';


-- select all students from USA or Australia
SELECT * from students
    WHERE country = 'USA' OR country = 'Australia';




-- select all students from USA or Australia and age 20
SELECT * from students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;


-- select all students whose age is grater than 18
SELECT * from students
    WHERE age > 18;
    -- WHERE age != 20;



-- select all students whose country is not USA
SELECT * from students
    WHERE country <> 'USA';



-- select all students with uppercase of firstname

SELECT upper(first_name) from students;
SELECT upper(first_name), * from students;
SELECT upper(first_name) as Uppercase_firstName, * from students;



-- concat string
SELECT concat(first_name, ' ', last_name) as full_Name,  * from students;



-- scalar functions --> operate on a single value and returna single value, they perform on each row ex: upper, lower,concat
SELECT concat(first_name, ' ', last_name) as full_Name,  * from students;

---------------------------
-- aggregte
---------------------------

-- aggregate -->  will perform a set of rules but it will retun single value
SELECT sum(age) from students;

-- row count
SELECT count(*) from students;


-- see the large length of first_name student
SELECT max(length(first_name)) from students;

SELECT * from students