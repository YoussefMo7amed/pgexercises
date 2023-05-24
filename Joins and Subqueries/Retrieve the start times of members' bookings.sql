SELECT  starttime
FROM cd.bookings b
JOIN cd.members m
ON m.memid = b.memid
WHERE firstname like 'David'
AND surname like 'Farrell'