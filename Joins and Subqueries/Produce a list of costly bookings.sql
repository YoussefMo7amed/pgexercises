SELECT  mem.firstname || ' ' || mem.surname                                           AS member
       ,fac.name                                                                      AS facility
       ,CASE WHEN mem.memid = 0 THEN fac.guestcost  ELSE fac.membercost END * b.slots AS cost
FROM cd.members mem
JOIN cd.bookings b
ON mem.memid = b.memid
JOIN cd.facilities fac
ON b.facid = fac.facid
WHERE starttime >= '2012-09-14'
AND starttime < '2012-09-15'
AND ( (mem.memid = 0 AND b.slots*fac.guestcost > 30) or (mem.memid != 0 AND b.slots*fac.membercost > 30) )
ORDER BY cost desc
-- NOTE 
/* Alias (e.g. cost) cannot be used IN a WHERE, GROUP BY, or
HAVING clause. */