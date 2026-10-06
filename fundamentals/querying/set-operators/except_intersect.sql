USE AdventureWorks2019
GO

/*
    EXCEPT    : returns the values from the first table/query that are not in the second query/table
    INTERSECT : returns the intersection of values | the common values
*/

SELECT 'OpenAI' AS [Name],
       'Python' AS [Language]
INTERSECT
SELECT 'Microsoft' AS [Company],
       'CSharp' AS [Type]


SELECT BusinessEntityID AS [COL2],
       FirstName
  FROM Person.Person -- 19.972
EXCEPT
SELECT BusinessEntityID AS [COL1],
       '' AS FirstName
  FROM HumanResources.Employee -- 290
 ORDER BY [COL2]
GO


SELECT BusinessEntityID AS [COL2],
       '' AS FirstName
  FROM Person.Person -- 19.972
INTERSECT
SELECT BusinessEntityID AS [COL1],
       '' AS FirstName
  FROM HumanResources.Employee -- 290
 ORDER BY [COL2]