-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.

-- SELECT
-- i.BillingCountry as country,
-- MAX(i.total) as total_sales
-- FROM Invoice as i
-- WHERE i.Total = (
--     SELECT SUM(i.Total) FROM Invoice as i
--     GROUP BY i.InvoiceId
-- )


SELECT
i.BillingCountry,
SUM(i.Total) as total_sales
FROM
Invoice as i
GROUP BY i.BillingCountry
ORDER BY total_sales DESC