CREATE DATABASE luxury_housing_db;
use luxury_housing_db;
CREATE TABLE IF NOT EXISTS luxury_housing_sales (
    Property_ID VARCHAR(50),
    Micro_Market VARCHAR(100),
    Project_Name VARCHAR(150),
    Developer_Name VARCHAR(150),

    Unit_Size_Sqft FLOAT,
    Configuration VARCHAR(50),
    Ticket_Price_Cr FLOAT,

    Transaction_Type VARCHAR(50),
    Booking_Status VARCHAR(20),
    Booking_Flag INT,

    Buyer_Type VARCHAR(50),
    Sales_Channel VARCHAR(50),
    NRI_Buyer VARCHAR(10),

    Purchase_Quarter DATE,
    Quarter_Number INT,
    Purchase_Year INT,

    Connectivity_Score FLOAT,
    Amenity_Score FLOAT,
    Locality_Infra_Score FLOAT,
    Avg_Traffic_Time_Min INT,

    Price_per_Sqft FLOAT,
    Possession_Status VARCHAR(50),

    Buyer_Comments TEXT
);
SHOW TABLES;
DESCRIBE luxury_housing_sales;
ALTER TABLE luxury_housing_sales
ADD COLUMN Purchase_Date DATE;