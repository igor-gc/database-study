/*
    COUNT: COUNT
    MIN: MINIMUM
    MAX: MAXIMUM
    SUM: SUM
    AVG: AVERAGE
*/

USE AdventureWorks2019
GO

SELECT COUNT(*) FROM Person.Person


SELECT COUNT(*) AS counter,
       FirstName,
       MiddleName
  FROM Person.Person
 WHERE MiddleName IS NOT NULL
 GROUP BY FirstName,
          MiddleName
GO


SELECT MIN(BusinessEntityID) AS minimum,
       MIN(ModifiedDate) AS modified_date
  FROM Person.Person


SELECT MAX(BusinessEntityID) AS maximum,
       MAX(ModifiedDate) AS max_modified_date
  FROM Person.Person


SELECT SUM(BusinessEntityID) AS sum
  FROM Person.Person --214.960.222


SELECT AVG(BusinessEntityID)
  FROM Person.Person


SELECT --SSP.BusinessEntityID,
       --FirstName,
       --MiddleName,
       --LastName,
       --TerritoryID,
       SUM(SalesQuota) AS sales_quota
       --Bonus,
       --CommissionPct,
       --*SalesYTD,
       --SalesLastYear,
       --PP.ModifiedDate
  FROM Sales.SalesPerson AS SSP
  JOIN Person.Person AS PP
    ON SSP.BusinessEntityID = PP.BusinessEntityID
 GROUP BY --SSP.BusinessEntityID,
          --FirstName,
          MiddleName
          --LastName,
          --TerritoryID,
          --Bonus,
          --CommissionPct,
          --SalesYTD,
          --SalesLastYear,
          --PP.ModifiedDate


SELECT * FROM HumanResources.Department


SELECT * FROM HumanResources.EmployeeDepartmentHistory
 WHERE StartDate BETWEEN '2001-01-01' AND '2009-01-14'
 ORDER BY StartDate


SELECT RateChangeDate,
       SUM(Rate) AS rate,
       MAX(Rate) AS max_rate
  FROM HumanResources.EmployeePayHistory
 GROUP BY RateChangeDate


SELECT COUNT(*) AS counter,
       FirstName
  FROM Person.Person
 GROUP BY FirstName
HAVING COUNT(*) > 20


SELECT AVG(Rate) AS rate,
       RateChangeDate
  FROM HumanResources.EmployeePayHistory
 GROUP BY RateChangeDate
HAVING AVG(Rate) < 10.000


SELECT SUM(Rate) AS rate,
       RateChangeDate
  FROM HumanResources.EmployeePayHistory
 GROUP BY RateChangeDate
HAVING SUM(Rate) < 7.000


SELECT COUNT(*)
  FROM Person.Person
 WHERE MiddleName IS NOT NULL


SELECT COUNT(MiddleName)
  FROM Person.Person
 --WHERE MiddleName IS NOT NULL


SELECT SUM(Rate) AS sum,
       MIN(Rate) AS minimum,
       MAX(Rate) AS maximum,
       COUNT(Rate) AS counter,
       AVG(Rate) AS average
  FROM HumanResources.EmployeePayHistory