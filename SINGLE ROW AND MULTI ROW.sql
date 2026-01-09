USE SCOTT;

# 1.WAQTD NAME OF THE EMPLOYEES EARNING MORE THAN ADAMS
SELECT ENAME 
FROM EMP
WHERE SAL > ( SELECT SAL FROM EMP WHERE ENAME = 'ADAMS' ); 

# 2.WAQTD DETAILS OF AN EMP WHO ARE WORKING IN A SAME JOB AS
#  ALLEN BUT WORKING IN LOCATION NEW YORK OR DELLAS 
SELECT *
FROM EMP
WHERE JOB = (
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'ALLEN'
)
AND DEPTNO IN (
    SELECT DEPTNO
    FROM DEPT
    WHERE LOC IN ('NEW YORK', 'DALLAS'));


# waqtd NAME OF AN EMP WHO ARER EARNING MORE THAN BOTH ALLEN AND SCOTT
SELECT ENAME 
FROM EMP
WHERE SAL > ALL (SELECT SAL FROM EMP WHERE ENAME IN ('ALLEN' , 'SCOTT'));

 # 1️⃣ WAQTD name of employees earning more than JONES
 SELECT ENAME 
 FROM EMP
 WHERE SAL > ( SELECT SAL FROM EMP WHERE ENAME = 'JONES');

# 2️⃣ WAQTD employees earning less than SMITH
SELECT *
FROM EMP
WHERE SAL < (SELECT SAL FROM EMP WHERE ENAME = 'SMITH');

# 3️⃣ WAQTD employee name whose salary is equal to ALLEN
SELECT ENAME 
FROM EMP
WHERE SAL = (SELECT SAL FROM EMP WHERE ENAME = 'ALLEN');

# WAQTD DETAILS OF EMP WHO ARE EARNING MORE THAN ANY OF THE MANAGER 
SELECT *
FROM EMP
WHERE SAL > ANY (SELECT SAL FROM EMP WHERE JOB = 'MANAGER');

# 4️⃣ WAQTD employees earning more than KING
SELECT ENAME
FROM EMP
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'KING');


# 5️⃣ WAQTD name of employee earning minimum salary
SELECT ENAME 
FROM EMP
WHERE SAL = (SELECT MIN(SAL) FROM EMP);

#1️⃣ WAQTD name of employees earning more than JONES
SELECT ENAME 
FROM EMP 
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'JONES');


#. 2️⃣ WAQTD employees earning less than SMITH
SELECT *
FROM EMP 
WHERE SAL < (SELECT SAL FROM EMP WHERE ENAME = 'SMITH');

# 3️⃣ WAQTD employee name whose salary is equal to ALLEN
SELECT ENAME 
FROM EMP
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'ALLEN');

# 4️⃣ WAQTD employees earning more than KING
SELECT *
FROM EMP
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'KING');

# 5️⃣ WAQTD name of employee earning minimum salary
SELECT ENAME 
FROM EMP
WHERE SAL = (SELECT MIN(SAL) FROM EMP );


# 🔹 LEVEL 2 (Multiple Row Subquery – IN / ALL / ANY)

# 6️⃣ WAQTD employees earning more than both ALLEN and SCOTT
SELECT ENAME
FROM EMP
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE ENAME IN ('ALLEN','SCOTT'));

# 7️⃣ WAQTD employees earning less than both FORD and JONES
SELECT ENAME
FROM EMP
WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE ENAME IN ('FORD','JONES'));

# 8️⃣ WAQTD employees earning more than any clerk
SELECT ENAME
FROM EMP
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE JOB = 'CLERK');

# 9️⃣ WAQTD employees earning less than all managers
SELECT *
FROM EMP
WHERE SAL < ALL (SELECT SAL FROM EMP WHERE JOB = 'MANAGER');

# 🔟 WAQTD employees whose salary matches any employee in dept 30
SELECT ENAME
FROM EMP
WHERE SAL IN (SELECT SAL FROM EMP WHERE DEPTNO = 30);

# 6️⃣ WAQTD employees earning more than both ALLEN and SCOTT
SELECT ENAME 
FROM EMP
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE ENAME IN ('ALLEN' , 'SCOTT'));

#7️⃣ WAQTD employees earning less than both FORD and JONES
select ename 
from emp
where sal < (select min(sal) from emp where ename in ('ford','jones'));

# 8️⃣ WAQTD employees earning more than any clerk
SELECT ENAME
FROM EMP
WHERE SAL > ANY (SELECT SAL FROM EMP WHERE JOB = 'CLERK');

# 9️⃣ WAQTD employees earning less than all managers
SELECT *
FROM EMP
WHERE SAL < ALL (SELECT SAL FROM EMP WHERE JOB = 'MANAGER');

# 🔟 WAQTD employees whose salary matches any employee in dept 30
SELECT DEPTNO
FROM EMP
WHERE SAL IN (SELECT SAL FROM EMP WHERE DEPTNO = 30);










