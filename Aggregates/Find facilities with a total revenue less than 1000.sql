-- Produce a list of facilities with a total revenue less than 1000. Produce an output table consisting of facility name and revenue, sorted by revenue. Remember that there's a different cost for guests and members!
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
having
    sum(revenue) < 1000
order by
    sum(revenue)