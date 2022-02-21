-- How many Invoices were there in 2009 and 2011?
-- HINT: COUNT

SELECT COUNT(i.InvoiceId) as total_invoices_2009_to_2011 FROM Invoice as i
WHERE i.InvoiceDate LIKE "2009%" 
OR i.InvoiceDate LIKE "2010%"
OR i.InvoiceDate LIKE "2011%"
