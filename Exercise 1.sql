-- find all products
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM bestbuy.products
WHERE products.Price = 1400.00;

-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products as p
WHERE p.Price = 11.99 OR p.Price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products as a
WHERE a.Price != 11.99 OR a.Price != 13.99;

-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.products as b
ORDER BY b.Price DESC;

-- find all employees who don't have a middle initial
SELECT * FROM bestbuy.employees as c
WHERE c.MiddleInitial is NULL;

-- find distinct product prices
SELECT distinct price
FROM bestbuy.products; 

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM bestbuy.employees as d
WHERE d.FirstName LIKE 'j%';

-- find all Macbooks
SELECT * FROM bestbuy.products as f
WHERE f.Name = 'macbook';

-- find all products that are on sale
SELECT * from bestbuy.products as e
WHERE e.onSale != NULL;

-- find the average price of all products
SELECT AVG(price)
FROM bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
SELECT bestbuy.employees as g
WHERE g.title = "Geek Squad"
AND g.MiddleInitial is NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.
SELECT * FROM bestbuy.products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price;

