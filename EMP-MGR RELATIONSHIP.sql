USE SCOTT;

SELECT E.ENAME,D1.DNAME,M.ENAME,D4.DNAME
FROM EMP E , DEPT D1 , EMP M , DEPT D4
WHERE E.DEPTNO = D1.DEPTNO
AND E.MGR = M.EMPNO 
AND M.DEPTNO = D4.DEPTNO;

# Write a query to display employee name and department name.
select ename,dname
from emp,dept
where emp.deptno = dept.deptno;

# Display employee name, job, and department name.
SELECT ENAME,JOB,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

# Display employee name and department location.
SELECT ENAME,LOC
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

# Display all employees working in the SALES department.
SELECT ENAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND DNAME = 'SALES';

# Display employee name and salary along with department name.
SELECT ENAME,SAL,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

# Display employee name and department name for employees working in
# NEW YORK.
SELECT ENAME,DNAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND LOC = 'NEW YORK';

# Display employee name and department number only for employees who
# belong to ACCOUNTING.
SELECT E.ENAME,D.DEPTNO
FROM EMP E,DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND D.DNAME='ACCOUNTING';

# Display employee name, job, and department name of MANAGERS.
SELECT ENAME,JOB,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND JOB = 'MANAGERS';

# Display employee name and department name for employees earning more 
#than 3000.
SELECT ENAME,DNAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO 
AND SAL > 3000;

# Display employee name, department name, and location for
# employees hired after 1981.
SELECT ENAME,DNAME,LOC
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND HIREDATE > 1981;

# Display employee name and department name for employees 
# whose job is SALESMAN.
SELECT ENAME,DNAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND JOB = 'SALESMAN';

# Display employee name and department name
# for employees working in DALLAS.
SELECT ENAME,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND LOC = 'DALLAS';

# Display employee name, job, salary, and department name.
SELECT ENAME,JOB,SAL,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

# Display employees working in same department as SCOTT.
SELECT ENAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND ENAME = 'SCOTT';

# Display employee name and department name where department number is 20.
SELECT ENAME,DNAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND DEPT.DEPTNO = 20;


