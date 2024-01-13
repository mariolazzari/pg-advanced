select gender,
    max(height_inches) - min(height_inches) as "height range"
from public.people_heights
group by rollup (gender);