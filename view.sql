-- view --> view are virtual tables generated from the result of a SQL query
--view -- 1. non materialize(reference) 2. materialize(stored)

-- What is purpose of SQL views
-- 1. simplifying complex query
-- 2. improved security
-- 3. enhanced data abstraction


create VIEW text_view
AS
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN
(SELECT department_name FROM employees WHERE department_name LIKE '%R');

SELECT * from text_view;

SELECT * from employees;