-- using rank as a hypothetical grouping set aggregate
select name, height_inches
from public.people_heights
order by height_inches desc;

select gender,
    rank(70) within group (order by height_inches desc)
from public.people_heights
group by rollup (gender);