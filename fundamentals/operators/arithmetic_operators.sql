/*
    ARITHMETIC OPERATORS

    + (ADDITION)
    - (SUBTRACTION)
    * (MULTIPLICATION)
    / (DIVISION)
    % (MODULO) = REMAINDER OF THE DIVISION
*/

SELECT 1 + 1 AS addition;

SELECT 5 - 10 AS [subtraction(-1)];

SELECT (2 + 7) * 10 AS multiplication;

SELECT 90 / 3 AS division;

SELECT 90 / 60 AS div2;

SELECT 90 % 60 AS [remainder_of_division];


SELECT 1 + 3 AS addition,
       5 - 10 AS [sub(-1)],
       1700 + (-900) AS neg,
       5 * (5 + 1) AS mult_sum,
       -5 * (500 / 40) % 3 AS total;


SELECT 1 + '1' AS addition;

SELECT '1' + 1;

SELECT '1' + '1' AS addition3; -- The plus (+) sign with text values results in concatenation

SELECT '1' + ('1' * 4);

SELECT '1' + '1A' + 5;

SELECT 'PEDRO' + ' ' + 'LUCAS' AS name;

SELECT 'IT' - 2;


SELECT 5 + ('4' + '5');