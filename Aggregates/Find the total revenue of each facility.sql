-- Produce a list of facilities along with their total revenue. The output table should consist of facility name and revenue, sorted by revenue. Remember that there's a different cost for guests and members! 
select
    name,
    sum(revenue)
from
    (
        select
            fac.facid id,
            case
                when memid = 0 then guestcost
                else membercost
            end * slots as revenue
        from
            cd.facilities fac
            join cd.bookings b on fac.facid = b.facid
    ) sub
    join cd.facilities on facilities.facid = sub.id
group by
    facid
order by
    sum(revenue) 

-- I used group by facid to take advantage of indexing, but you can group by name in the first place.
/*
select
    facs.name,
    sum(
        slots * case
            when memid = 0 then facs.guestcost
            else facs.membercost
        end
    ) as revenue
from
    cd.bookings bks
    inner join cd.facilities facs on bks.facid = facs.facid
group by
    facs.name
order by
    revenue;

*/