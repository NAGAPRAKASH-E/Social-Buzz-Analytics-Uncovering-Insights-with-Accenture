Select * from Content

Select * from Reactions

Select * from ReactionTypes

-- DROPING UNWANTED COLUMN

ALTER TABLE ReactionS DROP COLUMN [Content ID]



-- JOINING CONTENT AND REACTION TABLE  

SELECT * FROM Reactions R 
inner JOIN Content C 
ON C.[User ID] = R.[User ID]
inner join ReactionTypes RT
ON R.Type = RT.React_Type

-- MERGE

MERGE INTO Content AS target
USING Reactions AS source
ON target.[User ID] = source.[User ID]





----change colum name 


EXEC sp_rename 'CONTENT.[Type]' , 'FORMAT_TYPE' , 'COLUMN' ;

EXEC sp_rename 'ReactionTypes.[Type]', 'React_type', 'COLUMN';

-- GROUP BY


