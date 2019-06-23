CREATE or replace view Movie_Ticket_Theatre as
select MovieName, TheaterID, TicketID
from oehrlich.TicketForMovies natural join Theatre_Branch_Ticket natural join oehrlich.movies
