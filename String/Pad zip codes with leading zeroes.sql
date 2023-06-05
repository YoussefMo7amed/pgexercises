-- The zip codes in our example dataset have had leading zeroes removed from them by virtue of being stored as a numeric type. Retrieve all zip codes from the members table, padding any zip codes less than 5 characters long with leading zeroes. Order by the new zip code.
select
    repeat('0', 5 - length(zip)) || zip as zip
from
    (
        select
            cast(zipcode as varchar(10)) zip
        from
            cd.members
    ) sub
where
    length(zip) <= 5
order by
    zip;

-- or 
select
    lpad(cast(zipcode as char(5)), 5, '0') zip
from
    cd.members
order by
    zip;

-- Postgres' LPAD function is the star of this particular show. It does basically what you'd expect: allow us to produce a padded string. We need to remember to cast the zipcode to a string for it to be accepted by the LPAD function.