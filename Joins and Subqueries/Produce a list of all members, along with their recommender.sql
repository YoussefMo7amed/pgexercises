-- Application on the need left join

SELECT  mem.firstname memfname
       ,mem.surname memsname
       ,rec.firstname recfname
       ,rec.surname recsname
FROM cd.members mem
LEFT OUTER JOIN cd.members rec
ON mem.recommendedby = rec.memid
ORDER BY memsname, memfname