USE SCOTT;

SELECT *
FROM EMP;

# List all the employees in dept 20.
SELECT *
FROM EMP
WHERE DEPTNO = 20;

# List the employee earning more than Rs 2500;
SELECT *
FROM EMP
WHERE SAL > 2500;

# 3. Display all the salesmen
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN';

# List the employees in department 10 and 20.
SELECT *
FROM EMP
WHERE DEPTNO = 10 AND 20;

# List all the clerks and analyst.
SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND 'ANALYST'; 

# List all the employee whose name starts with ‘S’
SELECT *
FROM EMP
WHERE ENAME LIKE 'S%';

# List all the employee whose name is having letter ‘L’ as Second character
SELECT *
FROM EMP
WHERE ENAME LIKE '_L%';

# List all the employees whose name is having at least 2 L’s in IT
SELECT *
FROM EMP
WHERE ENAME LIKE '%L%L';

# List the employees whose name is having letter ‘E’ as the last but one character
SELECT *
FROM EMP
WHERE ENAME LIKE '%E_';

# List all the employees whose name is having letter ‘R’ in the 3rd position
SELECT *
FROM EMP
WHERE ENAME LIKE '_R%';

# List all the employees who are having exactly 5 characters in their jobs
SELECT *
FROM EMP
WHERE JOB LIKE '_____';

# Display employees from whose name is having letter ‘_’ in it
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%\\_%';

# List the employees whose salary is between 2000 and 3000
SELECT *
FROM EMP
WHERE SAL BETWEEN 2000 AND 3000;

# List all the employees whose commission is null
SELECT *
FROM EMP
WHERE COMM IS NULL;

# List all the employees who don’t have a reporting manager
SELECT *
FROM EMP
WHERE MGR IS NULL;

# List all the salesmen in dept 30
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND DEPTNO = 30;

# List all the salesmen in dept number 30 and having salary greater than 1500
select *
from emp
where job = 'salesman' AND SAL > 3000;

# List all the employees whose name starts with ‘s’ or ‘a’
SELECT *
FROM EMP
WHERE ENAME LIKE 'S%' OR 'A%';

# List all the employees except those who are working in dept 10 & 20.
SELECT *
FROM EMP
WHERE DEPTNO = 10 AND 20;

# List the employees whose name does not start with ‘S’
SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'S%';

# List all the employees who are having reporting managers in dept 10
SELECT *
FROM EMP
WHERE DEPTNO = 10 AND MGR IS NOT NULL;

# Display all the employee who are getting 2500 and excess salaries in dept 20.
SELECT *
FROM EMP
WHERE DEPTNO = 20 AND SAL >= 2500;

# Display all the manager working in dept 20 and 30
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = 20 AND 30;

# Display all the employee whose job is manager who don’t have Reporting manager
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND MGR IS NOT NULL;

# Display all the employee who are getting some commission with their designation is neither MANAGER not ANALYST
SELECT *
FROM EMP
WHERE COMM IS NOT NULL AND JOB NOT IN ('MANAGER','ANALYST');

# Display all the employee whose earning salary not in the range 2500 and 5000 in dept 10 and 20
SELECT *
FROM EMP 
WHERE SAL NOT BETWEEN 2500 AND 5000 AND DEPTNO IN (10,20);

# Display all the manager whose annual sal is ending with zero
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND (SAL*12) LIKE '%0';

# Display all the employees who are CLERK or ANALAYST with salary greater than 1000.
SELECT * 
FROM EMP
WHERE JOB = 'CLERK' OR 'ANALYST' AND SAL > 1000;

# Display all the employee who are ‘SALESMAN’s having E as the last but one character in ename but salary having exactly 4
# character
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND ENAME LIKE '%E_' AND SAL BETWEEN 1000 AND 9999;

# Display all the employee who are joined after year 81
SELECT *
FROM EMP 
WHERE YEAR(HIREDATE) > 1981;

# Display all the employee who are joined in FEB
SELECT *
FROM EMP
WHERE MONTH(HIREDATE) = 2;

# List the employees who are not working as managers and
# clerks in dept 10 and 20 with a salary in the range of 1000 to 3000
SELECT *
FROM EMP
WHERE DEPTNO IN (10,20) AND JOB NOT IN ('MANAGER','CLERK') AND SAL BETWEEN 1000 AND 3000;

# List the employees whose salary not in the range of 1000 to 2000 in dept 10,20,30 except all salesmen
SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 2000 AND DEPTNO IN (10,20,30);

# List the department names which are having letter ‘O’ in Their locations as well as their department names
SELECT DNAME
FROM DEPT
WHERE DNAME LIKE '%O%'
  AND LOC LIKE '%O%';

# Display all the employees whose job has string ‘MAN’ in it.
SELECT *
FROM EMP 
WHERE JOB LIKE '%MAN%';

# Select all the employees whose name start with P or V in departmetment 10 and 20
SELECT *
FROM EMP
WHERE ENAME LIKE '%P%' OR '%V%' AND DEPTNO = 10 AND 20;

# Select all the salesman and clerks who are earcning salary in the range 1000 and 3000 except department 10
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND 'CLERK' AND SAL = 1000 AND 3000 AND DEPTNO <> 10;

# Select all the employees whose are joined before 01-may-81 and after 01-may-80
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN '1980-05-01' AND '1981-05-01';

# Select all the analyst whose name 3rd character start with 'S' and earning salary more than 2500
SELECT *
FROM EMP
WHERE JOB = 'ANALYST' AND ENAME LIKE '--S%' AND SAL > 2500;

# Select all the salesman whose salary not between 2000 and 3000 in depaertment 30
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND SAL NOT BETWEEN 2000 AND 3000 AND DEPTNO = 30;





 



