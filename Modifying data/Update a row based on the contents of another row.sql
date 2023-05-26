update
    cd.facilities
set
    membercost = membercost + membercost * 0.1,
    guestcost = guestcost + guestcost * 0.1
where
    facid = 1
    /*
     -- or
     update cd.facilities facs
     set
     membercost = (select membercost * 1.1 from cd.facilities where facid = 0),
     guestcost = (select guestcost * 1.1 from cd.facilities where facid = 0)
     where facs.facid = 1;   
     -- or
     update cd.facilities facs
     set
     membercost = facs2.membercost * 1.1,
     guestcost = facs2.guestcost * 1.1
     from (select * from cd.facilities where facid = 0) facs2
     where facs.facid = 1;
     */