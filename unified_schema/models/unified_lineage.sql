-- models/unified_lineage.sql
SELECT
    c.claim_id,
    c.claim_date,
    cust.customer_id,
    cust.customer_name,
    rm.risk_score,
    rm.underwriting_decision
FROM {{ ref('claims') }} AS c
JOIN {{ ref('customer_details') }} AS cust
  ON c.customer_id = cust.customer_id
LEFT JOIN (
    -- Example: Join risk management data.
    SELECT *
    FROM {{ ref('risk_management_model') }}
) AS rm
  ON c.claim_id = rm.policy_id  -- Adjust join logic as appropriate
