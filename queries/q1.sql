select branchID
from oehrlich.branch natural join oehrlich.city natural join oehrlich.area
where areaCountry = 'Israel'
