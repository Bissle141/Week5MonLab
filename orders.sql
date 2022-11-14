-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(40),
product_price FLOAT, 
quantity INTEGER
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES 
(121, 'lotion', 6.47, 1),
(121, 'grapes', 4.50, 1),
(344, 'lotion', 6.47, 1),
(344, 'hairspray', 7.11, 1),
(344, 'glitter', 3.00, 1);


-- Select all the records from the orders table.
SELECT * FROM orders

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price)
FROM orders
WHERE person_id = 121;

OR

SELECT SUM(product_price)
FROM orders
WHERE person_id = 344;