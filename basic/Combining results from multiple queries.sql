SELECT  surname
FROM cd.members
UNION
SELECT  name
FROM cd.facilities

/*
Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order
*/