select count(ticketID)
from (oehrlich.movies natural join oehrlich.ticketformovies)
where releaseyear = 1995
