SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.TotalCost,
    Menu.MenuName,
    MenuItems.StartersName,
    MenuItems.CourseName
FROM 
    Orders 
INNER JOIN 
    Customers 
    ON Orders.Customers_CustomerID = Customers.CustomerID 
INNER JOIN 
    Menu 
    ON Orders.Menu_MenuID = Menu.MenuID 
INNER JOIN 
    MenuItems 
    ON Menu.MenuID = MenuItems.MenuItemsID 
WHERE 
    Orders.TotalCost > 150;
