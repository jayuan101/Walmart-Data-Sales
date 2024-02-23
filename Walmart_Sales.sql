SELECT * FROM walmart.`walmart sales data`;

SELECT City, SUM(Total) as total_sales
FROM walmart.`walmart sales data` 
GROUP BY City;

SELECT Gender, SUM(Total) as total_sales
FROM walmart.`walmart sales data` 
GROUP BY Gender;

SELECT City, Gender, SUM(Total) as total_sales
FROM walmart.`walmart sales data` 
GROUP BY City, Gender;

SELECT City, AVG(Rating) as average_rating
FROM walmart.`walmart sales data`  
GROUP BY City;


select Payment,
 count(Payment) as cnt
from walmart.`walmart sales data`
group by Payment
order by  cnt desc;

select month_name as month,
    sum(cogs) as cogs
from walmart.`walmart sales data`
group by month_name
order by cogs desc;

Select 
 Date as Month,
    sum(Total) as Total_Revenue 
from walmart.`walmart sales data`
group by Date
order by Total_Revenue Desc ;

select 
 Product_line,
    sum(Total) as Total_revenue 
from walmart.`walmart sales data`
group by Product_line
order by Total_revenue  desc;

select
 round(avg (Rating) , 2) as avg_rating,
    product_line
from walmart.`walmart sales data`
group by Product_line
order by avg_rating desc;


select
 Customer_type,
    round (sum(Total), 2) as total_revenue
from walmart.`walmart sales data`
group by Customer_type
order by total_revenue;

select
 Customer_type,
avg(Tax) as value_added_tax
from walmart.`walmart sales data`
group by Customer_type
order by value_added_tax desc; 

select
 Customer_type,
    count(*) as total_count
from walmart.`walmart sales data`
group by Customer_type
order by total_count;

select
Payment,
avg(Tax) as value_added_tax
from walmart.`walmart sales data`
group by Payment
order by value_added_tax desc; 

select
 Gender,
    count(*) as gender_count
from walmart.`walmart sales data`
where branch = "C"
group by Gender
order by gender_count desc;

select
 sum(Tax+cogs) as total_gross_sales
from  walmart.`walmart sales data`;
----- gross profit-----------
SELECT (SUM(ROUND(Tax, 2) + COGS) - COGS) 
FROM walmart.`walmart sales data`
GROUP BY COGS
LIMIT 3;

SELECT (SUM(ROUND(Tax, 2) + COGS) - COGS) FROM walmart.`walmart sales data`;