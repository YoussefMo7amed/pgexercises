--Find all facilities whose name begins with 'Tennis'. Retrieve all columns.

select
    *
from
    cd.facilities
where
    name like 'Tennis%';

-- NOTE:
-- You should use (') symbol not (").