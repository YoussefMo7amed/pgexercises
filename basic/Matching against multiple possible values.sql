SELECT  *
FROM cd.facilities
WHERE facid IN (1, 5)

/*
The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.

e.g.
WHERE column_name IN (SELECT STATEMENT);
*/