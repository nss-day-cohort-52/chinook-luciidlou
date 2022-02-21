-- Provide a query only showing the Customers from Brazil.

SELECT customerid, FirstName || " " || LastName as FullName, country FROM Customer
WHERE Country IS "Brazil"