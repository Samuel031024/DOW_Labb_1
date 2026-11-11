
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





