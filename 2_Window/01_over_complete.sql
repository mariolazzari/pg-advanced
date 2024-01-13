select sku,
	product_name,
	size,
	price,
	avg(price) over() -- window frame
from inventory.products