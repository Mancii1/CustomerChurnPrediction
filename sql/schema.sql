-- DROP existing tables if any
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS services;

-- Clean customers table
CREATE TABLE customers AS
SELECT 
    TRIM(UPPER(customerID)) AS customer_id,  -- trim + uppercase
    gender,
    "Senior Citizen" AS senior_citizen,
    Partner,
    Dependents,
    "Tenure Months" AS tenure
FROM customers_raw;

-- Clean services table
CREATE TABLE services AS
SELECT 
    TRIM(UPPER(customerID)) AS customer_id,  -- trim + uppercase
    "Phone Service" AS phone_service,
    "Internet Service" AS internet_service,
    "Online Security" AS online_security,
    "Tech Support" AS tech_support,
    Contract,
    "Payment Method" AS payment_method,
    CAST("Monthly Charges" AS FLOAT) AS monthly_charges,
    CAST(NULLIF("Total Charges", '') AS FLOAT) AS total_charges,  -- empty strings → NULL
    "Churn Label" AS churn
FROM customers_raw;