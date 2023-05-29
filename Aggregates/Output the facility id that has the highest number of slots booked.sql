-- Output the facility id that has the highest number of slots booked. For bonus points, try a version without a LIMIT clause. This version will probably look messy!
select
    facid,
    sum(slots)
from
    cd.bookings
group by
    facid
order by
    sum(slots) desc
limit
    1