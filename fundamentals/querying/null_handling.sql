USE AdventureWorks2019
GO

/*
    ISNULL(Column_Name/Value, ValueToReplace/Data)
    COALESCE(Argument[Column_Name]): as many arguments as desired
*/

--SELECT ISNULL(NULL, '')
SELECT COALESCE(NULL, NULL, 'NULL_2', '1')


SELECT BusinessEntityID,
       PersonType,
       NameStyle,
       Title,
       ISNULL(Title, '') AS Title,
       FirstName,
       ISNULL(MiddleName, '') AS MiddleName,
       COALESCE(Title, MiddleName, Suffix, FirstName) AS [COALESCE()],
       COALESCE(Title, MiddleName, Suffix) AS [COALESCE()_NULL],
       ISNULL(COALESCE(Title, MiddleName, Suffix), 'COALESCE_NULL') AS [COALESCE()_NULL_2],
       LastName,
       ISNULL(Suffix, '') AS Suffix,
       ISNULL(AdditionalContactInfo, '') AS AdditionalContactInfo,
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS ModifiedDate
  FROM Person.Person
 --WHERE AdditionalContactInfo IS NOT NULL
GO