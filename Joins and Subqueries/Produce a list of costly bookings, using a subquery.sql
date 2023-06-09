SELECT  member
       ,facility
       ,cost
FROM
(
	SELECT  mem.firstname || ' ' || mem.surname                                           AS member
	       ,fac.name                                                                      AS facility
	       ,CASE WHEN mem.memid = 0 THEN fac.guestcost  ELSE fac.membercost END * b.slots AS cost
	FROM cd.members mem
	INNER JOIN cd.bookings b
	ON mem.memid = b.memid
	INNER JOIN cd.facilities fac
	ON b.facid = fac.facid
	WHERE b.starttime >= '2012-09-14'
	AND b.starttime < '2012-09-15' 
) AS bookings
WHERE cost > 30
ORDER BY cost desc; 