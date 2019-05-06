select distinct moviename
from oehrlich.movies natural join oehrlich.ticketformovies natural join oehrlich.tickets natural join oehrlich.theater t
where numofchairs > (select count(m.malfunctionid)
                     from oehrlich.malfunction m
                     where m.isfixed = 'no' and m.theaterid = t.theaterid)
