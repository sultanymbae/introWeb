
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    is_discontinued BOOLEAN DEFAULT FALSE
);


INSERT INTO products (name, price) VALUES
('Car', 7300.00),
('TV', 800.00),
('Washing Machine', 150.00);


UPDATE products
SET price = 7400.00
WHERE name = 'Car';


DELETE FROM products
WHERE is_discontinued = TRUE;


SELECT * FROM products;