select distinct cityName
from oehrlich.city natural join oehrlich.branch natural join oehrlich.malfunction m
where m.isfixed = 'no'
