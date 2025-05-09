CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INTEGER NOT NULL
);


INSERT INTO users (name, email, age) VALUES
('Ali', 'ali@example.com', 25),
('Bucha', 'bucha@example.com', 30),
('Chusnidin', 'chusnidin@example.com', 35);


SELECT * FROM users;