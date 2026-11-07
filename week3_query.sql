USE task;
-- 1 calculate the total number of products sold across all sales.
select* from sales;

SELECT sum(unit_price) as Total_sales
	from sales;
    
    /* 2 calculate the average price of products in each category. Return the category
    and average price (rounded to 2 decimals), ordered by average price descending.*/
    select* from products;
    
    select category, round(avg(price), 2) as avg_price
    from products
		group by category
			order by avg_price desc;
    
    /*  3 calculate the total revenue generated for each day (sale_date). Revenue 
    = quantity × unit_price. Return the date and daily revenue, ordered by date.*/
select sale_date, round(sum(quantity * unit_price), 2) as daily_revenue
	from sales
		group by sale_date
			order by sale_date;
    
    /* 4 find product IDs that have a total quantity sold greater than 
    10. Return the product_id and total quantity sold.*/
    select product_id, sum(quantity) as Total_quantity_sold
		from sales
			group by product_id
            having sum(quantity) > 10;

/* 5 'Large Sale' - Quantity ≥ 10
'Medium Sale' - Quantity between 5–9
'Small Sale' - Quantity < 5
Return sale_id, quantity, and the new sales_size category, ordered 
by quantity descending.*/

select sale_id,
		quantity,
        case
			when quantity >= 10 then "large sales"
            when quantity between 5 and 9 then "medium sales"
            when quantity < 5 then "small sales"
		end as sales_size
	from sales
    order by quantity desc;
    
    /* 6 create a combined list of product names and categories:
Set 1: Products with price > 100
Set 2: Products with price < 50 */

select product_name, category
		from products
		where price > 100
	union	
select product_name, category
		from products
		where price < 50;
    
