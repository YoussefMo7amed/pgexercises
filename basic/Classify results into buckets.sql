SELECT  name
       ,CASE 
       WHEN monthlymaintenance > 100 
       THEN 'expensive'  
       ELSE 'cheap' 
       END AS cost
FROM cd.facilities

/*
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
*/