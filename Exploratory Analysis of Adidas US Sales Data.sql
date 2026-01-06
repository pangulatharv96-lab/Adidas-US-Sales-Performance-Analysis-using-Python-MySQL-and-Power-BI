Create database Adidas_sales;
use Adidas_sales;
select * from customer;

#Total count of rows 
select count(*) from customer;

#Calculation min,max,avg,sum of Total Sales
select sum(Total_Sales) from customer;
select min(Total_Sales) from customer;
select max(Total_Sales) from customer;
select avg(Total_Sales) from customer;

#Calculation min,max,avg,sum of price per unit
select sum(Price_per_Unit) from customer;
select min(Price_per_Unit) from customer;
select max(Price_per_Unit) from customer;
select avg(Price_per_Unit) from customer;

#Calculation min,max,avg,sum of unit sold
select sum(Units_Sold) from customer;
select min(Units_Sold) from customer;
select max(Units_Sold) from customer;
select avg(Units_Sold) from customer;

#Calculation min,max,avg,sum of Operating_Profit
select sum(Operating_Profit) from customer;
select min(Operating_Profit) from customer;
select max(Operating_Profit) from customer;
select avg(Operating_Profit) from customer;

#Total sales Where = 100000
select * from customer 
where Total_Sales='100000';

#Top 10 Total Sales Amount
select Total_Sales
from customer 
order by Total_Sales desc
limit 10;

select * from customer
order by Region asc;

select Total_Sales,
case 
when Total_Sales < 50000 then 'Low_sales'
when Total_Sales < 100000 then 'Mid_sales'
when Total_Sales < 500000 then 'High_sales'
else 'Very_High_sales'
end 'Sales_Distribution'
from customer;

SELECT Region, SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY Region
ORDER BY total_sales DESC;

SELECT State, SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY State
ORDER BY total_sales DESC
LIMIT 5;

SELECT Product, SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY Product
ORDER BY total_sales DESC;

SELECT Sales_Method, SUM(Units_Sold) AS total_units_sold
FROM customer
GROUP BY Sales_Method;

SELECT Product, AVG(Price_per_Unit) AS avg_price
FROM customer
GROUP BY Product;

SELECT Product, min(Price_per_Unit) AS avg_price
FROM customer
GROUP BY Product;

SELECT Product,
       SUM(Operating_Profit) / SUM(Total_Sales) AS profit_margin
FROM customer
GROUP BY Product;


SELECT 
  DATE_FORMAT(Invoice_Date, '%Y-%m') AS month,
  SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY month
ORDER BY month;

SELECT Retailer, SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY Retailer
ORDER BY total_sales DESC
LIMIT 5;

select 
   date_format(Invoice_Date, '%Y-%m') as year,
   sum(Total_Sales) as total_sales 
from customer
group by year
order by year;

SELECT Sales_Method,
       SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY Sales_Method;

SELECT Region, Product, SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY Region, Product
ORDER BY Region, total_sales DESC;

SELECT Product, SUM(Total_Sales) AS total_sales
FROM customer
GROUP BY Product
HAVING total_sales >
       (SELECT AVG(Total_Sales) FROM customer);

