CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2)
);

INSERT INTO customers VALUES
(1, 'Alice', 'alice@email.com'),
(2, 'Bob', 'bob@email.com'),
(3, 'John', 'john@email.com'),
(4, 'Carol', 'carol@email.com');

INSERT INTO orders VALUES
(101, 1, 250.00),
(102, 2, 120.00),
(103, NULL, 300.00),
(104, 4, 180.00);

-- Employees and Departments
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name TEXT NOT NULL
);

INSERT INTO employees VALUES
(1, 'Alex', 10),
(2, 'Ben', 20),
(3, 'Clara', NULL);

INSERT INTO departments VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance');

-- Students, Enrollments, and Courses
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name TEXT NOT NULL
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);

INSERT INTO students VALUES
(1, 'Emma'),
(2, 'David'),
(3, 'Lisa');

INSERT INTO courses VALUES
(101, 'Math'),
(102, 'Science'),
(103, 'History');

INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 2, 102);

-- =====================================
-- LEFT JOIN Examples
-- =====================================

-- 1. Customers and their orders (include customers without orders)
SELECT c.name, o.order_id, o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 2. Employees and their departments (include unassigned employees)
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- 3. Students and their courses (include students not enrolled)
SELECT s.name, c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;

-- =====================================
-- RIGHT JOIN Examples
-- =====================================

-- 1. Orders and their customers (include orders with no customer)
SELECT o.order_id, o.total_amount, c.name
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- 2. Departments and their employees (include departments without employees)
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- 3. Courses and their students (include courses with no students)
SELECT s.name, c.course_name
FROM students s
RIGHT JOIN enrollments e ON s.student_id = e.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;

-- =====================================
-- FULL JOIN Examples
-- =====================================

-- 1. All customers and all orders (including unmatched)
SELECT c.name, o.order_id, o.total_amount
FROM customers c
FULL JOIN orders o ON c.customer_id = o.customer_id;

-- 2. All employees and all departments
SELECT e.name, e.dept_id, d.dept_name
FROM employees e
FULL JOIN departments d ON e.dept_id = d.dept_id;

-- 3. All students and all courses (including unmatched)
SELECT s.name, c.course_name
FROM students s
FULL JOIN enrollments e ON s.student_id = e.student_id
FULL JOIN courses c ON e.course_id = c.course_id;