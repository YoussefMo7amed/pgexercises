select
    count(facid)
from
    cd.facilities
/* 
- COUNT(address) counts the number of non-null addresses in the result set.
- COUNT(DISTINCT address) counts the number of different addresses in the facilities table.
- COUNT(*) wants to collapse the facilities table into a single value; 
    so you can't use a query like `select facid, count(*) from cd.facilities`
*/