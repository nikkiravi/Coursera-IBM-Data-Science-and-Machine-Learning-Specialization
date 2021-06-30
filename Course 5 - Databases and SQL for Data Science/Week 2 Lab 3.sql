--Week 2 Lab 3
select * from employees where DEP_ID IN ( select DEPT_ID_DEP from departments );
select * from employees where DEP_ID IN ( select DEPT_ID_DEP from departments where LOC_ID = 'L0002' );
select DEPT_ID_DEP, DEP_NAME from departments where DEPT_ID_DEP IN ( select DEP_ID from employees where SALARY > 70000 );
select * from employees, departments;
select * from employees, departments where employees.DEP_ID = departments.DEPT_ID_DEP;
select * from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP;
select E.EMP_ID, D.DEPT_ID_DEP from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP;
select E.EMP_ID, D.DEP_NAME from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP
--End of Week 2 Lab 3
