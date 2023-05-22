SELECT  joindate AS latest
FROM cd.members
WHERE joindate = (
SELECT  MAX(joindate)
FROM cd.members)
-- or
-- SELECT max(joindate) AS latest
-- FROM cd.members;