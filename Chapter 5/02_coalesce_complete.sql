select * 
from inventory.categories;

insert into inventory.categories 
values (4, null, 'Gift Baskets');

select category_id,
	coalesce(category_description, product_line) as "description",
	product_line
from inventory.categories;