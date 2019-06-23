create or replace function BranchesInCity(city_name in string) return number is
  FunctionResult number;
begin
  select count(branchID) into FunctionResult
  from oehrlich.city c natural join oehrlich.branch
  where c.cityname = city_name
  group by c.cityname;
  
  return(FunctionResult);
end BranchesInCity;
/
