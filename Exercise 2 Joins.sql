-- joins: select all the computers from the products table:
SELECT * FROM bestbuy.products WHERE CategoryID = 1;
-- using the products table and the categories table, return the product name and the category name
SELECT products.name AS ProductName, categories.name as CategoryName
FROM products
INNER JOIN categories
ON categories.CategoryID = products.CategoryID
WHERE categories.CategoryID = 1;

-- joins: find all product names, product prices, and products ratings that have a rating of 5
SELECT products.Name as ProductName, products.price as Price, reviews.Rating as Rating
FROM reviews
INNER JOIN products
ON products.ProductID = reviews.productID
WHERE reviews.rating = 5;

-- joins: find the employee with the most total quantity sold.  use the sum() function and group by
SELECT employees.LastName, employees.FirstName, SUM(sales.Quantity) AS Units_Sold
FROM sales
INNER JOIN employees
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY Units_Sold DESC;

-- joins: find the name of the department, and the name of the category for Appliances and Games
SELECT departments.Name AS DEPARTMENT, categories.name AS CATEGORY
FROM categories
INNER JOIN departments
ON categories.DepartmentID = departments.DepartmentID
WHERE categories.NAME = "Appliances" OR categories.NAME = "Games";

-- joins: find the product name, total # sold, and total price sold
 SELECT products.name as PRODUCT_NAME, SUM(sales.Quantity) AS Units_Sold, SUM(sales.PricePerUnit) as PRICE
 FROM products
 INNER JOIN sales
 ON products.ProductID = sales.ProductID
 GROUP BY PRODUCT_NAME
 ORDER BY Units_Sold DESC;

-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
SELECT products.name as PRODUCT_NAME, reviews.reviewer as REVIEWER_NAME, reviews.rating as RATING, reviews.comment as USER_COMMENT
from products
inner join reviews
on products.ProductID = reviews.ProductID
where products.ProductID = 857
ORDER BY RATING ASC
LIMIT 1;

-- Your goal is to write a query that serves as an employee sales report. This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold

SELECT sales.EmployeeID, employees.LastName, employees.FirstName, products.Name as PRODUCT, SUM(sales.Quantity) as TOTAL_SOLD, SUM(sales.Quantity * sales.PricePerUnit) as GROSS
from sales
inner join employees
ON sales.EmployeeID = employees.EmployeeID
INNER JOIN products
ON sales.productID = products.ProductID
GROUP BY sales.EmployeeID, sales.ProductID
ORDER BY employees.LastName ASC;

