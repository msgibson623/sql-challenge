-- 1.) List the employee number, last name, first name, sex, and salary of each employee.

select salaries.Salary, employees.Emp_Number, Last_Name.Emp_Number, First_Name.Emp_Number, Sex.Emp_Number
From salaries
Inner Join employees 
on employees.Emp_Number = salaries.Emp_Number;


--2.) List the first name, last name, and hire date for the employees who were hired in 1986.

select First_Name, Last_Name, Hire_Date
From employees
Where 
	First_Name and 
	Last_Name and 
	Hire_Date = '1986';


--3.) List the manager of each department along with their department number, department name, employee number, last name, and first name.

select departments.Dept_Number, departments.Dept_Name
from departments
Union
Select employees.Emp_Number, employees.First_Name, employees.Last_Name
from employees
Where Title = 'Manager';


--4.) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select departments.Dept_Number, departments.Dept_Name
from departments
Union
Select employees.Emp_Number, employees.First_Name, employees.Last_Name
from employees
order by Emp_Number;


--5.) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select Emp_Number
from employees
Where First_Name = 'Hercules' in
(
	select First_Name
	From employees
	Where Last_Name like 'B'
	(
		select Last_Name
		From employees
		Where sex
		select * sex
	
	
	)


)


--6.) List each employee in the Sales department, including their employee number, last name, and first name.

select * Dept_Number
From departments
Where Dept_Name = 'Customer Service' in
	(
		select Dept_Name
		From employees
		Where Emp_Number in
		(
			select Emp_Number
			From employees
			Where Last_Name, First_Name;
		
		
		)
	)
 

--7.) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select * Dept_Number
From departments
Where Dept_Name = 'Customer Service', 'Development' in
	(
		select Dept_Name
		From employees
		Where Emp_Number in
		(
			select Emp_Number
			From employees
			Where Last_Name, First_Name;
		
		
		)
	)
 

--8.) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Select Last_Name,
	count(Emp_Number)
From employee
Group by country 
Order by count(Emp_Number);
