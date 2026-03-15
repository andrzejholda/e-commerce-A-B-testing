-- INPUT:
-- users
-- revenue_user
--
-- OUTPUT:
-- user_metrics
--
-- Purpose:
-- Enrich user profile data with monetization metrics
-- to enable segmentation and experiment analysis.

CREATE OR REPLACE VIEW user_metrics AS
SELECT
    u.user_id,
    u.country,
    u.device,
    u.ab_variant,

    COALESCE(r.total_revenue,0) AS total_revenue,
    COALESCE(r.purchases,0) AS purchases

FROM users u
LEFT JOIN revenue_user r
    ON u.user_id = r.user_id;
