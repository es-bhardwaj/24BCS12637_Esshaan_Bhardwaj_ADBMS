-- 1.All orders with Customers Details: Get all of the orders table and also the details of respective customers if they exist. Use the customer and orders table.
SELECT customers.customer_name, orders.* FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;


-- 2.Products and Categories: Create a combined list of all products and all categories. Include all product names and all category names. Where there's a match, show both; otherwise, use NULLs.
SELECT products.product_name, categories.category_name FROM products
FULL OUTER JOIN categories
ON products.category_id = categories.category_id;


-- 3.All category names with product details: display category_name, along with all product names and price from all the categories present in categories table.
SELECT categories.category_name, products.product_name, products.price
FROM products
RIGHT JOIN categories
ON products.category_id = categories.category_id;