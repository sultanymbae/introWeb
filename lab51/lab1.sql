CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);


INSERT INTO sales (store_id, product_id, amount) VALUES
(1, 101, 20000),
(1, 102, 30000),
(2, 101, 40000),
(2, 103, 60000),
(3, 104, 120000),
(3, 105, 80000);

-- Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL
);


INSERT INTO orders (customer_id) VALUES
(1), (1), (1), (2), (2), (2), (2), (3), (3), (4), (4), (4), (4), (4), (4);

-- Employees table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    hire_date DATE NOT NULL
);



INSERT INTO employees (name, department_id, salary, hire_date) VALUES
('Айдана Тургунбаева', 10, 80000, '2019-04-15'),
('Бакыт Исмаилов', 20, 55000, '2021-05-10'),
('Чолпон Сатыбалдиева', 10, 90000, '2022-07-22'),
('Данияр Асанов', 30, 60000, '2020-01-30'),
('Эльмира Кожомбердиева', 20, 51000, '2018-10-10'),
('Азамат Абдрахманов', 10, 95000, '2023-03-01');

SELECT store_id, SUM(amount) AS total_sales
FROM sales
GROUP BY store_id;

SELECT store_id, SUM(amount) AS total_sales
FROM sales
GROUP BY store_id
HAVING SUM(amount) > 100000;

SELECT store_id, product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY store_id, product_id;


SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;


SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;


SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 500000;


SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;