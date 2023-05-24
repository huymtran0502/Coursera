USE LittleLemonDB;
prepare GetOrderDetail FROM 'select OrderID, Quantity, TotalCost from Orders where OrderID=?'

SET @id = 1;
EXECUTE GetOrderDetail USING @id;