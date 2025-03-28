CREATE Table employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE Table departments (
    dept_id INT,
    dept_name VARCHAR(50)
);


INSERT INTO employees  VALUES
(1, 'Alice Johnson', 101),
(2, 'Bob Smith', 102),
(3, 'Charlie Brown', 101),
(4, 'David Wilson', 103),
(5, 'Emma Davis', 102);


INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'Engineering'),
(102, 'Marketing'),
(103, 'Human Resources'),
(104, 'Finance'),
(105, 'Sales');


SELECT * from employees;    
SELECT * from departments;    

-- cross join --A CROSS JOIN in PostgreSQL creates a Cartesian product between two tables. This means every row from the first table is combined with every row from the second table.

SELECT * from employees
CROSS JOIN departments;



-- natural join -- filter only mathed colmun -- must have matched colmun or a common column of two table
SELECT * from employees
NATURAL JOIN departments;