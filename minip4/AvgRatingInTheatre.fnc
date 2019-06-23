create or replace function AvgRatingInTheatre(theatre_id in number) return float is
  FunctionResult float;
begin
  select AVG(rating) into FunctionResult
  from oehrlich.movies natural join oehrlich.ticketformovies natural join oehrlich.tickets natural join oehrlich.ticketfortheatre natural join oehrlich.theater t
  where theaterid = theatre_id
  group by theaterid;
  
  return(FunctionResult);
end AvgRatingInTheatre;
/
