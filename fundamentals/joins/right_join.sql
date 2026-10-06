USE AdventureWorks2019
GO

SELECT ISNULL(SSP.BusinessEntityID, 0) AS ssp_business_entity_id,
       PP.BusinessEntityID AS pp_business_entity_id,
       ISNULL(TerritoryID, 0) AS territory_id,
       SalesQuota,
       Bonus,
       SalesLastYear,
       FirstName,
       MiddleName,
       LastName,
       EmailAddress
  FROM Sales.SalesPerson AS SSP -- 17 ROWS
 RIGHT JOIN Person.Person AS PP
    ON SSP.BusinessEntityID = PP.BusinessEntityID
  JOIN Person.EmailAddress AS PEA
    ON PEA.BusinessEntityID = PP.BusinessEntityID
 ORDER BY SSP.BusinessEntityID,
          PP.BusinessEntityID

GO

--SELECT * FROM Sales.SalesPerson AS SSP -- 17 ROWS