USE InventoryDB;

-- Insert sample categories
INSERT INTO Categories (Name, Description) VALUES
('Electronics', 'Electronic gadgets and devices'),
('Apparel', 'Clothing and accessories'),
('Groceries', 'Food items and beverages');

-- Insert sample suppliers
INSERT INTO Suppliers (Name, ContactInfo) VALUES
('Supplier A', 'contactA@example.com'),
('Supplier B', 'contactB@example.com');

-- Insert sample products
INSERT INTO Products (Name, CategoryID, SupplierID, Price, StockQuantity, ReorderLevel) VALUES
('Smartphone', 1, 1, 299.99, 50, 10),
('Laptop', 1, 2, 799.99, 30, 5),
('Jeans', 2, 2, 49.99, 100, 20),
('Bread', 3, 1, 2.99, 200, 50);

-- Insert sample transactions
INSERT INTO Transactions (ProductID, TransactionType, Quantity, Remarks) VALUES
(1, 'IN', 50, 'Initial stock'),
(2, 'IN', 30, 'Initial stock'),
(3, 'IN', 100, 'Initial stock'),
(4, 'IN', 200, 'Initial stock'),
(1, 'OUT', 5, 'Sold 5 units'),
(4, 'OUT', 20, 'Sold 20 units');
