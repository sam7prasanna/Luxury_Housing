SELECT COUNT(*) AS total_rows FROM luxury_housing_sales;
#Transaction Type Distribution
SELECT Transaction_Type, COUNT(*) AS total_transactions FROM luxury_housing_sales GROUP BY Transaction_Type;
#Price Sanity Check
SELECT MIN(Ticket_Price_Cr), MAX(Ticket_Price_Cr), MIN(Price_per_Sqft), MAX(Price_per_Sqft) FROM luxury_housing_sales;
#Market Performance by Micro-Market
SELECT Micro_Market, COUNT(*) AS total_transactions FROM luxury_housing_sales GROUP BY Micro_Market ORDER BY total_transactions DESC;
#Builder Revenue Ranking
SELECT Developer_Name, ROUND(SUM(Ticket_Price_Cr), 2) AS total_revenue_cr FROM luxury_housing_sales GROUP BY Developer_Name ORDER BY total_revenue_cr DESC LIMIT 5;
#Average Price per Sqft by Market
SELECT Micro_Market, ROUND(AVG(Price_per_Sqft), 2) AS avg_price_per_sqft FROM luxury_housing_sales GROUP BY Micro_Market ORDER BY avg_price_per_sqft DESC;
#Primary vs Secondary Pricing Comparison
SELECT Transaction_Type, ROUND(AVG(Price_per_Sqft), 2) AS avg_price_per_sqft FROM luxury_housing_sales GROUP BY Transaction_Type;
#Quarterly Transaction Trend
SELECT Purchase_Year, Quarter_Number, COUNT(*) AS total_transactions FROM luxury_housing_sales GROUP BY Purchase_Year, Quarter_Number ORDER BY Purchase_Year, Quarter_Number;
#Buyer Persona Pricing Analysis
SELECT Buyer_Type, ROUND(AVG(Ticket_Price_Cr), 2) AS avg_ticket_price FROM luxury_housing_sales GROUP BY Buyer_Type ORDER BY avg_ticket_price DESC;
#NRI vs Non-NRI Comparison
SELECT NRI_Buyer, ROUND(AVG(Price_per_Sqft), 2) AS avg_price_per_sqft FROM luxury_housing_sales GROUP BY NRI_Buyer;