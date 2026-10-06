/*
    CAST, CONVERT, TRY_CAST, TRY_CONVERT, PARSE, TRY_PARSE
    PARSE(Column_Name AS Data_Type [USING culture])
*/

SELECT (SELECT PARSE('3654' AS INT)) + (SELECT PARSE('6' AS INT))


SELECT TRY_PARSE('46184F' AS INT)


SELECT TRY_PARSE('R$360,00' AS INT USING 'pt-BR')


SELECT BusinessEntityID,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate,
       TRY_CAST(ModifiedDate AS DATE) AS modified_date,
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS modified_date_2
       --TRY_PARSE(ModifiedDate AS DATE USING 'en-US') AS modified_date_3

  FROM Person.Person


SELECT PARSE('16/04/1991' AS DATE USING 'pt-BR')


SELECT PARSE('12/16/2021' AS DATE USING 'en-US')


SELECT CAST('11/30/2010' AS DATE)