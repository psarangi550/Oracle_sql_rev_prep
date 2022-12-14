--CHECKING ALL THE EMPLOYEE
SELECT * FROM EMP

--PREVEIOUS QUERY 

SELECT E.* FROM EMP E WHERE 
(E.COMM IS NULL OR E.COMM=0) 
AND (E.SAL>1100 AND E.SAL < 5000 AND E.SAL != 3000)

--FETCHING THE SAME FOR THE  SALARY 1500 

SELECT E.* FROM EMP E WHERE 
(E.COMM IS NULL OR E.COMM=0) 
AND (E.SAL>1100 AND E.SAL < 5000 AND E.SAL != 1500)

--PUZZLES
--RETURN THE EMPLOYEE THAT ARE SALESMAN AND THAT MAKES EITHER 300 DOLLAR IN COMMISION OR GREATER THAN 100 DOLLAR IN COMMISION
SELECT E.* FROM EMP E WHERE E.JOB='SALESMAN'  AND (E.COMM=300 OR E.COMM>1000)

--USAGE OF LIKE KEYWORD 
SELECT E.* FROM EMP E WHERE E.JOB LIKE 'SALES%' ORDER BY E.SAL DESC

--USAGE OF ALIAS WHILE DISPLAYING THE COLUMN NAME 
SELECT E.EMPNO AS "EMPLOYEE NUMBER", E.ENAME AS "EMPLOYEE NAME",
E.SAL AS "EMPLOYEE SALARY" FROM EMP E  

--USAGE OF CONCATINATION
-- THE CONCATINATION OPERATOR USED BY || SYMBOL AS BELOW
SELECT E.ENAME || 'MAKES '||E.SAL|| ' $ PER MONTH ' AS DETAILS FROM EMP E

--USING  THE FUNCTION IN HERE AS BELOW 
SELECT CONCAT('HELLO',' THERE ') AS "MESSAGE" FROM DUAL

--USAGE OF DUAL TABLE 
SELECT CONCAT('HELLO ',UPPER('pratik')) AS MANIPULATE FROM DUAL

--ASSIGNMENT
SELECT * FROM EMP E
SELECT E.ENAME || CONCAT(UPPER(' IS THE NAME AND '), LOWER('THEIR JOB IS: ')) || E.JOB AS "MESSAGE" FROM EMP E 

--USING THE SINGLE ROE FUNCTION WHICH CAN BE USED IN THE WHERE CLAUSE
SELECT E.* FROM EMP E WHERE LOWER(E.ENAME)='king'

--FEW MORE SINGLE ROW FUNCTION FIR NUMBER/NULL/DATE WHICH CAN BE USED IN THE SELECT AND WHERE CLAUSE
--INITCAP('<VALUE1>,<VALUE2>') METHOD 
SELECT INITCAP(E.ENAME) AS "TITLE" FROM EMP E
--LENGTH('<VALUE>')--PROVIDE THE LENGTH OF THE CHAR
SELECT E.* FROM EMP E WHERE LENGTH(E.ENAME)=5 
--SUBSTR('<VALUE>',INITIAL,FINAL)-->DISPLAY THE VALUE FROM INDEX 1 TILL THE FINAL VALUE 
SELECT E.* FROM EMP E WHERE SUBSTR(E.ENAME,2,2)='LA'
--TO_CHAR-->CONVERT THE NUMBER INTO VARCHAR2 AND DATE TO VARCHAR2 AS WELL
-- HERE I AM USING THE LPAD('<VALUE>',<TOTAL CHAR AS NUMBER>,'<PADDED VALUE>')  TO PREFIX THE VALUE  
--HERE USING THE TO_CHAR TO CONVER THE INT INTO THE STRING FINDING ITS LENGTH ABD USING THE LPAD ADDING THE $ SYMBOL
SELECT LPAD(TO_CHAR(E.SAL),LENGTH(TO_CHAR(E.SAL))+1,'$') AS "CUSTOMIZE SAL" FROM EMP E


--NUMERIC SINGLE ROW FUNCTION 
SELECT ROUND(108.088,2) AS "ROUND VAL" FROM DUAL D
--TRUNC(<VALUE>,<DEC VAL>)-->PROVIDE THOSE MANY DECIMAL POINT THAT IS PROVIDED IN THE 2ND ARGS
SELECT TRUNC(108.088,2) AS "TRUNC VAL" FROM DUAL D 

--DATE SINGLE ROW FUNCTIONS
SELECT SYSDATE FROM DUAL D 
--CONVERTING THE DATE TO CHAR USING THE TO_CHAR METHOD
SELECT TO_CHAR(SYSDATE,'DD-MM-YYYY') AS "TODAY DATE" FROM DUAL D
-- CONVERTING THE CHAR TO THE DATE USING THE TO_DATE METHOD AS BELOW 
SELECT TO_DATE('11-09-2022','DD-MM-YYYY') AS "TDAY DATE" FROM DUAL D
--FETCHING THE TIMESTAMP OVER HERE CAN BE FETCHED BY 
SELECT SYSTIMESTAMP FROM DUAL 
--WE CAN ALSO CONVERT THAT TO THE STRING AS BELOW
SELECT TO_CHAR(SYSTIMESTAMP,'DD-MM-YYYY HH:MM:SS') AS "MANIPULATING TIMEZONE" FROM DUAL D
--WE CAN USE THE ADD_MONTHS('<DATE VALUE>',<MONTH IN  NUMBER>)-->THIS WILL ADD THE CHAR MONTHS TO THE MONTH VALUE PROVIDED IN  NUMBER--AND RETURN DATE OBJ
SELECT ADD_MONTHS(TO_CHAR(SYSDATE),8) AS "ADDED_MONTHS" FROM DUAL D
--MONTHS_BETWEEN(dateA,dateB) WILL PROVIDE THE MONTH IN BETWEEN THE DATES
--HERE THE RETURN VALUE WILL BE IN INT AND DATE CAN BE DATE OBJ OR CHAR OBJ WHICH PASSED AS AN ARGS
SELECT MONTHS_BETWEEN(SYSDATE,TO_CHAR(ADD_MONTHS(SYSDATE,8))) AS "CALC MONTH" FROM DUAL D
--FETCHING THE MONTH BETWEEN MY BIRTHDAY OR RIKAS BORTHDAY 
SELECT MONTHS_BETWEEN('8/16/93','3/16/97') AS "AGE GAP" FROM DUAL D 
--TRUNCATING THE DATE VALUE AS TRUNC(DATE/DATE CHAR,'MONTH/YEAR')
-- IF WE ARE NOT PROVIDING THE 2ND ARGS THEN TIMEZOZNE RESET WILL HAPPEN ONLY BUT THE DAY MONTH AND YEAR WILL BE INTACT  
--HERE THE 2ND ARGS VALUE PROVIDED WILL NOT BE RESETED TO MONTH OR YEAR FIRST DATE IF 2ND ARGS PROVIDED AND TIMEZONE WILL BE RESETED
SELECT TRUNC(SYSTIMESTAMP,'YEAR') AS "MANIPULATING DATE" FROM DUAL D


