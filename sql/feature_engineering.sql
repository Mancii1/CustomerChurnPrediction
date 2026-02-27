WITH spend_features AS (
    SELECT
        customer_id,
        total_charges AS total_spend,
        monthly_charges AS monthly_spend
    FROM services
),

contract_features AS (
    SELECT
        customer_id,
        CASE WHEN Contract = 'Month-to-month' THEN 1 ELSE 0 END AS is_monthly_contract
    FROM services
)

SELECT
    c.customer_id,
    c.tenure,
    s.total_spend,
    s.monthly_spend,
    cf.is_monthly_contract,
    CASE WHEN sv.churn = 'Yes' THEN 1 ELSE 0 END AS churn_flag
FROM customers c
LEFT JOIN spend_features s ON c.customer_id = s.customer_id
LEFT JOIN contract_features cf ON c.customer_id = cf.customer_id
LEFT JOIN services sv ON c.customer_id = sv.customer_id;