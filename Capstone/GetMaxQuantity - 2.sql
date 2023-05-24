CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(orders.Quantity) AS "Max Quantity in Order"
FROM orders;

