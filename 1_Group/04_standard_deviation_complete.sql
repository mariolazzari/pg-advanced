select gender, count(*), avg(height_inches), min(height_inches), max(height_inches),
    stddev_samp(height_inches),
    stddev_pop(height_inches),
    var_samp(height_inches),
    var_pop(height_inches)
from public.people_heights
group by gender