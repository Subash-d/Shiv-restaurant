SHOW databases;
USE restaurant_db;
SHOW TABLES;

SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT * FROM menu_items;                                                                 
SELECT COUNT(item_name) AS Total_dishes FROM menu_items;                                  

SELECT * FROM menu_items ORDER BY price;                                                  
SELECT * FROM menu_items ORDER BY price DESC;                                             
/*SELECT * FROM menu_items WHERE category LIKE '%italian%';*/

SELECT category, min(price) AS Least_price FROM menu_items WHERE category = 'italian';    
SELECT category, max(price) AS Max_price FROM menu_items WHERE category = 'italian';         

SELECT COUNT(*) AS Italian_dishes FROM menu_items WHERE category LIKE '%italian%';      
/*SELECT category, item_name, 
count(item_name) OVER(PARTITION BY category) AS cnt_dish_CategoryWise FROM menu_items;*/
SELECT category, COUNT(item_name) Num_of_dishes FROM menu_items GROUP BY category;        
SELECT category, ROUND(AVG(price), 2) AS Average_price FROM menu_items GROUP BY category; 

