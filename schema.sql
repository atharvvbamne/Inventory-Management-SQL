
---

## 2. schema.sql

Create a file named **schema.sql** with the following content:

```sql
-- Create the InventoryDB database and use it
CREATE DATABASE IF NOT EXISTS InventoryDB;
USE InventoryDB;

-- Create the Categories table
CREATE TABLE IF NOT EXISTS Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT
);

-- Create the Suppliers table
CREATE TABLE IF NOT EXISTS Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactInfo VARCHAR(255)
);

-- Create the Products table
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CategoryID INT,
    SupplierID INT,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT DEFAULT 0,
    ReorderLevel INT DEFAULT 10,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create the Transactions table
CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    TransactionType ENUM('IN', 'OUT') NOT NULL,
    Quantity INT NOT NULL,
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Remarks VARCHAR(255),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
