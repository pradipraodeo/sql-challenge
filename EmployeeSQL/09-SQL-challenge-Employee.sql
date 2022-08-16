--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT EMPLOYEES.EMP_NO,
	LAST_NAME,
	FIRST_NAME,
	SEX,
	SALARY
FROM EMPLOYEES,
	SALARIES
WHERE EMPLOYEES.EMP_NO = SALARIES.EMP_NO;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	LAST_NAME,
	FIRST_NAME,
	HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-1986' AND '31-DEC-1986';

--3. List the manager of each department with the following information: department number, department name, 
--   the manager's employee number, last name, first name.
SELECT DEPT.DEPT_NO,
	DEPT.DEPT_NAME,
	EMP.EMP_NO,
	LAST_NAME,
	FIRST_NAME
FROM DEPARTMENTS DEPT,
	EMPLOYEES EMP,
	DEPT_MANAGER DM
WHERE EMP.EMP_NO = DM.EMP_NO
	AND DM.DEPT_NO = DEPT.DEPT_NO
ORDER BY 1;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
	EMP.EMP_NO,
	LAST_NAME,
	FIRST_NAME,
    DEPT.DEPT_NAME
FROM DEPARTMENTS DEPT,
	EMPLOYEES EMP,
	DEPT_EMP DE
WHERE EMP.EMP_NO = DE.EMP_NO
	AND DE.DEPT_NO = DEPT.DEPT_NO
ORDER BY 1;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	LAST_NAME,
	FIRST_NAME,
    SEX
FROM EMPLOYEES
WHERE UPPER(FIRST_NAME)  = 'HERCULES'
AND LAST_NAME LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
	EMP.EMP_NO,
	LAST_NAME,
	FIRST_NAME,
    DEPT.DEPT_NAME
FROM DEPARTMENTS DEPT,
	EMPLOYEES EMP,
	DEPT_EMP DE
WHERE EMP.EMP_NO = DE.EMP_NO
	AND DE.DEPT_NO = DEPT.DEPT_NO
    AND DEPT_NAME = 'Sales'
ORDER BY 1;

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	EMP.EMP_NO,
	LAST_NAME,
	FIRST_NAME,
    DEPT.DEPT_NAME
FROM DEPARTMENTS DEPT,
	EMPLOYEES EMP,
	DEPT_EMP DE
WHERE EMP.EMP_NO = DE.EMP_NO
	AND DE.DEPT_NO = DEPT.DEPT_NO
    AND DEPT_NAME IN (  'Sales','Development')
ORDER BY 1;

--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT LAST_NAME,
	COUNT(*) AS FREQUENCY
FROM EMPLOYEES
GROUP BY LAST_NAME
ORDER BY COUNT(*) DESC;






