-- You'd like to produce a count of how many members you have whose surname starts with each letter of the alphabet. Sort by the letter, and don't worry about printing out a letter if the count is 0.
select
    substring(surname, 1, 1) letter,
    count(memid)
from
    cd.members
group by
    letter
order by
    letter

-- Note
--  SQL are based on 1-indexing, not the 0-indexing.
-- See the difference between these 2 functions
-- substr() : https://w3resource.com/PostgreSQL/substr-function.php
-- SUBSTRING() :https://w3resource.com/PostgreSQL/substring-function.php