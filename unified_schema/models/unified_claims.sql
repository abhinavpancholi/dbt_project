-- models/unified_claims.sql
-- This model simply pulls in the claims data from the claims_analytics project.
SELECT *
FROM {{ ref('claims') }}
