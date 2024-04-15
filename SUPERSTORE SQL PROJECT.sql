
/*CREATING DATABASE FOR MY SUPERSTORE_SALES DATA-- */
create database superstore_sales;
use  superstore_sales;  

select * from superstore_canada;  

/* TOTAL PROFIT */
SELECT SUM(Profit)
from superstore_canada; 
 
/* TOTAL PROFIT BY PRODUCT CATEGORY */
select `Product Category`,sum(Profit) from superstore_canada group by `Product Category`; 


/* TOTAL PROFIT BY PRODUCT SUB CATEGORY */
select `ProductSubCategory`, sum(Profit)
from superstore_canada
group by `ProductSubCategory`; 


/* Total No of orders returned */
select count(Status) as 'TOTOAL ORDERS RETURNED'
from superstore_canada; 

/* TOP 10 CUSTROMERS BASED ON SALES */
select `Customer Name`,sales from superstore_canada 
order by sales desc
limit 10;   


/* TOTAL ORDER RETURNED BASED ON PRODUCT SUB CATERGORY */
select ProductSubCategory,count(status) as 'Oreder Returned' from superstore_canada
group by ProductSubCategory;


/* RUNNING TOTAL BAESD ON REGION */
SELECT Region,Sales, SUM(Sales)
OVER(partition by Region order by `Order Date`) AS 'RUNNING TOTAL' 
FROM superstore_canada;
  

/* TOTAL CUSTOMER IN EACH CUSTOMER SEGMENT */
select `Customer Segment`,count(`Customer Name`)as 'Total customer' from superstore_canada
group by `Customer Segment`; 

 /* SALES AND PROFIT BY ORDER DATE */
select  `Order Date`,sum(sales)as 'sales',sum(Profit) as 'Profit' from superstore_canada 
group by `Order Date`; 

/* UNIT PRICE AND SALES AND PROFIT BASED ON PRODUCT CATEGORY */
SELECT ProductSubCategory, sum(`Unit Price`) as 'UNIT PRICE',SUM(Sales) AS 'SALES' , SUM(Profit) AS 'PROFIT' 
from superstore_canada
group by ProductSubCategory; 

/* PRODUCT CATEGORISED BASED UPON PROFIT AND LOSS */
SELECT 
    `Product Name`,
    Profit,
    CASE
        WHEN Profit > 0 THEN 'PROFIT'
        WHEN Profit < 0 THEN 'LOSS'
        ELSE 'NOT KNOWN'
    END AS STATUS
FROM superstore_canada;

/* Top 5 customer with maximum profit */
  select `Customer Name`,sum(Profit),
  rank() over(order by sum(Profit) desc) as "profit_rank"
  from superstore_canada
  group by `Customer Name`
  limit 5;  


 /* Top 5 Customer Name  based on Sales*/
 
 show tables;
 select * from superstore_canada; 
 
 select `Customer Name`,sum(sales),
  rank() over(order by sum(sales) desc) as "sales_rank"
  from superstore_canada
  group by `Customer Name`
  limit 5; 
