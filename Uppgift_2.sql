
SELECT first_name, last_name, home_phone
FROM employees
WHERE title = 'Vice President, Sales';

SELECT company_name, contact_name, contact_title
FROM suppliers
WHERE company_name = 'Svensk Sjöföda AB';

SELECT first_name, last_name, birth_date
FROM employees
ORDER BY birth_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%an%';


SELECT *
FROM employees
WHERE title LIKE '%Vice%' OR title LIKE '%President%' OR title LIKE '%Manager%';

SELECT 
product_name, 
unit_price, 
unit_price * 1.07 AS new_price
FROM products;

SELECT product_name, unit_price * units_in_stock AS stock_val
FROM products;


SELECT product_name, units_in_stock, reorder_level
FROM products
WHERE units_in_stock < reorder_level;

SELECT product_name, units_in_stock, reorder_level,units_on_order
FROM products
WHERE units_in_stock + units_on_order < reorder_level;

SELECT categories.category_name, products.product_name
FROM categories
JOIN products ON (products.category_id = categories.category_id)
WHERE product_name = 'Lakkalikööri';




