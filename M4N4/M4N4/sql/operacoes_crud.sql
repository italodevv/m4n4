UPDATE Orders SET Status='Concluído' WHERE OrderID=1;
GO

SELECT * FROM Orders WHERE OrderID=1;
GO

DELETE FROM Orders WHERE OrderID=1;
GO

SELECT COUNT(*) FROM Orders;
GO