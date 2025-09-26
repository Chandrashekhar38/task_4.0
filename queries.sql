CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT
);

INSERT INTO Employee (emp_id, name, department, salary, manager_id) VALUES
(101, 'Alice', 'HR', 50000, 201),
(102, 'Bob', 'HR', 55000, 201),
(103, 'Charlie', 'IT', 70000, 202),
(104, 'David', 'IT', 75000, 202),
(105, 'Eve', 'Finance', 65000, 203),
(106, 'Frank', 'Finance', 60000, 203),
(107, 'Grace', 'IT', 72000, 202);





1). Find total salary of all employees.

SELECT SUM(salary) AS total_salary FROM Employee;


2). Find average salary by department.

SELECT AVG(salary) AS avg_salary FROM Employee GROUP BY department;

SELECT department, AVG(salary) AS avg_salary FROM Employee GROUP BY department;


3). Count employees in each department.

SELECT department, COUNT(*) AS emp_count FROM Employee GROUP BY department;

4). Find departments with more than 2 employees (using HAVING).

SELECT department, COUNT(*) AS emp_count FROM Employee GROUP BY department HAVING COUNT(*) > 2;

SELECT department, COUNT(*) AS emp_count FROM Employee GROUP BY department HAVING COUNT(*) > 1;

5). Find highest salary by department.

SELECT department, MAX(salary) AS highest_salary FROM Employee GROUP BY department;

6). Count distinct departments.
SELECT COUNT(DISTINCT department) AS total_departments FROM Employee;
