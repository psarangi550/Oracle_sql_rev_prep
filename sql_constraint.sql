--CREATING THE TABLE WITH MULTIPLE CONSTRAINT 

CREATE TABLE STORE(
    STORE_ID NUMBER,
    CITY VARCHAR2(50),
    CONSTRAINT PK_STORE PRIMARY KEY (STORE_ID),
    CONSTRAINT CHK_CITY CHECK (CITY IS NOT NULL)
)

--DROPPING THE TABLE AS 
DROP TABLE STORE

--HERE WE ARE ADDING THE NOT NULL CONSTAINT  FOR THE CITY FIELD AS WELL
ALTER TABLE STORE MODIFY CITY VARCHAR2(50) NOT NULL

--CREATING THE TABLE WITH UNIQUE AND PRIMARY KEY AND FOREIGN KEY CONSTRAINT 

CREATE TABLE PRODUCT(
    PRODUCT_ID NUMBER NOT NULL ,
    PRODUCT_NAME VARCHAR(50),
    PRODUCT_COST NUMBER(5,2),
    PRODUCT_RETAIL NUMBER(5,2),
    PRODUCT_TYPE VARCHAR2(10),
    STORE_ID NUMBER NOT NULL,
    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCT_ID),
    CONSTRAINT UN_PRODUCT_COST UNIQUE (PRODUCT_COST),
    CONSTRAINT FK_TORE_ID FOREIGN KEY (STORE_ID) REFERENCES STORE(STORE_ID)
)

--DROPPING THE RELATED TABLE 
DROP TABLE PRODUCT

--NOW WE CAN INSEERT INTO THE STORE TABLE AS BELOW 

INSERT ALL 
INTO STORE(STORE_ID,CITY)
VALUES (1,'KARNATAKA')
INTO STORE(STORE_ID,CITY)
VALUES (2,'PUNE')
INTO STORE(STORE_ID,CITY)
VALUES (3,'HYDERABAD')
INTO STORE(STORE_ID,CITY)
VALUES (4,'BHUBANESWAR')
SELECT * FROM DUAL

--INSERTING INTO THE PRODUCT TABLE AS BELOW 

INSERT ALL
INTO PRODUCT(PRODUCT_ID,PRODUCT_NAME,PRODUCT_COST,PRODUCT_RETAIL,PRODUCT_TYPE, STORE_ID)
VALUES (103,'AWS',70.00,71.00,'VIDEO',2)
INTO PRODUCT(PRODUCT_ID,PRODUCT_NAME,PRODUCT_COST,PRODUCT_RETAIL,PRODUCT_TYPE, STORE_ID)
VALUES (104,'GCP',50.00,51.00,'VIDEO',2)
SELECT * FROM DUAL

--CHECKING THE PRODUCT TABLE AS 
SELECT P.* FROM PRODUCT P 


--JOINING THE 2 TABLES
SELECT P.*,S.*
FROM PRODUCT P JOIN STORE S
ON P.STORE_ID=S.STORE_ID

--WE CAN ALSO USE THE SUBQUERY FOR THE SAME AS 

SELECT P.*,S.*
FROM PRODUCT P,STORE S
WHERE P.STORE_ID=S.STORE_ID


