<h3>Write a query to create a new table which consists of data and structure copied from the other table.</h3>
<h5>
  <code>
    SELECT * INTO new_table FROM current_table
  </code>
</h5>


<h3>Write q query to find all the employees whose salary is between 50000 to 100000</h3>
<h5>
  <code>
   SELECT * FROM EmployeePosition WHERE Salary BETWEEN '50000' AND '100000';
  </code>

  <code>
    SELECT
      first_name,
      height,
      COUNT(height)
    FROM patients
    WHERE height >= 145 AND height <= 300
    GROUP BY height
  </code>
</h5>

<ul><li><h4>Write a query to find the names of employees that begin with ‘S’</h4> </li></ul>

  <code>
    SELECT 
	    first_name
	    ,last_name
    FROM patients
    WHERE first_name like 's%'
  </code>
