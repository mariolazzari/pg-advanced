select gender,
    percentile_disc(0.5) within group (order by height_inches) as "discrete median",
    percentile_cont(0.5) within group (order by height_inches) as "continuous median"
from public.people_heights
group by rollup (gender);