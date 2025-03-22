-- models/claims_summary.sql
SELECT
    claim_id,
    claim_date,
    customer_id,
    claim_description,
    COUNT(*) OVER() AS total_claims
FROM {{ ref('claims') }}
