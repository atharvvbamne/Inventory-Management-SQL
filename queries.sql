USE InventoryDB;

-- Retrieve current stock for all products
SELECT 
    p.ProductID, 
    p.Name, 
    p.StockQuantity, 
    p.ReorderLevel,
    CASE 
        WHEN p.StockQuantity <= p.ReorderLevel THEN 'Reorder'
        ELSE 'OK'
    END AS StockStatus
FROM Products p;

-- List products that need reordering
SELECT 
    ProductID, 
    Name, 
    StockQuantity, 
    ReorderLevel
FROM Products
WHERE StockQuantity <= ReorderLevel;

-- Transaction history for a specific product (e.g., ProductID = 1)
SELECT 
    t.TransactionID,
    t.TransactionType,
    t.Quantity,
    t.TransactionDate,
    t.Remarks
FROM Transactions t
WHERE t.ProductID = 1
ORDER BY t.TransactionDate DESC;

-- Update stock quantity after a transaction example:
-- Deduct 5 units from ProductID = 1 after a sale:
UPDATE Products
SET StockQuantity = StockQuantity - 5
WHERE ProductID = 1;
