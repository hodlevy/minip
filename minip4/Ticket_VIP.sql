CREATE or replace view Ticket_VIP as
select ticketID, VIP
from oehrlich.theater natural join oehrlich.ticketfortheatre
