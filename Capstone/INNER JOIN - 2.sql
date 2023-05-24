USE LittleLemonDB;
SELECT c.CustomerID, c.Name, o.OrderID, o.TotalCost, m.Name, mi.Course, mi.Starter 
FROM Customers AS c INNER JOIN Orders AS o ON c.CustomerID=o.CustomerID 
INNER JOIN Menus AS m ON o.MenuID=m.MenuID 
INNER JOIN MenuContent AS mc ON m.MenuID=mc.MenuID 
INNER JOIN MenuItems AS mi ON mc.MenuItemID=mi.MenuItemID 
WHERE o.TotalCost > 500;