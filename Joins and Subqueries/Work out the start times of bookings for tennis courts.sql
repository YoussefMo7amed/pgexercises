SELECT  starttime AS start
       ,name
FROM cd.bookings b
JOIN cd.facilities AS f
ON b.facid = f.facid
WHERE starttime >= '2012-09-21'
AND starttime < '2012-09-22'
AND name like 'Tennis%' 