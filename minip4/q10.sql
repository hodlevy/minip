select count(ticketID)
from oehrlich.ticketfortheatre natural join oehrlich.theater
where vip = 'YES'
