create or replace procedure MovieData(movie_name in string, ticket_count out number) is
begin
  select count(ticketID) into ticket_count
  from oehrlich.movies m natural join oehrlich.ticketformovies natural join oehrlich.tickets
  where m.movieName = movie_name; 
end MovieData;
/
