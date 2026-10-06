USE AdventureWorks2019
GO
/*
    SELECT BusinessEntityID,
           PersonType,
           NameStyle,
           
           Title,
           
           CASE Title
              WHEN 'Ms.' THEN 'Ms.'
              WHEN 'Mr.' THEN 'Mr.'
              ELSE ''
            END AS title,
           
           
           FirstName,
           MiddleName,
           LastName,

           FirstName + ' ' + MiddleName + ' ' + LastName AS full_name,

           ModifiedDate

      FROM Person.Person
    GO
*/

SELECT PP.BusinessEntityID,
       LoginID,
       OrganizationLevel,
       JobTitle,
       BirthDate,
           
       CASE MaritalStatus
          WHEN 'S' THEN 'Single'
          WHEN 'M' THEN 'Married'
          ELSE 'Not found'
        END AS marital_status,
           
       CASE Gender
          WHEN 'M' THEN 'Male'
          WHEN 'F' THEN 'Female'
        END AS gender,
           
       PersonType,
       NameStyle,
       Title,
          
       FirstName,
       MiddleName,

       CASE
          WHEN (MiddleName = 'E' OR MiddleName = 'A') THEN 'VOWELS'
          WHEN (MiddleName = 'E' OR MiddleName = 'A') AND Title IS NOT NULL THEN 'VOWELS_2'
          ELSE 'ALL TOGETHER'
        END AS middle_name_different,
           
       LastName,
           
       Rate,
       CASE
          WHEN Rate < 12.000 THEN 'MINIMUM WAGE'
          WHEN Rate BETWEEN 12.000 AND 20.000 THEN 'BUSINESS OWNER'
          WHEN Rate > 20.000 THEN 'MILLIONAIRE'
          --ELSE 'POOR GUY'
        END AS rate_comparison,

       CASE
          WHEN Rate < 12.000 THEN (Rate * 3)
          WHEN Rate BETWEEN 12.000 AND 20.000 THEN Rate * 1.1
          WHEN Rate > 20.000 THEN Rate * 0.1
          --ELSE 'POOR GUY'
        END AS numeric_comparison,
           
           
       PayFrequency,
       PEA.EmailAddress,
       PPP.PhoneNumber,
       PPP.PhoneNumberTypeID,
       FirstName + ' ' + MiddleName + ' ' + LastName AS full_name

  FROM Person.Person AS PP
  JOIN Person.EmailAddress AS PEA
    ON PP.BusinessEntityID = PEA.BusinessEntityID
  JOIN Person.PersonPhone AS PPP
    ON PP.BusinessEntityID = PPP.BusinessEntityID
  LEFT JOIN HumanResources.Employee AS HRE
    ON HRE.BusinessEntityID = PP.BusinessEntityID
  LEFT JOIN HumanResources.EmployeePayHistory AS HREPH
    ON HREPH.BusinessEntityID = PP.BusinessEntityID



/*
    SELECT * FROM HumanResources.Employee
    SELECT * FROM Person.EmailAddress
    SELECT * FROM Person.PersonPhone
    SELECT * FROM Person.PhoneNumberType
    SELECT * FROM HumanResources.EmployeePayHistory
*/