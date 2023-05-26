update
    cd.facilities
set
    membercost = 6,
    guestcost = 30
where
    name like 'Tennis%' 
-- The SET clause accepts a comma separated list of values that you want to update.