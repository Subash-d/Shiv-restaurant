USE restaurant_db;

SELECT * FROM order_details;
SELECT MIN(order_date), MAX(order_date) FROM order_details;
SELECT COUNT(DISTINCT order_id) Total_orders FROM order_details;
SELECT count(item_id) Total_items_ordered FROM order_details;
SELECT order_id, count(item_id) num_items FROM order_details GROUP BY order_id ORDER BY num_items DESC;


SELECT COUNT(*) 
FROM(SELECT order_id, count(item_id) num_items FROM order_details GROUP BY order_id HAVING num_items > 12)  AS num_orders;
