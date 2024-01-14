select * 
from sales.orders
where order_date in(
	select generate_series('2021-03-15'::timestamp, '2021-03-31'::timestamp, '5 days')	
)
order by order_id;