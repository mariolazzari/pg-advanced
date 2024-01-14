select order_id,
	order_date::text, -- cast
	customer_id
from sales.orders;