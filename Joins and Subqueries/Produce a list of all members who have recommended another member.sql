SELECT  firstname
       ,surname
FROM cd.members
WHERE memid IN ( SELECT distinct recommendedby FROM cd.members)
ORDER BY surname, firstname


/* You can join a table to itself:

SELECT  distinct recs.firstname AS firstname
       ,recs.surname            AS surname
FROM cd.members mems
INNER JOIN cd.members recs
ON recs.memid = mems.recommendedby
ORDER BY surname, firstname; */