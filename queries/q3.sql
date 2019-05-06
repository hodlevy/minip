select areaName 
from oehrlich.city natural join oehrlich.area natural join oehrlich.branch b
where 20 >= (select count(branchid)
            from oehrlich.malfunction m
            where b.branchid = m.branchid)
