-- group --> group by country and count
SELECT country, count(*), avg(age) from students
    GROUP BY country;


-- 
-- Having --> filter group using having to show only countries with Average age above 20
SELECT country, count(*), avg(age) from students
    GROUP BY country
        HAVING avg(age) > 20



-- count students born in each year

SELECT extract(year from dob) as birth_year, count(*)
    from students
    GROUP BY birth_year