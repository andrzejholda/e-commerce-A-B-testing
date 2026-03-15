-- INPUT:
-- purchases
--
-- OUTPUT:
-- revenue_user
--
-- Purpose:
-- Aggregate purchase transactions to the user level
-- in order to calculate monetization metrics.

CREATE OR REPLACE VIEW revenue_user AS
SELECT
    user_id,
    SUM(revenue) AS total_revenue,
    COUNT(purchase_id) AS purchases
FROM purchases
GROUP BY user_id;
