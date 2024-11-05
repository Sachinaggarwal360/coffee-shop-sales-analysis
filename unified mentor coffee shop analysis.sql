use coffee_sales;
SELECT * FROM coffee_sales.coffee;

# count the number of rows
select count(*) from coffee;

# Maximum order coffee_name
select coffee_name , count(*)  as total_coffee_order
from coffee
group by coffee_name
order by total_coffee_order desc;

# Specific customer purchase
select card,sum(money) as totalpurchase, count(*) as totalorder from coffee where cash_type = "card" group by card order by  totalpurchase desc;
    
select coffee_name,avg(money) as avg_price  from coffee group by coffee_name order by avg_price desc;

SELECT DATE(date) AS sale_date, round(SUM(money),2) AS daily_sales FROM coffee GROUP BY sale_date ORDER BY sale_date;

SELECT monthname(date) AS sale_month, round(SUM(money),2) AS monthly_sales FROM coffee GROUP BY sale_month ORDER BY sale_month;

SELECT cash_type, COUNT(*) AS count FROM coffee GROUP BY cash_type;


select card,date as last_visited_date from coffee where cash_type = 'card' order by card, last_visited_date;