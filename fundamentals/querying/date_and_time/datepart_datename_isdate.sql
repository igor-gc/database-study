USE AdventureWorks2019
GO

/*
    DATEPART(Date/Time_Part, Date/Column_Name): returns an integer
    DATENAME(Date/Time_Part, Date/Column_Name): returns text (nvarchar)
    ISDATE(Column_Name): returns 1 = TRUE | 0 = FALSE
*/

SELECT ISDATE('GETDATE()') AS [ISDATE()],
       ISDATE('2010F1231') AS [ISDATE()],
       GETDATE() AS [GETDATE()],
       SYSDATETIME() AS [SYSDATETIME()],
       DATEPART(HOUR, GETDATE()) AS HOUR,
       DATEPART(MINUTE, GETDATE()) AS MINUTE,
       DATEPART(YEAR, GETDATE()) AS YEAR,

       YEAR(GETDATE()) AS YEAR_ONLY,
       MONTH(GETDATE()) AS MONTH_ONLY,
       DAY(GETDATE()) AS DAY_ONLY,

       DATEPART(MICROSECOND, SYSDATETIME()) AS [MICROSECOND],
       DATEPART(NANOSECOND, SYSDATETIME()) AS NANOSECOND,

       DATENAME(MONTH, GETDATE()) AS MONTH_NAME,
       DATENAME(DAY, GETDATE()) AS DAY_OF_MONTH
GO


SELECT BusinessEntityID,
       Title,
       FirstName,
       MiddleName,
       LastName,
       TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate,
       DATEPART(YEAR, ModifiedDate) AS YEAR,
       ISDATE(ModifiedDate) AS IS_VALID_DATE,
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS formatted_date,
       ISDATE(TRY_CONVERT(VARCHAR(10), ModifiedDate, 103)) AS IS_VALID_FORMATTED_DATE
  FROM Person.Person
 WHERE DATEPART(YEAR, ModifiedDate) = 2008
   AND DATENAME(MONTH, ModifiedDate) = 'December'
GO