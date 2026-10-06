
USE AdventureWorks2019
GO
--65161

SELECT PP.BusinessEntityID AS pp_business_entity_id,
       HRE.BusinessEntityID AS hre_business_entity_id,
       FirstName,
       MiddleName,
       LastName,
       LoginID,
       JobTitle,
       BirthDate
  FROM Person.Person AS PP --19.972
  LEFT JOIN HumanResources.Employee AS HRE --290
    ON PP.BusinessEntityID = HRE.BusinessEntityID
 ORDER BY PP.BusinessEntityID


--SELECT * FROM HumanResources.Employee --290