CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    status VARCHAR(20)
);

INSERT INTO Orders (order_id, customer_id, product, amount, status) VALUES
(101, 1, 'Laptop',   50000, 'Completed'),
(102, 2, 'Mobile',   20000, 'Completed'),
(103, 1, 'Mouse',     2000, 'Completed'),
(104, 3, 'Keyboard',  3000, 'Cancelled'),
(105, 2, 'Laptop',   45000, 'Completed'),
(106, 1, 'Keyboard',  3000, 'Completed'),
(107, 3, 'Monitor',  15000, 'Completed'),
(108, 2, 'Mouse',     1500, 'Cancelled'),
(109, 4, 'Laptop',   60000, 'Completed'),
(110, 4, 'Mouse',     2500, 'Completed'),
(111, 4, 'Keyboard',  4000, 'Completed'),
(112, 3, 'Laptop',   40000, 'Completed');

SELECT
    customer_id,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_amount
FROM Orders
WHERE status = 'Completed'
GROUP BY customer_id
HAVING COUNT(*) >= 3
   AND SUM(amount) > 50000
ORDER BY customer_id ASC;
