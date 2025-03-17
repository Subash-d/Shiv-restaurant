USE restaurant_db;
SHOW tables;
DROP VIEW IF EXISTS full_table;

CREATE VIEW full_table AS SELECT * FROM menu_items mi RIGHT JOIN 
order_details od ON mi.menu_item_id = od.item_id;

SELECT * FROM full_table;

SELECT item_name, category, count(order_details_id) num_purchases
FROM full_table 
GROUP BY item_name, category 
ORDER BY num_purchases DESC;

SELECT category, item_name, sum(price)  FROM full_table GROUP BY category, item_name ORDER BY sum(price) DESC;

SELECT order_id, sum(price) spendz FROM full_table GROUP BY order_id ORDER BY spendz desc limit 5;

SELECT category, count(item_id) as total_spend FROM full_table WHERE order_id = 440 GROUP BY category;
