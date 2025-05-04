-- QUESTION1
-- 1NF
CREATE TABLE ProductDetails(
 OrderID INT PRIMARY KEY,
 CustomerName Varchar(100),
 Products Varchar(100)
 );

INSERT INTO ProductDetails (OrderID, CustomerName, Products)
 VALUES
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
INSERT INTO Orders (OrderID, CustomerName)
 VALUES
(101, Joe Doe),
(101, Joe Doe),
(102, Jane Smith),
(102, Jane Smith),
(102, Jane Smith),
(103, Emily Clark);

CREATE TABLE Products (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Products (OrderID, Products, Quantity)
 VALUES
(101, Laptop, 2),
(101, Mouse, 1),
(102, Tablet, 3),
(102, Keyboard, 1),
(102, Mouse, 2),
(103, Phone, 1);
