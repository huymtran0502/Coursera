USE LittleLemonDB;
SELECT Name FROM Menus WHERE MenuID=any (SELECT MenuID FROM Orders WHERE Quantity > 2) 