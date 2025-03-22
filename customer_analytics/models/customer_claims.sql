-- models/customer_claims.sql
SELECT
    cust.customer_id,
    cust.customer_name,
    cl.claim_id,
    cl.claim_date,
    cl.claim_description
FROM {{ ref('customer_details') }} AS cust
JOIN {{ ref('claims') }} AS cl
  ON cust.customer_id = cl.customer_id
