/*
    SCHEMA
*/

    SELECT * FROM INFORMATION_SCHEMA.TABLES
     WHERE TABLE_SCHEMA = 'Sales'

    SELECT * FROM Person.Person

    SELECT * FROM [INFORMATION_SCHEMA].[COLUMNS]
     WHERE [TABLE_SCHEMA] = 'Person'
       AND [TABLE_NAME] = 'Person'

    SELECT * FROM [AdventureWorks2019].[Sales].[Store]
    -- dbo: default schema
    --SELECT * FROM [Database_Name].[Schema_Name].[Table_Name]