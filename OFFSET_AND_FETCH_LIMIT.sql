--OFFSET AND FETCH

--OFFSET SYNTAX IS :
---> OFFSET 2 ROWS ONLY

--FETCH---> FLAVOUR

--FETCH  NEXT 10 ROWS ONLY
--FETCH FIRST 10 ROWS ONLY
--FETCH NEXT/FIRST 10 ROWS WITH TIES
--FETCH NEXT/FIRST 10 PERCENT ROWS  

--HERE TIE VALUE WILL NOT BE PROVIDED
SELECT ENAME,SAL FROM EMP ORDER BY SAL DESC OFFSET 2 ROW FETCH NEXT 1 ROW
--FETCHING THE NTH HIGHEST SALARY
--USAGE OF WITH TIES
SELECT ENAME,SAL FROM EMP ORDER BY SAL DESC OFFSET 2 ROW FETCH NEXT 1 ROW WITH TIES 
--USING THE PERCENT HERE
SELECT ENAME,SAL FROM EMP ORDER BY SAL DESC OFFSET 2 ROW FETCH NEXT 5 PERCENT ROW ONLY
--ALTERNATE APPROACH
SELECT ENAME,SAL FROM EMP E1 WHERE 2-1=(SELECT COUNT(DISTINCT E2.SAL) FROM EMP E2 WHERE E2.SAL>E1.SAL)
--PRACTISE
SELECT ENAME, SAL FROM EMP e1 WHERE 1-1 = (SELECT COUNT(DISTINCT SAL) FROM EMP E2 WHERE E2.SAL > e1.SAL)

