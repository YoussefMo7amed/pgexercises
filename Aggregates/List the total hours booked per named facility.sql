-- Produce a list of the total number of hours booked per facility, remembering that a slot lasts half an hour. The output table should consist of the facility id, name, and hours booked, sorted by facility id. Try formatting the hours to two decimal places.
select
    sub.facid,
    name,
    CAST (hours as DECIMAL(5, 2))
from
    (
        select
            facid,
            sum(slots) * 0.5 as hours
        from
            cd.bookings b
        group by
            facid
    ) sub
    join cd.facilities f on f.facid = sub.facid
order by
    sub.facid 

-- or 

select
    f.facid,
    f.name,
    CAST (sum(slots) * 0.5 as DECIMAL(5, 2)) as hour
from
    cd.bookings b
    join cd.facilities f on f.facid = b.facid
group by
    f.facid
order by
    f.facid