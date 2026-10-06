USE AdventureWorks2019
GO

--EOMONTH(Date/Column_Name, [optional_offset]): returns a date
SELECT GETDATE() AS [GETDATE()],
       
       EOMONTH(GETDATE()) AS [EOMONTH],
       EOMONTH(GETDATE(), -4) AS [NEG],
       
       EOMONTH('2010-02-10') AS FEB,
       EOMONTH('2010-02-10', 3) AS MONTH
GO


SELECT BusinessEntityID,
       FirstName,
       ModifiedDate,
       EOMONTH(ModifiedDate, -3) AS [-3_MONTHS],
       EOMONTH(ModifiedDate) AS LAST_DAY_OF_MONTH,
       EOMONTH(ModifiedDate, 6) AS [+6_MONTHS]
  FROM Person.Person


--DATEFROMPARTS(YEAR, MONTH, DAY) [ALL OF INTEGER TYPE]: returns a date
SELECT DATEFROMPARTS('2015', '10', '7')


--TIMEFROMPARTS(HOUR, MINUTE, SECOND, FRACTION, PRECISION): returns a time
SELECT TIMEFROMPARTS(18, 30, 40, 0, 0)


--DATETIMEFROMPARTS(YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, FRACTION)
SELECT DATETIMEFROMPARTS(1991, 4, 12, 1, 58, 30, 30)