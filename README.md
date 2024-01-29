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


<ul><li><h4>Write a query to fetch top N records.</h4> </li></ul>
<code>
	SELECT TOP N * FROM my_table;
</code>


<ul><li><h4> Write a query to fetch top N records.   </h4> </li></ul>
CONCAT ( argument1 , argument2 [ , argumentN ] ... ) here [ , argumentN] means params string[]
<code>
	SELECT 
	CONCAT(first_name,' ',last_name) AS 'FULL NAME'
	FROM patients
</code>



<ul><li><h4>   Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975 and are grouped according to gender    </h4></li></ul>
<code>
SELECT
	COUNT(gender)
 	,gender
  	FROM patients
   	WHERE birth_date between '02/05/1970' AND '31/12/1975'
	
</code>





<ul><li><h4>     Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.           </h4></li></ul>
<code>
	SELECT 
	first_name
    	,last_name
    	,city
	FROM patients
	ORDER BY first_name DESC, city ASC 
</code>



<ul> <li> <h4>   Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.    </h4> </li> </ul>
<code>
	SELECT first_name,LEN(first_name) 
	FROM patients 
	WHERE first_name LIKE '____A';
</code>





<ul><li><h4>  Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.  </h4></li></ul>
<code>
	SELECT *
	FROM EmployeeInfo
	WHERE first_name NOT IN ('SANJAY','SONIA')
</code>


</br>
</br>
<b>We can not use Aggregate functions on 'WHERE' cluase</b>
</br>
</br>


<ol> <li> <h4>TOTAL NUMBER OF THE USERS WHICH WILL BE BASED ON THE CITY
NOW WE REQUIRE THOSE CITIES WHICH HAVING MORE THAN 100 first_name</h4> 

<code>
	SELECT *
	FROM 
		(
			SELECT 
    				city
    				,COUNT(first_name) as CNT
			FROM patients 
			GROUP BY city
			ORDER BY COUNT(first_name)
  		) TAB2
  	WHERE
  		TAB2.CNT > 100
</code>

</li> 
<li>
<h4>WE REQUIRED THOSE CITY WHICH HAS BEEN STARTED WITH 'A'</h4>
<code>
	SELECT *
	FROM 
		(
			SELECT 
    				city
    				,COUNT(first_name) as CNT
			FROM patients 
			GROUP BY city
			ORDER BY COUNT(first_name)
  		) TAB2
  	WHERE
  		TAB2.CNT > 100 AND TAB2.city LIKE 'A%'
</code>

	
</li>


<li>
	<h4>NOW WE REQUIRE THE COMPLETE INFORMATIONS OF THAT CITY</h4>
	<i>USING JOINS</i>
	<code>
		SELECT *
		FROM (
    			SELECT
      				COUNT(first_name) as CNT
  				,city
    			FROM patients
    			GROUP BY city
    			ORDER BY COUNT(first_name)
  		) TAB2
  		LEFT JOIN patients ON patients.city = TAB2.city
		WHERE TAB2.CNT > 100 AND TAB2.city LIKE 'A%'
	</code>

 	<i>WITHOUT JOINS</i>
  	<code>
   		SELECT * 
		FROM patients
		WHERE city IN
			(
			SELECT TAB2.city
			FROM (
    				SELECT
      				COUNT(first_name) as CNT
  				,city
    				FROM patients
    				GROUP BY city
    				ORDER BY COUNT(first_name)
  			) TAB2
			WHERE TAB2.CNT > 100 AND TAB2.city LIKE 'A%'
			) 
   	</code>
  	
</li>




</ol>




























  
