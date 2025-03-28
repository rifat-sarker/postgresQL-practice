-- Active: 1742917181621@@127.0.0.1@5432@test_db@public
CREATE table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)


CREATE table post (
    id SERIAL PRIMARY KEY,
    title TEXT not NULL,
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE set null
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
)

-- null will not be accepted
ALTER TABLE post
    ALTER COLUMN user_id SET NOT NULL;

INSERT INTO "user" (username) VALUES 
('akash'),
('batas'),
('sagor'),
('panna');

INSERT into post (title, user_id) VALUES
('Akash lives in China right now',2),
('We cannot live without batash', 1),
('Sagor is a name of my friend', 3),
('It is a girl name haha', 4);


insert into post (title, user_id) values ('test', null);
SELECT * from "user";
SELECT * from post;
drop table post;
drop table "user";






-- Insertion contraints on insert post
-- attempting to insert a new post with a  user id that doesn't exist
-- inserting a post with a valid user id
-- attempting to insert a post without specifying a user id


DELETE FROM "user"
    WHERE id = 4



-- deletion constraint on Delete user
-- Restrict deletion -- on delete restrict / on delete no action (default)
-- cascading deletion -- on delete cascade
-- setting null -- on delete set null
-- set default value --on delete set default