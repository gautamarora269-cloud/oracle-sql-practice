USE SCOTT;

# WAQTD total number of employees working in each job if each job consists of more than 2 employees.
SELECT COUNT(*)
FROM EMP
GROUP BY JOB 
HAVING COUNT(*) > 2;

# WAQTD department number and total salary of each department if total salary is greater than 8000.
SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > 8000;

# WAQTD department number and number of employees if department has at least 4 employees.
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 4; 

# WAQTD manager number and total number of employees working under each manager if manager handles more than 1 employee.
SELECT MGR, COUNT(*)
FROM EMP
GROUP BY MGR 
HAVING COUNT(*) > 1;

# WAQTD department number and maximum salary if maximum salary is greater than 3000.
SELECT DEPTNO, MAX(SAL)
FROM EMP
GROUP BY DEPTNO 
HAVING MAX(SAL) > 3000;

# WAQTD job and minimum salary if minimum salary is greater than 1000.
SELECT JOB, MIN(SAL)
FROM EMP
GROUP BY JOB 
HAVING MIN(SAL) > 1000;

# WAQTD hire year and number of employees if more than 2 employees are hired in the same year.
SELECT YEAR(HIREDATE), COUNT(*)
FROM EMP
GROUP BY YEAR(HIREDATE)
HAVING COUNT(*) > 2;

# WAQTD department number and total commission if total commission is greater than 500.
SELECT DEPTNO, SUM(COMM)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(COMM) > 500;

# WAQTD job and total salary if total salary is more than 6000.
SELECT JOB, SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL) > 6000;







