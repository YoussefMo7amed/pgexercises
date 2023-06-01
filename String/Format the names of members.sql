-- Output the names of all members, formatted as 'Surname, Firstname'
select
    surname || ', ' || firstname as name
from
    cd.members;

-- or 
select
    concat(surname, ', ', firstname) as name
from
    cd.members -- Some systems (like SQL Server) use +, but || is the SQL standard.