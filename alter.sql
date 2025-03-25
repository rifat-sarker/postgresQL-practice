-- Active: 1742917181621@@127.0.0.1@5432@test_db


CREATE Table customer (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(10) not NULL,
    email VARCHAR(255) UNIQUE NOT NULL
)


select * from customer;


-- add/insert column
ALTER Table customer
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;


-- delete column
ALTER TABLE customer
    DROP COLUMN email;


-- rename column name
ALTER TABLE customer
    RENAME COLUMN age to customer_age;


-- change colmun type
ALTER TABLE customer
    ALTER COLUMN customer_name TYPE  VARCHAR(50); 


-- add / set constraints 
ALTER TABLE customer
    ALTER COLUMN customer_age SET NOT NULL;



-- remove constraints
ALTER TABLE customer
    ALTER COLUMN customer_age DROP NOT NULL;



-- add unique constraints
ALTER TABLE customer
    ADD constraint unique_customer_customer_age UNIQUE(customer_age);


-- remeve/ delete constraints
ALTER TABLE customer
    DROP constraint unique_customer_customer_age;


-- truncate --> will delete all the data but still contain structure
TRUNCATE TABLE person;


-- delete the entire table 
DROP TABLE person;