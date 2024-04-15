# SUPERSTORE CANADA ANALYSIS(SQL)
# About 
The Superstore dataset contains essential information about orders, including order details, customer information, and product specifics. It offers valuable insights for analyzing sales, profit, and customer behavior. This dataset is beneficial for retail analysts and professionals looking to optimize business operations and improve customer satisfaction.
 # Features:
• Customer Segment: Segment of customers to which the product is targeted, helping in understanding customer preferences and behavior.

• Product Category: Broad category of the product, providing a high-level classification of the items.

• Product Sub-Category: Specific sub-category of the product, offering more detailed information about the item.

• Product Name: Name or title of the product, identifying the specific product within its category and sub-category.

• Product Container: Type of container or packaging used for the product, influencing shipping and storage requirements.

• Product Base Margin: Base profit margin for the product, indicating its profitability compared to its cost.

• Ship Date: Date when the product was shipped, tracking the timeline of product delivery.








# Purpose:
The dataset from Superstore provides comprehensive insights for business analysts, researchers, and professionals. It enables users to analyze the performance of the Superstore across various dimensions. The data can be used to determine the total profit of the Superstore, analyze profit by product category and sub-category, track the number of orders returned, and identify top customers based on sales. Additionally, users can understand sales and profit trends over time by analyzing data by order date. The dataset also allows for region-wise analysis and provides insights into customer segments. Furthermore, users can categorize products based on profit and loss, aiding in strategic decision-making.


| Column Name            | Description                                        | Data Type  |
|------------------------|----------------------------------------------------|------------|
| Movies Names           | The names of the top-rated movies.                 | VARCHAR(100) |
| Rating out of 10       | The IMDb rating out of 10 for each movie.          | FLOAT(2,1)  |
| Count of Ratings       | The total number of ratings submitted by users for each movie. | VARCHAR(10) |
| Release Date           | The date when each movie was officially released.  | DATE       |
| Month                  | The month in which the movie was released.         | VARCHAR(10) |
| Year                   | The year in which the movie was released.          | INT        |
| Country                | The country of origin for each movie.              | VARCHAR(30) |
| Budget                 | The estimated budget for producing each movie.     | VARCHAR(20) |
| Domestic Weekend       | The earnings generated by each movie during its opening weekend within its country of origin. | VARCHAR(20) |
| Domestic Weekend Gross Date | The date of the opening weekend for each movie.   | DATE       |
| Worldwide Gross        | The total earnings generated by each movie globally, including earnings from all countries where it was released. | VARCHAR(20) | 



# Approach Used:

1. Auto Increment Movie ID: Ek auto_increment column banaya gaya hai movie ID ke liye, jo primary key ke roop mein kaam karega.

2. Not Null Constraint on Sales Column: Sales column par not null constraint lagaya gaya hai, jisse har ek entry mein sales ki value compulsory hai.

3. Transformed Release Date: Release date column ke data ko alag-alag columns mein divide kiya gaya hai:

       Month Column: Movie release month ke liye. 

       Year Column: Movie release year ke liye. 

       Country Column: Movie release country ke liye.

4. Excel Text to Columns Transformation: Is transformation ke liye Excel ke Text to Columns feature ka istemal kiya gaya hai, jisse data ko alag-alag columns mein split kiya ja sakta hai.


# Question to Answer 
1.	Total Profit of superstore?
  
2.	Total Profit by Product Category?
	
3.	Total Profit by Product Sub-Category?
	
4.	Total No of orders returned?

5.	Top 10 Customers Based on Sales?

6.	Total order returned based on product sub category?
    
7.	Running total based on region wise?
	
8.	Total customer in each customer segment?
	
9.	Sales and profit by order date?

10.	Unit price and sales and profit based on product category?
	
11.	Product categorized based upon profit and loss?
	
12.	Top 5 Customer Name  based on Sales?
	
13.	Top 5 customer with maximum profit?
   

# code 
