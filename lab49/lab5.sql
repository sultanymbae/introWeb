BEGIN;


INSERT INTO users (name, email, age) VALUES ('Danil', 'danil@example.com', 22);


UPDATE users
SET age = 23
WHERE email = 'danil@example.com';


DELETE FROM users
WHERE name = 'Marlenov Alen';


ROLLBACK;


SELECT * FROM users;