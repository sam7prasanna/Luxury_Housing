SELECT COUNT(*) AS total_rows FROM luxury_housing_sales;
SELECT Booking_Status, COUNT(*) AS booking_count FROM luxury_housing_sales GROUP BY Booking_Status;
SELECT ROUND(SUM(Booking_Flag) / COUNT(*) * 100, 2) AS booking_conversion_percent FROM luxury_housing_sales;
SELECT ROUND(SUM(Ticket_Price_Cr), 2) AS total_revenue_cr, ROUND(AVG(Ticket_Price_Cr), 2) AS avg_ticket_price_cr
FROM luxury_housing_sales;
SELECT Developer_Name, ROUND(SUM(Ticket_Price_Cr), 2) AS total_revenue_cr
FROM luxury_housing_sales GROUP BY Developer_Name ORDER BY total_revenue_cr DESC LIMIT 5;
SELECT Purchase_Year, Quarter_Number, COUNT(*) AS total_transactions
FROM luxury_housing_sales GROUP BY Purchase_Year, Quarter_Number ORDER BY Purchase_Year, Quarter_Number;