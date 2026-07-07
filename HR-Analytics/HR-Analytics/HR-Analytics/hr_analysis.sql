-- Average salary by department
SELECT Department,
       AVG(Salary) AS Average_Salary
FROM employees
GROUP BY Department
ORDER BY Average_Salary DESC;

-- Employee count by department
SELECT Department,
       COUNT(*) AS Employees
FROM employees
GROUP BY Department;

-- Highest paid employee
SELECT *
FROM employees
ORDER BY Salary DESC
LIMIT 1;

-- Company average salary
SELECT AVG(Salary) AS Company_Average
FROM employees;

-- Salary by department
SELECT Department,
       MIN(Salary) AS Minimum_Salary,
       AVG(Salary) AS Average_Salary,
       MAX(Salary) AS Maximum_Salary
FROM employees
GROUP BY Department;
