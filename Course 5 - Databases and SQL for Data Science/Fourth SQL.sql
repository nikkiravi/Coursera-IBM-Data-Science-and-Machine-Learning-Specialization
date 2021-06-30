--Fourth SQL
--Second SQL
------------------------------------------
--DDL statement for table 'HR' database--
--------------------------------------------

CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(15) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
                            

select * from EMPLOYEES;
select * from JOB_HISTORY;
select * from JOBS;
select * from DEPARTMENTS;
select * from LOCATIONS;

select E.F_NAME, E.L_NAME, D.DEP_NAME from EMPLOYEES E, DEPARTMENTS D
where E.DEP_ID = D.DEPT_ID_DEP;

select * from EMPLOYEES 
where DEP_ID in (select DEPT_ID_DEP from DEPARTMENTS);

select * from EMPLOYEES
where DEP_ID in (select DEPT_ID_DEP from DEPARTMENTS
where LOC_ID = 'L0001');

select DEP_ID, F_NAME, L_NAME from EMPLOYEES
where SALARY > '70000';

select EMP_ID, SALARY from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);

select * from
(select EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES)
as EMP4ALL;

select * from EMPLOYEES
where SALARY > (select min(SALARY) from EMPLOYEES);
--End of Fourth SQL
