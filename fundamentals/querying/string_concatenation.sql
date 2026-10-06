/*
    CONCAT(): As many arguments as desired
    CONCAT_WS(Separator, Column_Name/Value)
*/

USE AdventureWorks2019
GO

--SELECT CONCAT('Michael ', 'Anderson ', TRY_CAST(165161 AS INT), 'SAMPLE ', 'Michael 2')

--SELECT GETDATE() + 652 + ' SAMPLE'

SELECT BusinessEntityID,
       PersonType,
       NameStyle,
       Title,
       FirstName,
       MiddleName,
       LastName,
       Title + ' ' + FirstName + ' ' + MiddleName + ' ' + LastName AS FullName,
       CONCAT(Title, ' ', FirstName, ' ', MiddleName, ' ', LastName) AS [CONCAT()],
       CONCAT_WS(' ', Title, FirstName, MiddleName, LastName, 'Lucas', 'Backend', TRY_CAST(GETDATE() AS DATE)) AS [CONCAT_WS()],
       Suffix,
       EmailPromotion,
       ModifiedDate
  FROM Person.Person