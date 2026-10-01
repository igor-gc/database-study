SELECT -- TOP 10
       BusinessEntityID,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate
  FROM Person.Person
 --WHERE MiddleName = 'N'
 ORDER BY BusinessEntityID
 OFFSET 50 ROWS -- Skips 50 rows
 --ORDER BY 4, 5, 6 -- Avoid using column positions
 /*
 ORDER BY FirstName, -- Default: ASC
          MiddleName DESC,
          LastName
 */


SELECT -- TOP 10
       BusinessEntityID,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate
  FROM Person.Person
 --WHERE MiddleName = 'N'
 ORDER BY BusinessEntityID
 OFFSET 50 ROWS -- Skips 50 rows
 FETCH NEXT 10 ROWS ONLY -- Returns the next 10 rows
 --ORDER BY 4, 5, 6 -- Avoid using column positions
 /*
 ORDER BY FirstName, -- Default: ASC
          MiddleName DESC,
          LastName
 */


SELECT DISTINCT
       BusinessEntityID,
       --PersonType,
       --Title,
       FirstName,
       --MiddleName,
       LastName
       --ModifiedDate
  FROM Person.Person
 --WHERE MiddleName = 'N'
 ORDER BY LastName
 OFFSET 50 ROWS -- Skips 50 rows
 FETCH NEXT 10 ROWS ONLY -- Returns the next 10 rows
 --ORDER BY 4, 5, 6 -- Avoid using column positions
 /*
 ORDER BY FirstName, -- Default: ASC
          MiddleName DESC,
          LastName
 */