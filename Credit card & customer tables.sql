
-- Creating Credit card details table by another way.

CREATE TABLE credit_card_raw (
    client_num            TEXT,
    card_category          TEXT,
    annual_fees            TEXT,
    activation_30_days     TEXT,
    customer_acq_cost      TEXT,
    week_start_date        TEXT,
    week_num               TEXT,
    qtr                    TEXT,
    current_year           TEXT,
    credit_limit           TEXT,
    total_revolving_bal    TEXT,
    total_trans_amt        TEXT,
    total_trans_vol        TEXT,
    avg_utilization_ratio  TEXT,
    use_chip               TEXT,
    exp_type               TEXT,
    interest_earned        TEXT,
    delinquent_acc         TEXT
);


-- select count(*) from credit_card_raw;
-- select * from credit_card_raw limit 5;


CREATE TABLE credit_card_details AS
SELECT
    client_num::BIGINT,
    card_category,
    annual_fees::INT,
    activation_30_days::INT,
    customer_acq_cost::INT,
    to_date(week_start_date, 'DD-MM-YYYY') AS week_start_date,
    week_num,
    qtr,
    current_year::INT,
    credit_limit::NUMERIC,
    total_revolving_bal::INT,
    total_trans_amt::INT,
    total_trans_vol::INT,
    avg_utilization_ratio::NUMERIC,
    use_chip,
    exp_type,
    interest_earned::NUMERIC,
    delinquent_acc::INT
FROM credit_card_raw;



--                             RAW STAGING TABLE
-- Purpose:
-- This table stores the raw credit card data exactly as received from the CSV file.
-- No data type conversions or transformations are applied here.
-- It helps avoid import failures due to date formats, missing values, or inconsistent data.
-- This table acts as a backup and staging layer before transforming data
-- into analytics-ready tables used for reporting and dashboards.





-- 2.  Create customer details table :

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


-- checking the data 

select * from credit_card_details
select * from cust_detail























