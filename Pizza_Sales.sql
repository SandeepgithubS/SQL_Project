use pr;
select * from pizza_sales;

-- Q1) Find the total revineau of pizza
select sum(total_price) as total_revineau from pizza_sales;

-- Q2) Find the  Average Order Value
select sum(total_price)/count(distinct order_id) as avg from pizza_sales;

-- Q3) Find the toat pizza sold
select sum(Quantity) from pizza_sales;

-- Q4) Find the total orders
select count( distinct order_id) from pizza_sales;

-- Q5)  Find the Average Pizzas Per Order
select sum(quantity)/count(distinct order_id) from pizza_sales;

-- Q6) Find the total orders per day
select year(order_date) from pizza_sales;

-- Q8) Find the % of sale by pizza catagory
select pizza_category, cast(sum(total_price)*100/ (select sum(total_price) from pizza_sales) as decimal(10,1)) as sales from pizza_sales group by pizza_category;

-- Q9) Find the % of pizza size
select pizza_size, cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as sale from pizza_sales group by pizza_size order by sale desc;

-- Q10) find the total pizza sales by category
select pizza_category, sum(quantity) from pizza_sales group by pizza_category;

-- Q11) find the top 5 pizza by revineau
select pizza_name, sum(total_price) as revenue from pizza_sales group by pizza_name order by revenue desc limit 5;

-- Q12) Find the bottom 5 pizza by revinue
select pizza_name, Sum(total_price) as revenue from pizza_sales group by pizza_name order by revenue asc limit 5;

-- Q13) Find top 5 pizza by quantity
select pizza_name, sum(quantity) as qty from pizza_sales group by pizza_name order by qty desc limit 5;

-- Q14) Find bottom 5 pizza bt quntity
select pizza_name, sum(quantity) as qty from pizza_sales group by pizza_name order by qty limit 5;

-- Q15) find Top 5 pizza by total orders
select pizza_name, count(distinct order_id) cnt from pizza_sales group by pizza_name order by cnt desc limit 5 ;

-- Q16) Find the bottom 5 pizza by total order
select pizza_name,count(distinct order_id) cnt from pizza_sales group by pizza_name order by cnt limit 5;








