select theaterid
from (select theaterid, numberofrows
     from oehrlich.theater
     where vip = 'YES' and numberofrows >= ALL(select t.numberofrows from oehrlich.theater t)) natural join oehrlich.ticketfortheatre natural join oehrlich.tickets
where ticketstatus = 'Active'
