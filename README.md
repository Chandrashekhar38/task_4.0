🔹 Objective
The goal of this task is to practice aggregate functions (SUM, COUNT, AVG, MAX, MIN) and GROUP BY to analyze and summarize tabular data.
You will also learn how to use HAVING to filter grouped results.


🔹 Dataset
Sample Employee table used for queries:

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



🔹 Queries Implemented
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

🔹 Interview Question & Answers
1. What is GROUP BY?
GROUP BY is used in SQL to group rows that have the same values in specified columns.
It is often used with aggregate functions (SUM, COUNT, AVG, etc.) to perform calculations on each group.
 

2. Difference between WHERE and HAVING?
WHERE filters rows before grouping.
HAVING filters groups after grouping.


3. How does COUNT(*) differ from COUNT(column)?
COUNT(*) → counts all rows, including rows with NULL values.
COUNT(column) → counts only rows where the column is NOT NULL.

4. Can you group by multiple columns?
Yes ✅. We can group by more than one column.

5. What is ROUND() used for?
ROUND() is a numeric function used to round a number to a specified number of decimal places.

6. How do you find the highest salary by department?
Use MAX() with GROUP BY.

7. What is the default behavior of GROUP BY?
By default, GROUP BY sorts results in ascending order of the grouped column (though some SQL engines may not guarantee ordering).
It collapses duplicate values into a single group.


8. Explain AVG and SUM.
AVG(column) → calculates the average value of a numeric column.
SUM(column) → calculates the total sum of values in a numeric column.


9. How to count distinct values?
Use COUNT(DISTINCT column).

10. What is an aggregate function?
An aggregate function performs a calculation on a set of values and returns a single value.
Examples: SUM(), AVG(), COUNT(), MAX(), MIN().



