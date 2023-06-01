-- Produce a list of each member name, id, and their first booking after September 1st 2012. Order by member ID.
select
    surname,
    firstname,
    sub.memid,
    sub.starttime
from
    (
        select
            memid,
            min(starttime) as starttime
        from
            cd.bookings
        where
            starttime >= '2012-09-01'
        group by
            memid
    ) as sub
    join cd.members m on m.memid = sub.memid
order by
    sub.memid