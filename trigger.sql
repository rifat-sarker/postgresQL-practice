/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();


create Table my_users (
    user_name VARCHAR(50),
    email VARCHAR(100)
);

drop Table my_users;

INSERT into my_users VALUES ('Rifat', 'rifatswd@gmail.com'), ('Jony', 'jony@gmail.com');

SELECT * from my_users;
select * from deleted_users_audit;

-- data will autometically inserted by trigger
create Table deleted_users_audit (
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)


-- trigger function
create or REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT into deleted_users_audit VALUES(OLD.user_name, now());
        RAISE notice 'Deleted user audit log created';
        RETURN OLD;
    END
$$


-- create trigger
create or REPLACE TRIGGER save_deleted_user_trigger
BEFORE DELETE
on my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();


DELETE from my_users WHERE user_name = 'Rifat';
