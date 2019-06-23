CREATE or replace view Theatre_Branch_Ticket as
select theaterID, branchID, ticketID
from oehrlich.malfunction natural join oehrlich.ticketfortheatre
