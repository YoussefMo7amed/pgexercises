-- Produce a list of the total number of slots booked per facility. For now, just produce an output table consisting of facility id and slots, sorted by facility id.
select
    fac.facid id,
    sum(b.slots) as "Total Slots"
from
    cd.facilities fac
    join cd.bookings b on fac.facid = b.facid
group by
    id
order by
    id 
    
-- or 

select
    facid,
    sum(slots) as "Total Slots"
from
    cd.bookings
group by
    facid
order by
    facid;