select
    TIMESTAMP '2012-08-31 01:00:00'

-- timestamps (date + time).

/*
You can also use casts to change a correctly formatted string into a timestamp,
for example:
select
    '2012-08-31 01:00:00' :: timestamp;

select
    cast('2012-08-31 01:00:00' as timestamp);
*/

/* 
You can add time zone
"2012-08-31 01:00:00 +00:00", assuming UTC
or
TIMESTAMP WITH TIME ZONE 2012-08-31 01:00:00 +00:0
*/