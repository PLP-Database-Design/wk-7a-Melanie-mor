-- QUESTION1
-- 1NF
CREATE TABLE PRODUCTDETAILEDNORMALISED (OrderID, CustomerName, Products)
(101, Joe Doe, Laptop),
(101, Joe Doe, Mouse),
(102, Jane Smith, Tablet),
(102, Jane Smith, Keyboard),
(102, Jane Smith, Mouse),
(103, Emily Clark, Phone);

-- Normalized to 2NF
 -- QUESTION2
 CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
