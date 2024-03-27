/****** Get Nth Salary  ******/
  
  
DECLARE @num INT = 3;

---------------------------------------------------

SELECT DISTINCT TOP (10) salary
FROM employee
ORDER BY salary DESC;

---------------------------------------------------



***************************************************
SELECT DISTINCT * FROM 
(
SELECT salary,  DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSE
FROM employee
) E2
WHERE E2.DENSE IN (2,7,9)
;
***************************************************


---------------------------------------------------
SELECT MIN(salary)
FROM 
(
	SELECT DISTINCT TOP (@num) salary
	FROM employee
	ORDER BY salary DESC
) E2
---------------------------------------------------

