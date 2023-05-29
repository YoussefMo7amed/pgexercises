-- Produce a list of the total number of slots booked per facility per month in the year of 2012. Produce an output table consisting of facility id and slots, sorted by the id and month.
select
    facid,
    EXTRACT(
        MONTH
        FROM
            starttime
    ) as month,
    sum(slots) as "Total Slots"
from
    cd.bookings
where
    EXTRACT(
        year
        from
            starttime
    ) = '2012'
group by
    facid,
    month
order by
    facid,
    month

/* Notes:
 the use of the EXTRACT function in the WHERE clause has the potential to cause severe issues with performance on larger tables
 