-- models/claims.sql
SELECT
    1 AS claim_id,
    1001 AS customer_id,  -- foreign key referencing a customer in customer_analytics
    'Claim Example' AS claim_description,
    current_date AS claim_date
