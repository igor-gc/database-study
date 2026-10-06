USE AdventureWorks2019
GO

SET LANGUAGE Brazilian
GO

/*
    DATEDIFF(Date_Part, Start_Date, End_Date): returns an INT
    DATEDIFF_BIG(Date_Part, Start_Date, End_Date): returns a BIGINT
    DATEADD(Date_Part, Value, Date/Column_Name)
*/

SELECT GETDATE() AS today,
       DATEDIFF(DAY, '1991-04-12', GETDATE()) AS diff_days,
       DATEDIFF(HOUR, '1991-04-12 01:58:34', GETDATE()) AS hours,
       DATEDIFF_BIG(NANOSECOND, '1991-04-12 01:58:34', SYSDATETIME()) AS precision
GO


SELECT BusinessEntityID,
       Title,
       FirstName,
       DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS diff_months,
       DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS diff_year,
       DATEDIFF(DAY, ModifiedDate, GETDATE()) AS diff_day,
       ModifiedDate,
       DATENAME(MONTH, ModifiedDate) AS month_name,

       DATENAME(MONTH, (DATEADD(MONTH, 3, ModifiedDate))) AS months_added,
       DATEADD(MONTH, -3, ModifiedDate) AS months_subtracted

  FROM Person.Person
 WHERE ModifiedDate >= DATEADD(YEAR, -7, GETDATE())
GO


SELECT BusinessEntityID,
       Title,
       FirstName,
       DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS diff_months,
       DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS diff_year,
       DATEDIFF(DAY, ModifiedDate, GETDATE()) AS diff_day,
       ModifiedDate,
       DATENAME(MONTH, ModifiedDate) AS month_name,

       DATENAME(MONTH, (DATEADD(MONTH, 3, ModifiedDate))) AS months_added,
       DATEADD(MONTH, -3, ModifiedDate) AS months_subtracted

  FROM Person.Person
                                                --SUBSELECT
 WHERE ModifiedDate >= DATEADD(MONTH, -16, (SELECT MAX(ModifiedDate) FROM Person.Person))
GO


--SELECT MAX(ModifiedDate) FROM Person.Person

SELECT DATEDIFF(
           MONTH,
           (SELECT MIN(ModifiedDate) FROM Person.Person),
           (SELECT MAX(ModifiedDate) FROM Person.Person)
       )