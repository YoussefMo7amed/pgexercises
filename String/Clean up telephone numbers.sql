-- The telephone numbers in the database are very inconsistently formatted. You'd like to print a list of member ids and numbers that have had '-','(',')', and ' ' characters removed. Order by member id.
select
    memid,
    translate(telephone, '-() ', '') as telephone
from
    cd.members
order by
    memid;

-- NOTE
-- In translate(), You pass it three strings: the value you want altered, the characters to replace, and the characters you want them replaced with