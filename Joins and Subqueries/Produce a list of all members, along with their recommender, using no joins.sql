SELECT  distinct firstname || ' ' || surname AS member
       ,(
SELECT  firstname || ' ' || surname
FROM cd.members
WHERE mem.recommendedby = memid ) AS recommender
FROM cd.members mem
ORDER BY member