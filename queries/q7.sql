select ticketid, theaterid
from oehrlich.theater natural join oehrlich.tickets natural join oehrlich.ticketfortheatre
where ticketline > numberofrows
