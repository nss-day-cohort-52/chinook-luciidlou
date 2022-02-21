-- Provide a query that shows the total sales per country.

SELECT
i.BillingCountry,
SUM(i.Total) as total_sales
FROM Invoice as i
GROUP BY i.BillingCountry