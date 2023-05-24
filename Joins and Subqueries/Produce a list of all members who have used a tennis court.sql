SELECT  distinct concat(firstname,' ',surname) AS member
       ,fac.name
FROM cd.members mem
JOIN cd.bookings b
ON mem.memid = b.memid
JOIN cd.facilities fac
ON b.facid = fac.facid
WHERE name like 'Tennis%'
ORDER BY member, name

-- you can use || instead of concat() function