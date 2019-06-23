select cityName, count(ticketID)
from oehrlich.city natural join Theatre_Branch_Ticket natural join oehrlich.branch
group by cityName
