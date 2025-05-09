CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NOT NULL,
    salary INTEGER NOT NULL,
    hire_date DATE NOT NULL
);


INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES
('Alice', 'Anderson', 'IT', 75000, '2019-05-10'),
('Bob', 'Brown', 'Finance', 62000, '2021-03-15'),
('Charlie', 'Clarkson', 'HR', 58000, '2018-11-20'),
('Diana', 'Dawson', 'IT', 82000, '2020-07-01'),
('Eve', 'Evanson', 'Marketing', 54000, '2022-01-10');


SELECT * FROM employees;


SELECT first_name, salary FROM employees;


SELECT * FROM employees
WHERE department = 'IT';