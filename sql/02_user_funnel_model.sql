-- INPUT:
-- events
--
-- OUTPUT:
-- user_funnel
--
-- Purpose:
-- Transform event-level behavioral data into a user-level funnel model.
-- Each column represents whether a user completed a specific funnel stage.

CREATE OR REPLACE VIEW user_funnel AS
SELECT
    user_id,

    MAX(CASE WHEN event_type = 'app_open' THEN 1 ELSE 0 END) AS app_open,
    MAX(CASE WHEN event_type = 'view_product' THEN 1 ELSE 0 END) AS view_product,
    MAX(CASE WHEN event_type = 'add_to_cart' THEN 1 ELSE 0 END) AS add_to_cart,
    MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchase

FROM events
GROUP BY user_id;
