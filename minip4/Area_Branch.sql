CREATE or replace view Area_Branch as
select areaName, areaId, branchId
from oehrlich.area natural join oehrlich.city natural join oehrlich.branch
