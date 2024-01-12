-- Number of orders per month for each customer
select * from sales.orders;

select customer_id,
	count(*) filter (where order_date >= '2021-03-01' and order_date <= '2021-03-31') as "March",
	count(*) filter (where order_date between '2021-04-01' and '2021-04-30') as "April"
from sales.orders
group by customer_id;


-- Quantity of each product sold
select * from sales.order_lines;

select sku, sum(quantity) as "Total Sold"
from sales.order_lines
group by rollup (sku)
order by sum(quantity) DESC;











	