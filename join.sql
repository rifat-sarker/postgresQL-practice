
CREATE table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)


CREATE table post (
    id SERIAL PRIMARY KEY,
    title TEXT not NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES 
('akash'),
('batas'),
('sagor'),
('panna');

INSERT INTO "user" (username) VALUES('rifat');

INSERT into post (title, user_id) VALUES
('Akash lives in China right now',2),
('We cannot live without batash', 1),
('Sagor is a name of my friend', 3),
('It is a girl name haha', 4);

INSERT into post (id, title, user_id) VALUES (6, 'test', NULL);



SELECT * from "user";
SELECT * from post;
drop table post;
drop table "user";


-- join -- connect multiple table
select title, username from post
    JOIN "user" ON post.user_id = "user".id;

-- alias - as -- recommended when do alias
select * from post as p
    JOIN "user" as u ON p.user_id = u.id;

-- aliasing --> it will also work
select * from post p
    JOIN "user" u ON p.user_id = u.id;

-- and this is inner join
select * from post as p
    INNER JOIN "user" as u ON p.user_id = u.id;


-- left join or left outer join -- must provide data of left table
SELECT * from post as p
LEFT JOIN "user" u on p.user_id = u.id;

--  left join or left outer join are same
SELECT * from post as p
LEFT OUTER JOIN "user" u on p.user_id = u.id;

-- right join
SELECT * from post as p
RIGHT JOIN "user" u on p.user_id = u.id;





-- full join---- it will show everything null, left , right join
SELECT * from post as p
FULL JOIN "user" u on p.user_id = u.id;





