/*
    SQL - Structured Query Language
    T-SQL - Transact-SQL

    SELECT = selects data
    *      = selects all columns
    FROM   = specifies the source table
    WHERE  = filters records
    AND    = combines multiple conditions
    AS     = defines an alias
*/

SELECT BusinessEntityID,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate
  FROM Person.Person
 WHERE FirstName = 'Ken'
 --  AND MiddleName = '';