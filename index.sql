CREATE TABLE employees2 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments2(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees2 (employee_name, department_id, salary, hire_date)
SELECT 
    'Employee_' || g AS employee_name,
    (floor(random() * 10) + 1) AS department_id,  -- Ensures department ID is between 1-10
    (random() * 90000 + 10000)::DECIMAL(10,2) AS salary,
    CURRENT_DATE - (random() * 3650)::INT AS hire_date
FROM generate_series(1, 30000) g;




CREATE TABLE departments2 (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments2 (department_name) 
VALUES 
    ('HR'), ('IT'), ('Finance'), ('Marketing'), ('Sales'),
    ('Operations'), ('Support'), ('R&D'), ('Legal'), ('Admin');

drop table departments2;
drop table employees2;

select * from employees2;
SELECT * FROM departments2;


-- check info 
EXPLAIN ANALYSE
SELECT * from employees2;


EXPLAIN ANALYSE
SELECT * from employees2 WHERE salary = 95094.95;



-- create index

CREATE INDEX idx_employees2_salary
on employees2 (salary);

CREATE INDEX idx_employees2_salary2
on employees2 USING HASH (salary);


SHOW data_directory;


/* 
note: index with primary keys are fast
Others way of indexing
1. B -tree (default)
2. hash 
3. gin
4. gist
*/

