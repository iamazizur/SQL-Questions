-- SELECT Nth Highest Salary

DECLARE @num INT = 3;

SELECT DISTINCT TOP (@num) salary
FROM employee
ORDER BY salary DESC

SELECT MIN(salary)
FROM 
(
	SELECT DISTINCT TOP (@num) salary
	FROM employee
	ORDER BY salary DESC
) E2
 
