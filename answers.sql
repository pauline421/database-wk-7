-- Achieving INF
CREATE TABLE ProductDetail (OrderID INT,CustomerName VARCHAR(100),Product VARCHAR(100));
INSERT INTO ProductDetail (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Laptop'), (101, 'John Doe', 'Mouse'), (102, 'Jane Smith', 'Tablet'), (102, 'Jane Smith', 'Keyboard'), (102, 'Jane Smith', 'Mouse'), (103, 'Emily Clark', 'Phone');

-- Breaking the table into 2NF
CREATE TABLE OrdersTable ( OrderID INT PRIMARY KEY, CustomerName VARCHAR(100));
-- Creating the second table
CREATE TABLE OrdersDetails ( OrderID INT, Product VARCHAR(100), Quantity INT, PRIMARY KEY(OrderID, Product), FOREIGN KEY (OrderID) REFERENCES OrdersTable(OrderID));
-- Inserting the values
INSERT INTO OrdersTable (OrderID, CustomerName) VALUES (101, 'John Doe'), (102, 'Jane Smith'), (103, 'Emily Clark');
-- Achieving 2NF
INSERT INTO OrdersDetails (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2), (101, 'Mouse', 1), (102, 'Tablet', 3), (102, 'Keyboard', 1),(102, 'Mouse', 2),(103, 'Phone', 1);