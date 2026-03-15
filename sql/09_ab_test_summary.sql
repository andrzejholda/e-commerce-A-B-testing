-- INPUT:
-- users
-- purchases
--
-- OUTPUT:
-- ab_test_summary
--
-- Purpose:
-- Aggregate experiment performance metrics
-- for Variant A and Variant B.

CREATE OR REPLACE VIEW ab_test_summary AS
SELECT
    u.ab_variant,

    COUNT(DISTINCT u.user_id) AS users,
    COUNT(p.purchase_id) AS purchases,
    SUM(p.revenue) AS revenue

FROM users u
LEFT JOIN purchases p
    ON u.user_id = p.user_id

GROUP BY
    u.ab_variant;
