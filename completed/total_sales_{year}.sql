-- What are the total sales for 2009, 2010, 2011?

SELECT 
substr(i.InvoiceDate, 0, 5) as invoice_date, 
SUM(i.Total) as total_sales 
FROM Invoice as i
WHERE invoice_date > "2008"
AND invoice_date < "2012"
GROUP BY invoice_date