-- Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.
select
    facid,
    sum(slots) as "Total Slots"
from
    cd.bookings
where
    starttime between '2012-09-01'
    and '2012-10-01'
group by
    facid
ORDER BY
    "Total Slots"