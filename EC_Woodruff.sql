DROP SCHEMA IF EXISTS sandbox;
CREATE SCHEMA sandbox;
USE sandbox;

DROP TABLE IF EXISTS sandbox.employee_salary_data;

CREATE TABLE sandbox.employee_salary_data as
SELECT 
    e.emp_no as 'Emp_No', 
    CONCAT(e.last_name, ', ', e.first_name) as 'Emp_Name', 
    e.gender,
    de.dept_no, 
    d.dept_name, 
    de.from_date as 'Current_dept_start_date', 
    CASE 
        WHEN dm.emp_no IS NOT NULL THEN 'Yes'
        ELSE NULL
    END as current_manager, 
    s.salary as 'Current_salary',
    s1.salary as 'Starting_salary' #alias
FROM 
    CS3100.employees e #alias
JOIN 
    CS3100.dept_emp de on e.emp_no = de.emp_no and de.to_date = '9999-01-01' 
JOIN 
    CS3100.departments d on de.dept_no = d.dept_no 
LEFT JOIN 
    CS3100.dept_manager dm on de.emp_no = dm.emp_no and de.dept_no = dm.dept_no and dm.to_date = '9999-01-01' 
LEFT JOIN 
    CS3100.salaries s on e.emp_no = s.emp_no and s.to_date = '9999-01-01' 
LEFT JOIN 
    CS3100.salaries s1 on e.emp_no = s1.emp_no and s1.from_date <= de.from_date and s1.to_date > de.from_date
ORDER BY 
    current_manager DESC;


SELECT * FROM sandbox.employee_salary_data;

SELECT * FROM employee_salary_data
WHERE Emp_No in (10001,10010,10018,14025,100010,111939);

SELECT COUNT(*)
FROM sandbox.employee_salary_data esd
WHERE esd.`Starting_salary` <> esd.`Current_salary`;


SELECT * FROM employee_salary_data  
WHERE current_manager = 'yes';

select count(*) from employee_salary_data;




