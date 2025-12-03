-- Create Books table with Primary Key
CREATE DATABASE City_Hospital;
USE City_Hospital;
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);

-- Create Orders table with Foreign Key referencing Books(BookID)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    BookID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
ALTER TABLE Books
ADD ISBN VARCHAR(20) UNIQUE;
SHOW INDEX FROM Books;
DELETE FROM Orders
WHERE OrderID IN (999, 1000);  -- Replace with actual test OrderIDs