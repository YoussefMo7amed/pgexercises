-- Produce a list of member names, with each row containing the total member count. Order by join date, and include guest members.
select
    (
        select
            count(*)
        from
            cd.members
    ),
    firstname,
    surname
from
    cd.members
order by
    joindate

-- or 

select count(*) over(), firstname, surname
	from cd.members
order by joindate 

