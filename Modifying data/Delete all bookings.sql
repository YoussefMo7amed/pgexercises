truncate cd.bookings -- or
-- delete from cd.bookings;
/*
 
 TRUNCATE also deletes everything in the table, 
 but does so using a quicker underlying mechanism. 
 It's not perfectly safe in all circumstances (https://www.postgresql.org/docs/current/mvcc-caveats.html), though, so use judiciously. 
 When in doubt, use DELETE.
 
 */