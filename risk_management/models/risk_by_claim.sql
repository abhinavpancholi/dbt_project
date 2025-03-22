-- models/risk_by_claim.sql
SELECT
    c.claim_id,
    c.claim_date,
    rm.risk_score,
    rm.underwriting_decision
FROM {{ ref('claims') }} AS c
JOIN {{ ref('risk_management_model') }} AS rm
  ON c.claim_id = rm.policy_id
