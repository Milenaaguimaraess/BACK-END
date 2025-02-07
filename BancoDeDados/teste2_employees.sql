select * from salaries;
select * from salaries where salary between 30000 and 40000;
select * from salaries where salary >= 30000 and salary <= 40000;

select distinct emp_no from salaries where emp_no <> 10006 