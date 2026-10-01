SELECT
       -- TOP 1000 -- Returns the specified number of records
       BusinessEntityID AS person_id,
       PersonType       AS person_type,
       Title            AS title,
       FirstName        AS first_name,
       MiddleName       AS middle_name,
       LastName         AS last_name
  FROM Person.Person
 WHERE Title = 'Mr.'
 ORDER BY first_name,
          last_name DESC; -- DESC = descending order
                          -- ASC = ascending order


SELECT
       -- DISTINCT -- Removes duplicate rows
       -- TOP 1000
       -- BusinessEntityID AS person_id,
       -- PersonType       AS person_type,
       -- Title            AS title,
       FirstName  AS first_name,
       MiddleName AS middle_name,
       LastName   AS last_name
  FROM Person.Person
 WHERE Title = 'Mr.'
   AND MiddleName = 'M.'
 ORDER BY first_name,
          middle_name;