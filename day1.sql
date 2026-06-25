SELECT * FROM Employee;

SELECT Department, AVG(Salary)
FROM Employee
GROUP BY Department;