--INDEXES IN ORACLE SQL
--HERE COMPUTE STATICS ARE THE SAME 
CREATE INDEX PK_IDX1
ON PACS_GRADE_NEW (LOWER_SAL)
COMPUTE STATISTICS
--CHECKING FOR THE TABLE
SELECT * FROM PACS_GRADE_NEW WHERE LOWER_SAL BETWEEN 0 AND 1000