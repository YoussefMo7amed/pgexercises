select
    timestamp '2012-08-31 01:00:00' - timestamp '2012-07-30 01:00:00' as interval;

/*
 Subtracting timestamps produces an INTERVAL data type.INTERVALs are a special data type for representing the difference between two TIMESTAMP types.
 When subtracting timestamps,
 Postgres will typically give an interval in terms of days,
 hours,
 minutes,
 seconds,
 without venturing into months.This generally makes life easier,
 since months are of variable lengths.
 */