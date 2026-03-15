-- INPUT:
-- events
--
-- OUTPUT:
-- funnel_events
--
-- Purpose:
-- Aggregate product interaction events to measure how many users
-- reach each stage of the product funnel.

CREATE OR REPLACE VIEW funnel_events AS
SELECT
    event_type,
    event_date,
    COUNT(DISTINCT user_id) AS users
FROM events
GROUP BY
    event_type,
    event_date;
