-- models/unified_customers.sql
-- This model pulls in customer details from the customer_analytics project.
SELECT *
FROM {{ ref('customer_details') }}
