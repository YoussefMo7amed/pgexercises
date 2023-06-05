--You've noticed that the club's member table has telephone numbers with very inconsistent formatting. You'd like to find all the telephone numbers that contain parentheses, returning the member ID and telephone number sorted by member ID.
SELECT
    memid,
    telephone
from
    cd.members
where
    telephone like '(%)%';

-- or using REGex
select
    memid,
    telephone
from
    cd.members
where
    telephone ~ '[()]';

-- Postgres implements POSIX regular expression matching via the ~ operator. 
-- or
/* Using SIMILAR TO
 - A SIMILAR TO expression must match the whole string, not just a substring as in posix regular expressions. This means that you'll typically end up bracketing an expression in '%' characters.
 - The '.' character does not mean 'any character' in SIMILAR TO regexes: it's just a plain character.
 */
select
    memid,
    telephone
from
    cd.members
where
    telephone similar to '%[()]%';