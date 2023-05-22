SELECT  *
FROM cd.facilities
WHERE name LIKE '%Tennis%'

/*
There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character
 
 e.g.
 - `WHERE ContactName LIKE 'a%o'`
	Finds any values that start with "a" and ends with "o"
 -  WHERE CustomerName LIKE 'a_%'`
 	Finds any values that start with "a" and are at least 2 characters in length
*/