--GROUPING FUNCTION
--MIN/MAX/AVG/COUNT/SUM GROUPING METHOD WHICH CAN BE USED IN THE SELECT CLAUSE BUT NOT IN THE WHERE CLAUSE
SELECT E.ENAME,MAX(E.SAL) AS MAX_SAL FROM EMP E GROUP BY E.ENAME
--MAX SAL FOR THE EMPLOYEE WHO IS MANAGER
SELECT MAX(E.SAL) AS "MAX SAL MANAGER " FROM EMP E WHERE E.JOB='MANAGER'
--COUNTING THE NUMBER OF MANAGER IN THE EMP TABLE AS BELOW 
SELECT COUNT(E.SAL) AS "COUNT_MANAGER " FROM EMP E WHERE E.JOB='MANAGER'
--COUNTING THE NULL VALUE COLUMN 
SELECT E.* FROM EMP E 
--HERE THIS WILL NOT COUNT THE NULL VALUE BY DEFAULT BUT REST VALUE WILL BE COUNTED 
SELECT COUNT(E.COMM) AS "COMM_COUNT" FROM EMP E
--BUT IF WE HAVE TO COUNT THE NULL VALUE AS WELL WE HAVE TO USE 
SELECT COUNT(NVL(E.COMM,0)) AS "COMM_COUNT_NULL" FROM EMP E WHERE E.COMM IS NULL

--USING THE GROUP BY CLAUSE
SELECT E.JOB,TRUNC(AVG(E.SAL),2) AS "AVGERAGE SALARY" FROM EMP E GROUP BY E.JOB 

--GRPOUP BY AND HAVING CLAUSE
--IF WE ARE NOT USING THE AGGREGATE FUNCTION THEN GROUP BY DOES THE SAME WORK AS DISTINCT
SELECT E.JOB FROM EMP E GROUP BY E.JOB
--USING THE DISTINCT KEYWORD IN THE ORACLE SQL
SELECT DISTINCT(E.JOB) FROM EMP E

--ASSIGNMENT
SELECT E.JOB,COUNT(E.JOB) AS "COUNT EMPLOYEE-JOB" FROM EMP E GROUP BY E.JOB HAVING COUNT(E.JOB)=2 
--ASSIGNMENT 2 
SELECT E.DEPTNO, COUNT(*) AS "EMPLOYEE PER LOCATION" FROM EMP E GROUP BY E.DEPTNO HAVING COUNT(*)>3

--GRPOUP BY AND HAVING CLAUSE
--IF WE ARE NOT USING THE AGGREGATE FUNCTION THEN GROUP BY DOES THE SAME WORK AS DISTINCT
SELECT E.JOB FROM EMP E GROUP BY E.JOB
--USING THE DISTINCT KEYWORD IN THE ORACLE SQL
SELECT DISTINCT(E.JOB) FROM EMP E

--ASSIGNMENT
SELECT E.JOB,COUNT(E.JOB) AS "COUNT EMPLOYEE-JOB" FROM EMP E GROUP BY E.JOB HAVING COUNT(E.JOB)=2 
--ASSIGNMENT 2 
SELECT E.DEPTNO, COUNT(*) AS "EMPLOYEE PER LOCATION" FROM EMP E GROUP BY E.DEPTNO HAVING COUNT(*)>3


--GROUP BY ADDITIONAL COMMAND 
SELECT E.JOB,COUNT(E.JOB) AS "COUNT_PER_JOB" FROM EMP E GROUP BY E.JOB
--ALTERNATIVE WAY
SELECT E.JOB,COUNT(*) AS "COUNT_PER_JOB" FROM EMP E GROUP BY E.JOB ORDER BY  COUNT_PER_JOB
--GROUPING BY MULTIPLE FIELDS
SELECT E.JOB,E.DEPTNO,COUNT(*) AS "COUNT_PER_JOB" FROM EMP E GROUP BY E.JOB,E.DEPTNO ORDER BY  COUNT_PER_JOB

