select count (*)
from oehrlich.branch natural join oehrlich.city
where cityName = 'Beer Sheva'
