-- Windows function
CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

select * from employees;
select department,avg(salary) from employees group by department;
select * , avg(salary) over(partition by department) as average from employees ;


select *, avg(salary) over() as average from employess;
select *, avg(salary) over() as average, min(salary) over() as fdf_vd, max(salary) over() as bdfb from employees;

select department,
		salary, 
        avg(salary) over(partition by department) as average,
        min(salary) over(partition by department) as minimum,
        max(salary) over(partition by department) as maximum,
        sum(salary) over(partition by department) as dept_payroll,	
        sum(salary) over() as total_payroll
        from employees;
-- using group by
select department,
        avg(salary) as average,
        min(salary) as minimum,
        max(salary) as maximum 
        from employees
	group by department;
    --------
    
SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary,
    rank()  over(order by salary)  as sala
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) as overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_num
FROM employees ORDER BY overall_rank;

-- quartile
SELECT 
    emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;