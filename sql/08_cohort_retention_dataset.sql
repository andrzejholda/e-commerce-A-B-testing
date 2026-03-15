-- INPUT:
-- cohort_activity
--
-- OUTPUT:
-- cohort_retention
--
-- Purpose:
-- Aggregate active users per cohort lifecycle month
-- to enable retention analysis.

CREATE OR REPLACE VIEW cohort_retention AS
SELECT
    cohort_month,
    cohort_age,
    COUNT(DISTINCT user_id) AS active_users
FROM cohort_activity
GROUP BY
    cohort_month,
    cohort_age;
