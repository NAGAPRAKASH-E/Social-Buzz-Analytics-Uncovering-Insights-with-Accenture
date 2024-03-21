Select * from Content

Select * from Reactions

Select * from ReactionTypes

-----  JOING TABLE

SELECT * FROM Reactions R 
inner JOIN Content C 
ON C.[User ID] = R.[User ID]
inner join ReactionTypes RT
ON R.Type = RT.React_Type


-- CREATING CTE TABLE

WITH CTE AS (
    SELECT *
    FROM Reactions R 
    INNER JOIN Content C ON C.[User ID] = R.[User ID]
    INNER JOIN ReactionTypes RT ON R.Type = RT.React_Type
)
SELECT * FROM CTE;


--TEMP TABLE 

SELECT *
INTO #temp_table
FROM Reactions R 
INNER JOIN Content C ON C.[User ID] = R.[User ID]
INNER JOIN ReactionTypes RT ON R.Type = RT.React_Type;
