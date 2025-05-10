--QUESTION 1--
SELECT 
    OrderID,
    CustomerName,
    LTRIM(RTRIM(value)) AS Product
FROM 
    ProductDetail
CROSS APPLY 
    STRING_SPLIT(Products, ',');
--QUESTION 2--
--SPLIT STEP 1: CREATE ORDERS TABLE
SELECT DISTINCT
    OrderID,
    CustomerName
FROM 
    OrderDetails;
--SPLIT STEP2: CREATE ORDERITEMS TABLE
SELECT 
    OrderID,
    Product,
    Quantity
FROM 
    OrderDetails;
