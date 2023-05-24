USE LittleLemonDB;
DROP PROCEDURE IF EXISTS CancelOrder;
DELIMITER \\
CREATE PROCEDURE CancelOrder(Orderid INT) 
BEGIN
DELETE FROM Orders WHERE OrderID=Orderid;
SELECT concat("Order ", OrderID, " is cancelled") AS Confirmation;
END\\
delimiter ;

CALL CancelOrder(5)