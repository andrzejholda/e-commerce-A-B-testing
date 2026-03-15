-- INPUT:
-- events
--
-- OUTPUT:
-- user_activity
--
-- Purpose:
-- Track monthly user activity by identifying
-- in which months users generated events.

CREATE OR REPLACE VIEW user_activity AS
SELECT
    user_id,
    DATE_TRUNC('month', event_date) AS activity_month
FROM events
GROUP BY
    user_id,
    DATE_TRUNC('month', event_date);
