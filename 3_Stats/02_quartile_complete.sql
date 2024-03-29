select
	percentile_cont(.25) within group (order by height_inches) as "1st quartile",
	percentile_cont(.50) within group (order by height_inches) as "2nd quartile",
	percentile_cont(.75) within group (order by height_inches) as "3rd quartile"
from public.people_heights;

-- WARNING: the ntile() function only creates even groups,
--          not statistical quartiles
select name, height_inches,
	ntile(4) over (order by height_inches)
from public.people_heights
order by height_inches;