SELECT * FROM products;


-- Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_number
FROM products;

SELECT product_name, category, price,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS ranking
FROM products;

SELECT product_name, category, price,
		RANK() OVER(PARTITION BY category ORDER BY price DESC) AS ranking
FROM products;


SELECT product_name, category, price, 
		sum(price) OVER(PARTITION BY category ORDER BY price ASC) AS Running_Total
FROM products;

SELECT product_name, category, price, 
		sum(price) OVER(ORDER BY price ASC) AS Running_Total
FROM products;

SELECT product_name, category, price, 
		AVG(price) OVER(ORDER BY price ASC) AS Running_Total
FROM products;

