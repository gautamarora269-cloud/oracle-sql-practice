# WAQTD DETAILS OF AN EMP ARRANGE RECORDS ACCORDING TO THE SAL IN ASCENDING ORDER 
SELECT *
FROM EMP
ORDER BY SAL ASC;

# WAQTD DETAILS OD AN EMP ARRANGE RECORDS ACCORDING TO THE EMP NAME IN DESCENDING ORDER 
SELECT *
FROM EMP
ORDER BY SAL DESC;

# WAQTD display employee names in alphabetical order
SELECT *
FROM EMP
ORDER BY ENAME;

# WAQTD display employees department-wise ascending salary
SELECT *
FROM EMP
ORDER BY DEPTNO, SAL;

# WAQTD display employees job-wise descending salary
SELECT *
FROM EMP
ORDER BY JOB, SAL DESC;

# WAQTD display employees with highest salary first
SELECT *
FROM EMP
ORDER BY SAL DESC;

# WAQTD display employees in order of hiredate (oldest first)
SELECT *
FROM EMP
ORDER BY HIREDATE;

# WAQTD display employees in latest joining order
SELECT *
FROM EMP 
ORDER BY HIREDATE DESC;

# WAQTD display employees earning more than 2000
SELECT *
FROM EMP
WHERE SAL > 2000
ORDER BY SAL DESC;

# WAQTD display employee name and salary
SELECT ENAME, SAL
FROM EMP
ORDER BY SAL, ENAME;












