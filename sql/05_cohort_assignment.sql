-- INPUT:
-- users
--
-- OUTPUT:
-- user_cohort
--
-- Purpose:
-- Assign each user to an acquisition cohort
-- based on their registration month.

CREATE OR REPLACE VIEW user_cohort AS
SELECT
    user_id,
    DATE_TRUNC('month', registration_date) AS cohort_month
FROM users;
