CREATE DATABASE db_class;

CREATE TABLE users(
id varchar(50),
user_name varchar(50)
);

INSERT INTO users(id, user_name) VALUES('1', 'David');
SELECT * FROM users;

SELECT * FROM users WHERE id = '1';