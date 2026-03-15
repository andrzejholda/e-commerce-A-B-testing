-- INPUT:
-- users
-- events
--
-- OUTPUT:
-- ab_conversion
--
-- Purpose:
-- Calculate number of users who viewed a product
-- and completed a purchase for each experiment variant.

CREATE OR REPLACE VIEW ab_conversion AS
SELECT
    u.ab_variant,

    COUNT(DISTINCT CASE
        WHEN e.event_type = 'view_product'
        THEN u.user_id
    END) AS viewers,

    COUNT(DISTINCT CASE
        WHEN e.event_type = 'purchase'
        THEN u.user_id
    END) AS buyers

FROM users u
LEFT JOIN events e
    ON u.user_id = e.user_id

GROUP BY
    u.ab_variant;
