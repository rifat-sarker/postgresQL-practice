-- show time zone
SELECT now();

create table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone );

INSERT into timeZ VALUES('2024-03-28 10:45:00', '2024-03-28 10:45:00');

SELECT * from timeZ;



--  show only current data
SELECT CURRENT_DATE;

--  or using casting
SELECT now()::date;
SELECT now()::time;



--  another way
select to_char(now(), 'dd-mm-yyyy');
select to_char(now(), 'Day');
select to_char(now(), 'Month');


--  interval ---> current data - 1 year         
SELECT CURRENT_DATE - INTERVAL '1 year';



-- count year/ dob
SELECT age(CURRENT_DATE, '2010-01-01');


-- count years / dob of students table
select *, age(CURRENT_DATE, dob) from students;



-- extract year, day, month
select extract(year from '2010-01-01'::date);
select extract(day from '2010-01-01'::date);


select '1' ::BOOLEAN;
select 'n' ::BOOLEAN;
select 'y' ::BOOLEAN;
