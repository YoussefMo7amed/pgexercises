-- Produce a list of the total number of slots booked per facility per month in the year of 2012. In this version, include output rows containing totals for all months per facility, and a total for all months for all facilities. The output table should consist of facility id, month and slots, sorted by the id and month. When calculating the aggregated values for all months and all facids, return null values in the month and facid columns.
select
    facid,
    extract(
        month
        from
            starttime
    ) as month,
    sum(slots) as slots
from
    cd.bookings
where
    starttime between '2012-01-01'
    and '2013-01-01'
group by
    rollup(facid, month)
order by
    facid,
    month;

/* 
 the SQL `ROLLUP` to generate multiple grouping sets.
 The ROLLUP is an extension of the GROUP BY clause. The ROLLUP option allows you to include extra rows that represent the subtotals, which are commonly referred to as super-aggregate rows, along with the grand total row. By using the ROLLUP option, you can use a single query to generate multiple grouping sets.
 */