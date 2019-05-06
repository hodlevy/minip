select moviename
from (select moviename, releaseyear
from oehrlich.theater natural join oehrlich.ticketfortheatre natural join oehrlich.tickets natural join oehrlich.movies natural join oehrlich.ticketformovies
where ticketchair = chairainrow and ticketline = numberofrows) m
where m.releaseyear >= 1994
