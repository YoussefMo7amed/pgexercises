-- Perform a case-insensitive search to find all facilities whose name begins with 'tennis'. Retrieve all columns.

select
    *
from
    cd.facilities
where
    lower(name) like 'tennis%';

-- or
/* 
 select
 *
 from
 cd.facilities
 where
 upper(name) like 'TENNIS%';
 */
-- OR
/*
 select
 *
 from
 cd.facilities
 where
 name ILIKE 'tennis%'
 -- Postgres does provide the ILIKE operator, which performs case insensitive searches. This isn't standard SQL, but it's arguably more clear.
 */